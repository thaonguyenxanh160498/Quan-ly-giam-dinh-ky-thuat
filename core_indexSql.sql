--------- Index cho managelevel
--------- Xóa index cho managelevel
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='managelevel' and i.type=2
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
--------- Kết thúc xóa index cho managelevel
GO
--------- Bắt đầu tạo index cho managelevel

--------- Kết thúc tạo index cho managelevel
---------------Kết thúc index cho managelevel
GO 
--------- Index cho region
--------- Xóa index cho region
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='region' and i.type=2
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
--------- Kết thúc xóa index cho region
GO
--------- Bắt đầu tạo index cho region

--------- Kết thúc tạo index cho region
---------------Kết thúc index cho region
GO 
--------- Index cho academiclevel
--------- Xóa index cho academiclevel
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='academiclevel' and i.type=2
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
--------- Kết thúc xóa index cho academiclevel
GO
--------- Bắt đầu tạo index cho academiclevel

--------- Kết thúc tạo index cho academiclevel
---------------Kết thúc index cho academiclevel
GO 
--------- Index cho academictitle
--------- Xóa index cho academictitle
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='academictitle' and i.type=2
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
--------- Kết thúc xóa index cho academictitle
GO
--------- Bắt đầu tạo index cho academictitle

--------- Kết thúc tạo index cho academictitle
---------------Kết thúc index cho academictitle
GO 
--------- Index cho degree
--------- Xóa index cho degree
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='degree' and i.type=2
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
--------- Kết thúc xóa index cho degree
GO
--------- Bắt đầu tạo index cho degree

--------- Kết thúc tạo index cho degree
---------------Kết thúc index cho degree
GO 
--------- Index cho armyrank
--------- Xóa index cho armyrank
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='armyrank' and i.type=2
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
--------- Kết thúc xóa index cho armyrank
GO
--------- Bắt đầu tạo index cho armyrank

--------- Kết thúc tạo index cho armyrank
---------------Kết thúc index cho armyrank
GO 
--------- Index cho leveltitle
--------- Xóa index cho leveltitle
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='leveltitle' and i.type=2
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
--------- Kết thúc xóa index cho leveltitle
GO
--------- Bắt đầu tạo index cho leveltitle

--------- Kết thúc tạo index cho leveltitle
---------------Kết thúc index cho leveltitle
GO 
--------- Index cho partyleveltitle
--------- Xóa index cho partyleveltitle
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='partyleveltitle' and i.type=2
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
--------- Kết thúc xóa index cho partyleveltitle
GO
--------- Bắt đầu tạo index cho partyleveltitle

--------- Kết thúc tạo index cho partyleveltitle
---------------Kết thúc index cho partyleveltitle
GO 
--------- Index cho staffstatus
--------- Xóa index cho staffstatus
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='staffstatus' and i.type=2
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
--------- Kết thúc xóa index cho staffstatus
GO
--------- Bắt đầu tạo index cho staffstatus

--------- Kết thúc tạo index cho staffstatus
---------------Kết thúc index cho staffstatus
GO 
--------- Index cho department
--------- Xóa index cho department
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='department' and i.type=2
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
--------- Kết thúc xóa index cho department
GO
--------- Bắt đầu tạo index cho department
CREATE NONCLUSTERED INDEX [IX_department_0] ON [dbo].[department]
(
	[parentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho department
---------------Kết thúc index cho department
GO 
--------- Index cho staff
--------- Xóa index cho staff
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='staff' and i.type=2
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
--------- Kết thúc xóa index cho staff
GO
--------- Bắt đầu tạo index cho staff
CREATE NONCLUSTERED INDEX [IX_staff_0] ON [dbo].[staff]
(
	[academictitlecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_1] ON [dbo].[staff]
(
	[degreecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_2] ON [dbo].[staff]
(
	[leveltitlecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_3] ON [dbo].[staff]
(
	[departmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_4] ON [dbo].[staff]
(
	[armyrankcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_5] ON [dbo].[staff]
(
	[partyleveltitlecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_6] ON [dbo].[staff]
(
	[provincecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_7] ON [dbo].[staff]
(
	[districtcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_staff_8] ON [dbo].[staff]
(
	[towncode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho staff
---------------Kết thúc index cho staff
GO 

