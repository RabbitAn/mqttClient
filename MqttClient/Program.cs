
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MQTTnet;
using MQTTnet.Client;


class Program
{
    static async Task Main(string[] args)
    {
        // 创建MQTT客户端对象
        var mqttClient = new MqttFactory().CreateMqttClient();

        // 配置MQTT客户端选项
        var mqttClientOptions = new MqttClientOptionsBuilder()
            .WithClientId("Client1")
            .WithTcpServer("127.0.0.1", 1883) // 替换为远程MQTT服务器的IP地址或主机名
            .Build();

        // 绑定消息接收事件
        mqttClient.ApplicationMessageReceivedAsync += e =>
        {
            var payload = Encoding.UTF8.GetString(e.ApplicationMessage.Payload);
            Console.WriteLine($"收到消息 - 主题: {e.ApplicationMessage.Topic}, 内容: {payload}");
            return Task.CompletedTask;
        };

        // 连接到MQTT服务器
        await mqttClient.ConnectAsync(mqttClientOptions);

        Console.WriteLine("MQTT客户端已连接到服务器");

        // 订阅主题
        string topic = "qq";
        await mqttClient.SubscribeAsync(topic);

        Console.WriteLine($"已订阅主题: {topic}");

        // 发送消息到主题
        string message = "Hello MQTT";
        var messagePayload = new MqttApplicationMessageBuilder()
            .WithTopic(topic)
            .WithPayload(message)
            .WithQualityOfServiceLevel(MQTTnet.Protocol.MqttQualityOfServiceLevel.AtLeastOnce)
            .Build();

        await mqttClient.PublishAsync(messagePayload);

        Console.WriteLine($"已发送消息: {message}");

        // 持续运行客户端
        Console.WriteLine("按下任意键退出...");
        Console.ReadKey();

        // 断开连接
        await mqttClient.DisconnectAsync();
    

        Console.WriteLine("MQTT客户端已断开连接");
    }
}
