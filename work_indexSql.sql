--------- Index cho approvedstatus
--------- Xóa index cho approvedstatus
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='approvedstatus' and i.type=2
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
--------- Kết thúc xóa index cho approvedstatus
GO
--------- Bắt đầu tạo index cho approvedstatus

--------- Kết thúc tạo index cho approvedstatus
---------------Kết thúc index cho approvedstatus
GO 
--------- Index cho evidencestatus
--------- Xóa index cho evidencestatus
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidencestatus' and i.type=2
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
--------- Kết thúc xóa index cho evidencestatus
GO
--------- Bắt đầu tạo index cho evidencestatus

--------- Kết thúc tạo index cho evidencestatus
---------------Kết thúc index cho evidencestatus
GO 
--------- Index cho deliverytype
--------- Xóa index cho deliverytype
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='deliverytype' and i.type=2
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
--------- Kết thúc xóa index cho deliverytype
GO
--------- Bắt đầu tạo index cho deliverytype

--------- Kết thúc tạo index cho deliverytype
---------------Kết thúc index cho deliverytype
GO 
--------- Index cho evidencetype
--------- Xóa index cho evidencetype
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidencetype' and i.type=2
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
--------- Kết thúc xóa index cho evidencetype
GO
--------- Bắt đầu tạo index cho evidencetype

--------- Kết thúc tạo index cho evidencetype
---------------Kết thúc index cho evidencetype
GO 
--------- Index cho evidence
--------- Xóa index cho evidence
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidence' and i.type=2
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
--------- Kết thúc xóa index cho evidence
GO
--------- Bắt đầu tạo index cho evidence

--------- Kết thúc tạo index cho evidence
---------------Kết thúc index cho evidence
GO 
--------- Index cho quantity
--------- Xóa index cho quantity
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='quantity' and i.type=2
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
--------- Kết thúc xóa index cho quantity
GO
--------- Bắt đầu tạo index cho quantity

--------- Kết thúc tạo index cho quantity
---------------Kết thúc index cho quantity
GO 
--------- Index cho material
--------- Xóa index cho material
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='material' and i.type=2
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
--------- Kết thúc xóa index cho material
GO
--------- Bắt đầu tạo index cho material

--------- Kết thúc tạo index cho material
---------------Kết thúc index cho material
GO 
--------- Index cho evidencematerial
--------- Xóa index cho evidencematerial
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidencematerial' and i.type=2
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
--------- Kết thúc xóa index cho evidencematerial
GO
--------- Bắt đầu tạo index cho evidencematerial

--------- Kết thúc tạo index cho evidencematerial
---------------Kết thúc index cho evidencematerial
GO 
--------- Index cho inspectionmaterial
--------- Xóa index cho inspectionmaterial
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='inspectionmaterial' and i.type=2
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
--------- Kết thúc xóa index cho inspectionmaterial
GO
--------- Bắt đầu tạo index cho inspectionmaterial

--------- Kết thúc tạo index cho inspectionmaterial
---------------Kết thúc index cho inspectionmaterial
GO 
--------- Index cho evidencestaff
--------- Xóa index cho evidencestaff
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidencestaff' and i.type=2
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
--------- Kết thúc xóa index cho evidencestaff
GO
--------- Bắt đầu tạo index cho evidencestaff

--------- Kết thúc tạo index cho evidencestaff
---------------Kết thúc index cho evidencestaff
GO 
--------- Index cho evidencenote
--------- Xóa index cho evidencenote
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='evidencenote' and i.type=2
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
--------- Kết thúc xóa index cho evidencenote
GO
--------- Bắt đầu tạo index cho evidencenote

--------- Kết thúc tạo index cho evidencenote
---------------Kết thúc index cho evidencenote
GO 

