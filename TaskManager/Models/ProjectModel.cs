using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaskManager.Models
{
    public class ProjectModel
    {
        public int Id;
        public IList<TaskModel> Tasks;
        public string Name;
    }
}