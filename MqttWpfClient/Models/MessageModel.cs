using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MqttWpfClient.Models
{
    public class MessageModel
    {
        public int Id { get; set; }
        public string? Msg { get; set; }
        public string Date { get; set; }=DateTime.Now.ToString("HH:mm:ss");
    }
}
