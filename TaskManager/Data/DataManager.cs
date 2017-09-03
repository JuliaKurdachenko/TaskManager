using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaskManager.Data
{
    public class DataManager
    {
        public void DeleteTask(int taskId)
        {
            using (var db = new TaskManager())
            {
                var task = db.Tasks.FirstOrDefault(x => x.TaskID == taskId);
                db.Entry<Task>(task).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public void DeleteProject(int projectId)
        {
            using (var db = new TaskManager())
            {
                var project = db.Projects.FirstOrDefault(x => x.ProjectID == projectId);

                foreach (var task in project.Tasks)
                {
                    db.Entry<Task>(task).State = System.Data.Entity.EntityState.Deleted;
                }

                db.SaveChanges();

                db.Entry<Project>(project).State = System.Data.Entity.EntityState.Deleted;

                db.SaveChanges();
            }
        }

        public void UpdateTask(Task t)
        {
            using (var db = new TaskManager())
            {
                var task = db.Tasks.FirstOrDefault(x => x.TaskID == t.TaskID);

                if (t.Name != null)
                    task.Name = t.Name;

                if (t.Order != 0)
                    task.Order = t.Order;

                if (t.DeadLine != DateTime.MinValue)
                    task.DeadLine = t.DeadLine;

                db.SaveChanges();
            }
        }

        public void UpdateProjectName(int id, string name)
        {
            using (var db = new TaskManager())
            {
                var proj = db.Projects.FirstOrDefault(x => x.ProjectID == id);
                proj.ProjectName = name;
                db.SaveChanges();
            }
        }

        public int CreateProject(string name)
        {
            using (var db = new TaskManager())
            {
                var newProj = new Project
                {
                    ProjectName = name
                };

                db.Projects.Add(newProj);

                db.SaveChanges();

                return newProj.ProjectID;
            }
        }

        public List<Project> GetAllData()
        {
            using (var db = new TaskManager())
            {
                return db.Projects.Include("Tasks").ToList();
            }
        }

        public void CompleteTask(int taskId)
        {
            using (var db = new TaskManager())
            {
                var task = db.Tasks.FirstOrDefault(x => x.TaskID == taskId);
                task.Completed = !task.Completed;
                db.SaveChanges();
            }
        }

        public int CreateTask(Task t)
        {
            using (var db = new TaskManager())
            {
                var task = db.Tasks.Add(t);
                db.SaveChanges();
                return t.TaskID;
            }
        }

    }
}