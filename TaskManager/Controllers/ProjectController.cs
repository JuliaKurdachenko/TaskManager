using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TaskManager.Data;

namespace TaskManager.Controllers
{
    public class ProjectController : ApiController
    {
        public DataManager dataManager = new DataManager();

        // GET: api/Project
        public IEnumerable<object> Get()
        {
            return dataManager.GetAllData().Select(x => new Project
            {
                ProjectID = x.ProjectID,
                ProjectName = x.ProjectName,
                Tasks = x.Tasks.Select(z => new Task { Completed = z.Completed, DeadLine = z.DeadLine, Name = z.Name, Order = z.Order, ProjectID = z.ProjectID, TaskID = z.TaskID }).ToList()
            });
        }

        public class NameClass  {  public string Name { get; set; } }
        [HttpPost]
        [Route("api/project/CreateProject")]
        public int CreateProject(NameClass Name)
        {
            return dataManager.CreateProject(Name.Name);
        }

        public class IdClass { public int Id { get; set; } }
        [HttpPost]
        [Route("api/project/DeleteProject")]
        public void DeleteProject(IdClass values)
        {
            dataManager.DeleteProject(values.Id);
        }
    }
}
