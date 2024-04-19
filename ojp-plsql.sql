CREATE TABLE applicant_emails (
  id serial NOT NULL,
  a_uname varchar(20) DEFAULT NULL,
  ApplicantMsg varchar(200) DEFAULT NULL,
  Applied varchar(3) DEFAULT NULL,
  Cmny_name varchar(45) DEFAULT NULL,
  ConfirmationMsg text,
  PRIMARY KEY (id)
);
INSERT INTO applicant_emails(a_uname,ApplicantMsg,Applied,Cmny_name,ConfirmationMsg) VALUES ('nitin1','Dear candidate you are selected in our company for interview \r\nThe Date :\r\nVenue:\r\n     ','Y','1234','Dearnitin1your application is confirmed .We Will see you at the interview at given venue. Best Luck For Your Future'),('fdsg','fdgf','Y','dfg','cvbf'),('nitin1','Dear candidate you are selected in our company for the ASP.NET interview \r\nThe Date :\r\nVenue:\r\n     ','N','1234',NULL),('vishal','hiiiii testing','Y','1234','confirmed');
CREATE TABLE applicant_info (
  id serial not null,
  firstname char(20) DEFAULT NULL,
  middlename char(20) DEFAULT NULL,
  lastname char(20) DEFAULT NULL,
  DOB char(20) DEFAULT NULL,
  Gender varchar(10) DEFAULT NULL,
  Address varchar(45) DEFAULT NULL,
  Contact varchar(20) DEFAULT NULL,
  Email varchar(45) DEFAULT NULL,
  EducationLevel varchar(45) DEFAULT NULL,
  Edu_Course varchar(45) DEFAULT NULL,
  Marks float DEFAULT NULL,
  uname varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,  
  Certificate varchar(45) DEFAULT NULL,
  resumepath varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO applicant_info(firstname,middlename,lastname,DOB,Gender,Address,Contact,Email,EducationLevel,Edu_Course,marks,uname,password,Certificate) VALUES ('Vishal','Dnyaneshwer','Auti','29/04/1991','Male','Bori','9730409246','auti.vishal638@gmail.com','Master Degree','M.E.',66,'vishal','111',NULL),('ajinkya','s','d','27/05/1991','Male','  rajuri                                  ','9579481316','ajinkya.abhang1@gmail.com','Some High School Coursework','B.E. Comp',45,'aj1','111','asd'),('Nitin','Savkar','Hadawale','29/04/1991','Male','Rajuri','9730409248','auti.vishal638@gmail.com','Bachelor Degree','B.E.',50,'nitin1','222','N/A');

CREATE TABLE applicantlogin (
  id serial not null,
  username varchar(20) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  delete varchar(2) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO applicantlogin(username,password,delete) VALUES ('vishal','111',NULL),('aj1','111','D'),('nitin1','222',NULL);
CREATE TABLE cmpny_info (
  id serial not null,
  C_RegId varchar(45) DEFAULT NULL,
  C_Name varchar(45) DEFAULT NULL,
  C_Address varchar(45) DEFAULT NULL,
  C_Approve varchar(3) DEFAULT NULL,
  C_Scope varchar(45) DEFAULT NULL,
  C_Email varchar(45) DEFAULT NULL,
  C_Contact varchar(45) DEFAULT NULL,
  Emp_Name varchar(45) DEFAULT NULL,
  Emp_Post varchar(45) DEFAULT NULL,
  Emp_Address varchar(45) DEFAULT NULL,
  Emp_contact varchar(45) DEFAULT NULL,
  username varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
) ;
INSERT INTO cmpny_info(C_RegId,C_Name,C_Address,C_Approve,C_Scope,C_Email,C_Contact,Emp_Name,Emp_Post,Emp_Address,Emp_contact,username,password) VALUES ('1234','AMV Technosoft pvt. ltd.','alephata','D','MNC','auti.vishal638@gmail.com','fgj','Vishal Auti','C.E.O.','Bori B.K                                ','9730409248','1234','111'),('12345','City Solution Community','Alephata','Y','Local','citysolcom@gmail.com','9730409248','Anil Dongare','MAnager','Ale                                    ','9570481316','12345','222'),('123456','Shahu Fule Ambedkar Samjasanstha','godre junnar','Y','samajseva','auti@gmail.com','9730409248','Vishal','president',' bori                                   ','9570481316','123456','222');
CREATE TABLE company_list (
  id serial not null,
  C_reg varchar(45) DEFAULT NULL,
  C_Name varchar(45) DEFAULT NULL,
  C_Address varchar(45) DEFAULT NULL,
  Rank int DEFAULT NULL,
  C_Approve varchar(3) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO company_list(C_reg,C_Name,C_Address,Rank,C_Approve) VALUES ('1234','AMV Technosoft pvt. ltd.','alephata',2,'D'),('12345','City Solution Community','Alephata',NULL,'Y'),('123456','Shahu Fule Ambedkar Samjasanstha','godre junnar',NULL,'Y');
CREATE TABLE companylogin (
  id serial not null,
  username varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  Approve varchar(2) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO companylogin(username,password,Approve) VALUES ('1234','111','D'),('12345','222','Y'),('123456','222','Y');
CREATE TABLE edu_course (
  id serial not null,
  CourseName char(30) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO edu_course(CourseName) VALUES ('B.E. Comp'),('B.E. IT'),('B.E. Elex'),('B.E. E&TC'),('B.E. Mech');
CREATE TABLE latestupdate (
  id serial not null,
  Title varchar(45) DEFAULT NULL,
  Content varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO latestupdate(Title,Content) VALUES ('1','xsvxc'),('df','sdfsdf'),('xcvxc','     xcvxcbsdfhiiiiiiiiiiiiiiiiii            '),('About  IBM','IBM pvt ltd is awrded as best IT industry    ');
