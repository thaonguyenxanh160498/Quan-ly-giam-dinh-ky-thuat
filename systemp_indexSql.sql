--------- Index cho university
--------- Xóa index cho university
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='university' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho university
GO
--------- Bắt đầu tạo index cho university

--------- Kết thúc tạo index cho university
---------------Kết thúc index cho university
GO 
--------- Index cho systemparameter
--------- Xóa index cho systemparameter
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='systemparameter' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho systemparameter
GO
--------- Bắt đầu tạo index cho systemparameter

--------- Kết thúc tạo index cho systemparameter
---------------Kết thúc index cho systemparameter
GO 
--------- Index cho personalparameter
--------- Xóa index cho personalparameter
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='personalparameter' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho personalparameter
GO
--------- Bắt đầu tạo index cho personalparameter

--------- Kết thúc tạo index cho personalparameter
---------------Kết thúc index cho personalparameter
GO 
--------- Index cho logme
--------- Xóa index cho logme
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='logme' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho logme
GO
--------- Bắt đầu tạo index cho logme

--------- Kết thúc tạo index cho logme
---------------Kết thúc index cho logme
GO 
--------- Index cho logerror
--------- Xóa index cho logerror
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='logerror' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho logerror
GO
--------- Bắt đầu tạo index cho logerror

--------- Kết thúc tạo index cho logerror
---------------Kết thúc index cho logerror
GO 
--------- Index cho logresetpassword
--------- Xóa index cho logresetpassword
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='logresetpassword' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho logresetpassword
GO
--------- Bắt đầu tạo index cho logresetpassword

--------- Kết thúc tạo index cho logresetpassword
---------------Kết thúc index cho logresetpassword
GO 
--------- Index cho syscomponent
--------- Xóa index cho syscomponent
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='syscomponent' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho syscomponent
GO
--------- Bắt đầu tạo index cho syscomponent

--------- Kết thúc tạo index cho syscomponent
---------------Kết thúc index cho syscomponent
GO 
--------- Index cho groupname
--------- Xóa index cho groupname
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='groupname' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho groupname
GO
--------- Bắt đầu tạo index cho groupname

--------- Kết thúc tạo index cho groupname
---------------Kết thúc index cho groupname
GO 
--------- Index cho priority
--------- Xóa index cho priority
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='priority' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho priority
GO
--------- Bắt đầu tạo index cho priority

--------- Kết thúc tạo index cho priority
---------------Kết thúc index cho priority
GO 
--------- Index cho admingroup
--------- Xóa index cho admingroup
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='admingroup' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho admingroup
GO
--------- Bắt đầu tạo index cho admingroup

--------- Kết thúc tạo index cho admingroup
---------------Kết thúc index cho admingroup
GO 
--------- Index cho ADMINGROUPPRIORITY
--------- Xóa index cho ADMINGROUPPRIORITY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='ADMINGROUPPRIORITY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho ADMINGROUPPRIORITY
GO
--------- Bắt đầu tạo index cho ADMINGROUPPRIORITY

--------- Kết thúc tạo index cho ADMINGROUPPRIORITY
---------------Kết thúc index cho ADMINGROUPPRIORITY
GO 
--------- Index cho staffadmingroup
--------- Xóa index cho staffadmingroup
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='staffadmingroup' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho staffadmingroup
GO
--------- Bắt đầu tạo index cho staffadmingroup

--------- Kết thúc tạo index cho staffadmingroup
---------------Kết thúc index cho staffadmingroup
GO 
--------- Index cho STAFFPRIORITY
--------- Xóa index cho STAFFPRIORITY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='STAFFPRIORITY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho STAFFPRIORITY
GO
--------- Bắt đầu tạo index cho STAFFPRIORITY

--------- Kết thúc tạo index cho STAFFPRIORITY
---------------Kết thúc index cho STAFFPRIORITY
GO 
--------- Index cho DEPARTMENTPRIORITY
--------- Xóa index cho DEPARTMENTPRIORITY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DEPARTMENTPRIORITY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DEPARTMENTPRIORITY
GO
--------- Bắt đầu tạo index cho DEPARTMENTPRIORITY

--------- Kết thúc tạo index cho DEPARTMENTPRIORITY
---------------Kết thúc index cho DEPARTMENTPRIORITY
GO 
--------- Index cho LEVELTITLEPRIORITY
--------- Xóa index cho LEVELTITLEPRIORITY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='LEVELTITLEPRIORITY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho LEVELTITLEPRIORITY
GO
--------- Bắt đầu tạo index cho LEVELTITLEPRIORITY

--------- Kết thúc tạo index cho LEVELTITLEPRIORITY
---------------Kết thúc index cho LEVELTITLEPRIORITY
GO 
--------- Index cho departmentadmingroup
--------- Xóa index cho departmentadmingroup
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='departmentadmingroup' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho departmentadmingroup
GO
--------- Bắt đầu tạo index cho departmentadmingroup

--------- Kết thúc tạo index cho departmentadmingroup
---------------Kết thúc index cho departmentadmingroup
GO 
--------- Index cho leveltitleadmingroup
--------- Xóa index cho leveltitleadmingroup
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='leveltitleadmingroup' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho leveltitleadmingroup
GO
--------- Bắt đầu tạo index cho leveltitleadmingroup

--------- Kết thúc tạo index cho leveltitleadmingroup
---------------Kết thúc index cho leveltitleadmingroup
GO 
--------- Index cho sysmenu
--------- Xóa index cho sysmenu
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='sysmenu' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho sysmenu
GO
--------- Bắt đầu tạo index cho sysmenu
CREATE NONCLUSTERED INDEX [IX_sysmenu_0] ON [dbo].[sysmenu]
(
	[prioritycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho sysmenu
---------------Kết thúc index cho sysmenu
GO 
--------- Index cho sysmenupriority
--------- Xóa index cho sysmenupriority
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='sysmenupriority' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho sysmenupriority
GO
--------- Bắt đầu tạo index cho sysmenupriority

--------- Kết thúc tạo index cho sysmenupriority
---------------Kết thúc index cho sysmenupriority
GO 
--------- Index cho dayoff
--------- Xóa index cho dayoff
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='dayoff' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho dayoff
GO
--------- Bắt đầu tạo index cho dayoff

--------- Kết thúc tạo index cho dayoff
---------------Kết thúc index cho dayoff
GO 
--------- Index cho weekday
--------- Xóa index cho weekday
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='weekday' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho weekday
GO
--------- Bắt đầu tạo index cho weekday

--------- Kết thúc tạo index cho weekday
---------------Kết thúc index cho weekday
GO 

