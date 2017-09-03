namespace TaskManager.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Task
    {
        [Key]
        public int TaskID { get; set; }

        public string Name { get; set; }

        public int? Order { get; set; }

        public DateTime? DeadLine { get; set; }

        public int? ProjectID { get; set; }

        public bool Completed { get; set; }

        public virtual Project Projects { get; set; }
    }
}
