using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TaskManager.Data;
using TaskManager.Models;

namespace TaskManager.Controllers
{
    public class TaskController : ApiController
    {
        public class IdClass
        {
            public int Id { get; set; }
        }

        public DataManager dataManager = new DataManager();

        [HttpPost]
        [Route("api/task/CompleteTask")]
        public void Complete(IdClass id)
        {
            dataManager.CompleteTask(id.Id);
        }

        [HttpPost]
        [Route("api/task/DeleteTask")]
        public void DeleteTask(IdClass id)
        {
            dataManager.DeleteTask(id.Id);
        }

        [HttpPost]
        [Route("api/task/UpdateTask")]
        public void update(Task task)
        {
            dataManager.UpdateTask(task);
        }

        [HttpPost]
        [Route("api/task/CreateTask")]
        public int create(Task task)
        {
            return dataManager.CreateTask(task);
        }
    }
}
