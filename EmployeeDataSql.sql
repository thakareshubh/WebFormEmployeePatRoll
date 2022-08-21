create database WebForm

create schema WebForm;

create table WebForm.Employee(
Emp_Id int PRIMARY key identity (1,1),
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
email_Id varchar (50) not null,
password varchar (50) not null,
confirm_password varchar (50) not null
)

select * from WebForm.Employee

----store procedure for register employee-------
alter  proc spRegister (
@first_name VARCHAR (50) ,
@last_name VARCHAR (50) ,
@email_Id varchar (50)  ,
@password varchar (50) ,
@confirm_password varchar (50) 
)
AS
BEGIN
   BEGIN TRY
        insert into WebForm.Employee (first_name,last_name,email_Id,password,confirm_password)
		values (@first_name,@last_name,@email_Id,@password,@confirm_password)
    END TRY
	BEGIN CATCH
        SELECT  
            ERROR_NUMBER() AS ErrorNumber  ,
            ERROR_SEVERITY() AS ErrorSeverity , 
            ERROR_STATE() AS ErrorState  ,
            ERROR_PROCEDURE() AS ErrorProcedure,  
            ERROR_LINE() AS ErrorLine  ,
            ERROR_MESSAGE() AS ErrorMessage;  
    END CATCH
END;

-----Store proc for emp login---
alter proc spLogin (
@email_Id varchar (50) ,
@password varchar (50) 
)
AS
BEGIN
   BEGIN TRY
        select * from WebForm.Employee 
		where email_Id=@email_Id and
			password=@password
			
		
    END TRY
	BEGIN CATCH
        SELECT  
            ERROR_NUMBER() AS ErrorNumber  ,
            ERROR_SEVERITY() AS ErrorSeverity , 
            ERROR_STATE() AS ErrorState  ,
            ERROR_PROCEDURE() AS ErrorProcedure,  
            ERROR_LINE() AS ErrorLine  ,
            ERROR_MESSAGE() AS ErrorMessage;  
    END CATCH
END;

