create database TaskManager;
go

USE TaskManager;

create table Projects(
ProjectID int identity(1,1) primary key NOT NULL,
ProjectName nvarchar(max)
)

go

create table Tasks(
TaskID int identity(1,1) primary key NOT NULL,
Name nvarchar(max),
[Order] int,
DeadLine DateTime,
ProjectID int,
Completed bit,
CONSTRAINT ProjectID_FK FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
)


insert into Projects(ProjectName)
values('Project 1'),('Project 2'),('Project 3')

insert into Tasks(Name, [Order], DeadLine, ProjectID, Completed)
values
('Task1',1,GETDATE(),1,0),
('Task2',2,GETDATE(),1,0),
('Task1 Project 2',1,GETDATE(),2,0),
('Task2 Project 2',2,GETDATE(),2,0)

