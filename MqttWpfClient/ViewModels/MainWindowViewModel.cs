using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows;
using DryIoc;
using MQTTnet.Client;
using MqttWpfClient.Models;
using Prism.Commands;
using Prism.Mvvm;

namespace MqttWpfClient.ViewModels
{
    public class MainWindowViewModel : BindableBase
    {
        private readonly string topic = "wgp";

        private string _title = "Prism Application";
        public string Title
        {
            get { return _title; }
            set { SetProperty(ref _title, value); }
        }

        public MainWindowViewModel()
        {
            InitializeMqtt();
            SendCommand = new DelegateCommand(SendMessageCMD);
        }

        private async void InitializeMqtt()
        {
            string msg;
            MqttClientOptions options = new MqttClientOptionsBuilder()
                .WithClientId("MqttWpfClient")
                .WithTcpServer("124.222.16.134", 1883)
                .WithCredentials("admin", "Wgp19930605.")
                .Build();
            var result = await MqttHelper.ConnectAsync(options);
            if (result)
            {
                await MqttHelper.SubscribeAsync(topic);
                MqttHelper.MessageReceived += MqttHelper_MessageReceived;
                msg = $"连接MQTT服务器成功，订阅主题：{topic}！";
            }
            else
            {
                msg = "连接MQTT服务器失败！";
            }
            Messages.Add(new MessageModel() { Msg = msg });
        }

        private void MqttHelper_MessageReceived(string arg1, string arg2)
        {
            //TODO: 接收消息
            Application.Current.Dispatcher.Invoke(() =>
            {
                Messages.Add(new MessageModel() { Msg = $"接收到话题:{arg1}消息:{arg2}" });
            });
          
        }

        private async void SendMessageCMD()
        {
            //TODO: 发送消息
            await MqttHelper.PublishAsync(topic, _sendMessage);
        }

        //发送消息按钮
        private DelegateCommand _sendCommand;
        public DelegateCommand SendCommand
        {
            get { return _sendCommand; }
            set { SetProperty(ref _sendCommand, value); }
        }

        //文字框
        private string _sendMessage;
        public string SendMessage
        {
            get { return _sendMessage; }
            set { SetProperty(ref _sendMessage, value); }
        }

        //接收 消息
        private ObservableCollection<MessageModel> _messages = new ObservableCollection<MessageModel>();
        public ObservableCollection<MessageModel> Messages
        {
            get { return _messages; }
            set { SetProperty(ref _messages, value); }
        }
    }
}
