using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using MauiApp1.Models;
using MQTTnet.Client;
using Plugin.LocalNotification;

namespace MauiApp1.ViewModels
{
    public partial class HomeVM : ObservableObject
    {
        public static string _topic = "";
        public static string _userName = "";
        public static string _password = "";
        private int count=0;
        public HomeVM()
        {
            InitializeMqtt();
            ReceiveMessage.CollectionChanged += ReceiveMessage_CollectionChanged; ;
        }

        private void ReceiveMessage_CollectionChanged(object? sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            WeakReferenceMessenger.Default.Send(ReceiveMessage);
        }

        private async void InitializeMqtt()
        {
            string? msg;
            MqttClientOptions options = new MqttClientOptionsBuilder()
                .WithClientId("Phone" + Guid.NewGuid().ToString())
                .WithTcpServer("124.222.16.134", 1883)
                .WithCredentials(_userName, _password)
                .Build();
            var result = await MqttHelper.ConnectAsync(options);
            if (result)
            {
                await MqttHelper.SubscribeAsync(_topic);
                MqttHelper.MessageReceived += MqttHelper_MessageReceived;
                msg = $"连接MQTT服务器成功，订阅主题：{_topic}！";
            }
            else
            {
                msg = "连接MQTT服务器失败！";
            }
            ReceiveMessage.Add(new MessageModel() { Msg = msg });
        }

        private void MqttHelper_MessageReceived(string arg1, string arg2)
        {
            var msg = $"接收到话题:{arg1}消息:{arg2}";
            ReceiveMessage.Add(new MessageModel() { Msg = msg });
            var request = new NotificationRequest()
            {
                NotificationId = count++,
                Title = "Mqtt消息",
                Subtitle = msg,
                Description =msg,
                BadgeNumber = 1,
                Schedule = new NotificationRequestSchedule()
                {
                    NotifyRepeatInterval = TimeSpan.FromDays(1),
                }

            };
            LocalNotificationCenter.Current.Show(request);
        }

        [ObservableProperty]
        private string _sendMessageText;

        [ObservableProperty]
        private ObservableCollection<MessageModel> _receiveMessage = new ObservableCollection<MessageModel>();

        [RelayCommand]
        public async Task SendMessage()
        {
            if (SendMessageText.Trim().Length==0)
            {
                return;
            }
            await MqttHelper.PublishAsync(_topic, SendMessageText);
            SendMessageText = "";
        }


        private static Random random = new Random();
        /// <summary>
        /// 随机字符串
        /// </summary>
        /// <param name="chars"></param>
        /// <param name="length"></param>
        /// <returns></returns>
        public string GetRandomStr(string chars, int length)
        {
            if (string.IsNullOrEmpty(chars))
            {
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghizklmnopqrstuvwxyz0123456789";
            }
            //const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }
}
