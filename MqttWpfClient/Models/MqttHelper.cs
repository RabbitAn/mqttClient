using MQTTnet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MQTTnet.Client;
using MQTTnet.Protocol;

namespace MqttWpfClient.Models
{
    static class MqttHelper
    {
        // 创建MQTT客户端对象
        static IMqttClient mqttClient = new MqttFactory().CreateMqttClient();
    
        // 定义一个事件来传递消息
        public static event Action<string, string> MessageReceived;

        // 连接MQTT服务器
        public static async Task<bool> ConnectAsync(MqttClientOptions mqttClientOptions)
        {
            try
            {
                var result = await mqttClient.ConnectAsync(mqttClientOptions);
                if (result.ResultCode==MqttClientConnectResultCode.Success)
                {
                    mqttClient.ApplicationMessageReceivedAsync += ReceiveMessage;
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        private static Task ReceiveMessage(MqttApplicationMessageReceivedEventArgs e)
        {
            var payload = Encoding.UTF8.GetString(e.ApplicationMessage.PayloadSegment);
            Console.WriteLine($"收到消息 - 主题: {e.ApplicationMessage.Topic}, 内容: {payload}");
            MessageReceived?.Invoke(e.ApplicationMessage.Topic, payload);
            return Task.CompletedTask;
        }


        // 发布消息
        public static async Task PublishAsync(string topic, string message)
        {
            var applicationMessage = new MqttApplicationMessageBuilder()
                .WithTopic(topic)
                .WithPayload(message)
                .WithQualityOfServiceLevel(MqttQualityOfServiceLevel.AtMostOnce)
                .Build();
            await mqttClient.PublishAsync(applicationMessage);
        }

        // 断开MQTT连接
        public static async Task DisconnectAsync()
        {
            await mqttClient.DisconnectAsync();
        }

        // 订阅主题
        public static async Task SubscribeAsync(string topic)
        {

            var topicFilter = new MqttTopicFilterBuilder()
                .WithTopic(topic)
                .WithQualityOfServiceLevel(MqttQualityOfServiceLevel.AtMostOnce)
                .Build();
            await mqttClient.SubscribeAsync(topicFilter);
        }

        // 取消订阅主题
        public static async Task UnsubscribeAsync(string topic)
        {
            await mqttClient.UnsubscribeAsync(topic);
        }

        //// 取消所有订阅主题
        //public static async Task UnsubscribeAllAsync()
        //{
        //    var topics = mqttClient.Options.;
        //    foreach (var topic in topics)
        //    {
        //        await UnsubscribeAsync(topic);
        //    }
        //}
    }
}
