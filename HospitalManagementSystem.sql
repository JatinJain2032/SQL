use hospital;

 create table patients(
     ID INT Auto_Increment Primary key,
     Name varchar(255) NOT NULL,
     age int NOT NULL,
     Gender varchar(10) NOT NULL
 );

 drop table patients;
 
 create table Doctors(
 ID INT Auto_Increment Primary key,
 Name varchar(255) NOT NULL,
 Specialization varchar(255) NOT NULL
 );

drop table Doctors;
 
 create table appointments(
  ID INT Auto_Increment Primary key,
  patient_id int NOT NULL,
  doctor_id int NOT NULL,
  appointment_date date not null,
  foreign key(patient_id) references patients(id),
  foreign key (doctor_id) references Doctors(id)
  );
 
 drop table appointments;
  
  insert into doctors (name,specialization)
  values("Pankaj Jain", "Physician"),
  ("Harshit", "Neurosergon");
  
  select *from doctors;
  
 