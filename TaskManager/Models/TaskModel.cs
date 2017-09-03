using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaskManager.Models
{
    public class TaskModel
    {
        public string Name;
        public int Order;
        public int Id;
        public bool Completed;
        public DateTime DeadLine;
    }
}