---
select * from member_master_tbl
create procedure lp_UserLogin
(
@member_id [nvarchar](50),
@password [nvarchar](50)
)
as
begin
set nocount on;
select full_name ,member_id,password, account_status from member_master_tbl where member_id=@member_id and password=@password
end
go

----------------------------
select * from member_master_tbl
select * from book_master_tbl

create procedure lp_AdminLogin
(
@username [nvarchar](50),
@password [nvarchar](50)
)
as
begin
set nocount on;
select username, password, full_name from admin_login_tbl where username=@username and password=@password
end
go


---------



create procedure lp_CheckDuplicateMember
(
@member_id [nvarchar](50),
@email [nvarchar](50)
)
as
begin
set nocount on;
select* from member_master_tbl where member_id=@member_id and email=@email
end
go
----------
create procedure lp_InsertSignup
(
@full_name nvarchar(50),
@dob nvarchar (50),
@contact_no nvarchar(50),
@state nvarchar (50),
@city nvarchar(50),
@pincode nvarchar (50),
@full_address nvarchar(max),
@member_id nvarchar(50),
@password nvarchar(50),
@email nvarchar(50),
@account_status nvarchar(50)
)
as
begin

insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) 
values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)
end
go
--------------
create procedure lp_InsertAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin
Insert into author_master_tbl (author_id,author_name) values(@id,@name)
end
go
-----------------
create procedure lpGetAuthor
as
begin
set nocount on;
select author_id, author_name from author_master_tbl
end
go
----------------
select * from author_master_tbl

select MAX(author_id) as ID from author_master_tbl
---------------------
create procedure lpGetAuthorId
(
@id nchar(10)
)
as
begin
set nocount on;
select author_id, author_name from author_master_tbl where author_id=@id
end
go
---------------
create procedure lp_UpdateAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin
update author_master_tbl set author_name=@name where author_id=@id
end
go
----------------
create procedure lp_DeleteAuthor
(
@id nchar(10)
)
as
begin
delete from author_master_tbl where author_id=@id
end
go
--------------------
select * from publisher_master_tbl
select MAX(publisher_id) as ID from publisher_master_tbl

create procedure lp_InsertPublisher
(
@id nchar(10),
@name nvarchar(max)
)
as
begin
Insert into publisher_master_tbl (publisher_id,publisher_name) values(@id,@name)
end 
go
-------------------
select publisher_id , publisher_name from publisher_master_tbl
-----------
create procedure lp_getPublisher
as
begin
set nocount on;
select publisher_id , publisher_name from publisher_master_tbl  order by publisher_name asc
end
go
--------------
create procedure lp_getPublisherByID
(
@id nchar(10)
)
as
begin
set nocount on;
select publisher_id , publisher_name from publisher_master_tbl where publisher_id=@id
end
go
-------------------
create procedure lp_DeletePublisherByID
(
@id nchar(10)
)
as
begin
delete from publisher_master_tbl where publisher_id=@id

end
go
-------------
create procedure lp_UpdatePublisher
(
@id nchar(10),
@name nvarchar(max)
)
as
begin
update publisher_master_tbl set publisher_name=@name where publisher_id=@id
end
go
-------------------
select * from member_master_tbl

create procedure lp_getMemberByID
(
@id nvarchar(50)
)
as
begin
set nocount on;
Select full_name,dob,contact_no,email,state,city,pincode,full_address from member_master_tbl where member_id=@id
end
go
------------------
select * from member_master_tbl where member_id=@id
------------
create procedure lp_UpdateMemberStatus_ByID
(
@id nvarchar(50),
@qrType nvarchar(50)
)
as
   begin
         if @qrType='Active'
		     begin
			        update member_master_tbl set account_status='Active' where member_id=@id
		     end
		 if @qrType='Pending'
		     begin
			        update member_master_tbl set account_status='Pending' where member_id=@id
		     end
	     if @qrType='Deactive'
		     begin
			        update member_master_tbl set account_status='Deactive' where member_id=@id
		     end
	     if @qrType='Delete'
		     begin
			        Delete from member_master_tbl where member_id=@id
		     end
   end
go
----------------------
create procedure lp_getMember_AllRecords
as
begin
set nocount on;
Select member_id,full_name,dob,contact_no,email,state,city,pincode,full_address,account_status from member_master_tbl order by member_id
end
go
------------
create procedure lp_UpdateMember_Records
(
@full_name nvarchar(50),
@dob nvarchar (50),
@contact_no nvarchar(50),
@state nvarchar (50),
@city nvarchar(50),
@pincode nvarchar (50),
@full_address nvarchar(max),
@member_id nvarchar(50),
@email nvarchar(50)
)
as
begin
update member_master_tbl set full_name=@full_name,dob=@dob,contact_no=@contact_no,email=@email,state=@state,city=@city,pincode=@pincode,full_address=@full_address where member_id=@member_id
end
go
---------------
create procedure lp_DeleteMemberByID
(
@member_id int
)
as
begin
Delete from member_master_tbl where member_id=@member_id
end
go
---------------
select * from book_master_tbl
-----------------------------
create procedure lp_booklanguage
(
@language nvarchar(50)
)
as
begin
select * from book_language
end
go
-------------------
select* from book_language

