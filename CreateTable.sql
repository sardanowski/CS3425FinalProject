/* Select database */

use srardano;



CREATE TABLE FinalInstructor (
	id char(10) primary key,
    name char(20),
    password char(20));
    
Create table StudentFinal (
	sid char(10) primary key,
    Name char(20),
    password char(20),
    Major char(5));
    
create table FinalEarned (
	name char(20),
    sid char(10),
    points int,
    foreign key FinalEarned(name) references FinalExam(Name),
    foreign key FinalEarned(sid) references FinalStudent(sid),
    primary key (sid, name)
    );
create table FinalExam(
	Name char(20) primary key,
    Created date,
    Total_Points int );
    
create table FinalQuestions (
	Question_Number int,
    Correct_Answer char(1),
    Question text,
    Points int, /* Assumption: Points must be int, can't have 0.5 points */
    Name char(20),
    foreign key FinalQuestions(Name) references FinalExam(Name),
    primary key (Question_Number, Name)
    );
    
create table FinalChoice(
	EName char(20),
    Question_Number int,
    Response_id char(1),
    Response text,
    primary key (EName, Question_Number),
    foreign key FinalChoice(EName) references FinalExam(Name),
    foreign key FinalChoice(Question_Number) references FinalQuestions(Question_Number)
    );
    
    
    
    
    
    
	