-------------------------
create procedure lp_Insert_Up_Del_BookInventory
(
@book_id nchar(10)=null,
@book_name nvarchar(max)=null,
@genre nvarchar(max)=null,
@author_name nvarchar (max)=null,
@publisher_name nvarchar(max)=null,
@publish_date nvarchar (50)=null,
@language nvarchar(50)=null,
@edition nvarchar (50)=null,
@book_cost nchar(10)=null,
@no_of_pages nchar(10)=null,
@book_description nvarchar(max)=null,
@actual_stock nchar(10)=null,
@current_stock nchar(10)=null,
@book_img_link nvarchar (max)=null,
@StatementType nvarchar(20)=''
)
as
begin
     if @StatementType='Insert'
	     begin
		      insert into book_master_tbl
			  (book_id,
				book_name,
				genre,
				author_name,
				publisher_name,
				publisher_date,
				language,
				edition,
				book_cost,
				no_of_pages,
				book_description,
				actual_stock,
				current_stock,
				book_img_link)

							  values(
				@book_id,
				@book_name,
				@genre,
				@author_name,
				@publisher_name,
				@publish_date,
				@language,
				@edition,
				@book_cost,
				@no_of_pages,
				@book_description,
				@actual_stock,
				@current_stock,
				@book_img_link)

       End

	   if @StatementType='Select'
	     begin
		      select book_id,book_name, genre, author_name, publisher_name, 
			  publisher_date, language,edition,book_cost,no_of_pages,
			  book_description,actual_stock, current_stock,  book_img_link
			  from book_master_tbl
	    end
		if @StatementType='SelectByID'
	     begin
		      select book_id,book_name, genre, author_name, publisher_name, 
			  publisher_date, language,edition,book_cost,no_of_pages,
			  book_description,actual_stock, current_stock,  book_img_link
			  from book_master_tbl where book_id=@book_id
	    end
		if @StatementType='Update'
		  begin
		      update book_master_tbl
			  set 
			  book_name=@book_name,
			  genre=@genre,
			  author_name=@author_name,
			  publisher_name=@publisher_name,
			  publisher_date=@publish_date,
			  language=@language,
			  edition=@edition,
			  book_cost=@book_cost,
			  no_of_pages=@no_of_pages,
			  book_description=@book_description,
			  actual_stock=@actual_stock,
			  current_stock=@current_stock,
			  book_img_link=@book_img_link
		 where book_id=@book_id
	end
	else if @StatementType='Delete'
	   begin
	        delete from book_master_tbl
			where book_id=@book_id
	end
end
go
-----------------
select * from member_master_tbl

 USE LibraryM_DB;

 select * from book_master_tbl;
 ---------------------------------
 exec lp_Insert_Up_Del_BookInventory 
@book_id = '2',
@book_name = 'Sample Book',
@genre = 'Science Fiction',
@author_name = 'John Doe',
@publisher_name = 'Example Publisher',
@publish_date = '2023-09-14',
@language = 'English',
@edition = '1st',
@book_cost = '100',
@no_of_pages = '300',
@book_description = 'This is a sample book description.',
@actual_stock = '50',
@current_stock = '50',
@book_img_link = '',
@StatementType = 'Insert'

SELECT * 
FROM sys.procedures 
WHERE name = 'lp_GetBookByID';
-----------------------
ALTER PROCEDURE lp_GetBookByID
@book_id NVARCHAR(10)
AS
BEGIN
    SELECT 
        book_id,
        book_name,
        genre,
        author_name,
        publisher_name,
        publisher_date,
        language,
        edition,
        book_cost,
        no_of_pages,
        book_description,
        actual_stock,
        COALESCE(current_stock,0) as current_stock,
        book_img_link
    FROM book_master_tbl
    WHERE book_id = @book_id;
END
go
------
EXEC lp_GetBookByID @book_id = '1';
-------------------------------
select max(book_id)as ID from book_master_tbl
select * from book_master_tbl

---------------
SELECT 
    book_id,
    book_name,
    genre,
    author_name,
    publisher_name,
    publisher_date,
    language,
    edition,
    book_cost,
    no_of_pages,
    book_description,
    actual_stock,
    COALESCE(current_stock, 0) AS current_stock,  -- Alias ekledik
    book_img_link
FROM 
    book_master_tbl;

	EXEC lp_GetBookByID @book_id = '1';

	select * from book_master_tbl

	EXEC sp_help 'book_master_tbl';
	ALTER TABLE book_master_tbl
ADD current_stock INT;


SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'book_master_tbl';
-----------------
ALTER PROCEDURE lp_GetBookByID
@book_id NVARCHAR(10)
AS
BEGIN
    SELECT 
        book_id,
        book_name,
        genre,
        author_name,
        publisher_name,
        publisher_date,
        language,
        edition,
        book_cost,
        no_of_pages,
        book_description,
        actual_stock,
        COALESCE(current_stock,0) as current_stock,
        book_img_link
    FROM book_master_tbl
    WHERE book_id = @book_id;
END
--------------
5 WHERE book_id = '1';
-------------------------
exec lp_Insert_Up_Del_BookInventory 
@book_id = '5',
@book_name = 'Deneme',
@genre = 'Science Fiction',
@author_name = 'Burcin Koc',
@publisher_name = 'Is Bankasi',
@publish_date = '2023-09-14',
@language = 'English',
@edition = '1st',
@book_cost = '100',
@no_of_pages = '300',
@book_description = 'This is a sample book description.',
@actual_stock = '50',
@current_stock = '50',
@book_img_link = '',
@StatementType = 'Insert'
--------------------
select * from admin_login_tbl
select * from author_master_tbl
select * from book_issue_tbl
select * from book_language
select * from book_master_tbl
select * from member_master_tbl
select * from publisher_master_tbl
