
-----------------begin managelevel_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_managelevel_insert')
    DROP PROCEDURE [gen_managelevel_insert]
GO 
CREATE PROCEDURE [gen_managelevel_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @comparelevel int,   @theorder int,   @thetype varchar(50))
AS 
BEGIN
	INSERT INTO [managelevel]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [comparelevel], [theorder], [thetype]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @comparelevel, @theorder, @thetype)
END
-----------------end managelevel_insert--------------------
GO

-----------------begin managelevel_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_managelevel_update')
    DROP PROCEDURE [gen_managelevel_update]
GO 
CREATE PROCEDURE [gen_managelevel_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @comparelevel int, @theorder int, @thetype varchar(50), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [managelevel] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [comparelevel] =@comparelevel, [theorder] =@theorder, [thetype] =@thetype WHERE [code] =@Key_code
END
-----------------end managelevel_update--------------------
GO

-----------------begin managelevel_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_managelevel_delete')
    DROP PROCEDURE [gen_managelevel_delete]
GO 
CREATE PROCEDURE [gen_managelevel_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [managelevel] WHERE [code] =@code
END
-----------------end managelevel_delete--------------------
GO

-----------------begin region_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_region_insert')
    DROP PROCEDURE [gen_region_insert]
GO 
CREATE PROCEDURE [gen_region_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @comparelevel int,   @theorder int,   @thetype varchar(50))
AS 
BEGIN
	INSERT INTO [region]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [comparelevel], [theorder], [thetype]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @comparelevel, @theorder, @thetype)
END
-----------------end region_insert--------------------
GO

-----------------begin region_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_region_update')
    DROP PROCEDURE [gen_region_update]
GO 
CREATE PROCEDURE [gen_region_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @comparelevel int, @theorder int, @thetype varchar(50), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [region] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [comparelevel] =@comparelevel, [theorder] =@theorder, [thetype] =@thetype WHERE [code] =@Key_code
END
-----------------end region_update--------------------
GO

-----------------begin region_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_region_delete')
    DROP PROCEDURE [gen_region_delete]
GO 
CREATE PROCEDURE [gen_region_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [region] WHERE [code] =@code
END
-----------------end region_delete--------------------
GO

-----------------begin academiclevel_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academiclevel_insert')
    DROP PROCEDURE [gen_academiclevel_insert]
GO 
CREATE PROCEDURE [gen_academiclevel_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @whois varchar(64),   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int,   @eduduty1 int,   @researchduty1 int)
AS 
BEGIN
	INSERT INTO [academiclevel]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [whois], [edureducerate], [researchreducerate], [eduduty], [researchduty], [eduduty1], [researchduty1]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @whois, @edureducerate, @researchreducerate, @eduduty, @researchduty, @eduduty1, @researchduty1)
END
-----------------end academiclevel_insert--------------------
GO

-----------------begin academiclevel_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academiclevel_update')
    DROP PROCEDURE [gen_academiclevel_update]
GO 
CREATE PROCEDURE [gen_academiclevel_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @whois varchar(64), @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @eduduty1 int, @researchduty1 int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [academiclevel] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [whois] =@whois, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1 WHERE [code] =@Key_code
END
-----------------end academiclevel_update--------------------
GO

-----------------begin academiclevel_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academiclevel_delete')
    DROP PROCEDURE [gen_academiclevel_delete]
GO 
CREATE PROCEDURE [gen_academiclevel_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [academiclevel] WHERE [code] =@code
END
-----------------end academiclevel_delete--------------------
GO

-----------------begin academictitle_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academictitle_insert')
    DROP PROCEDURE [gen_academictitle_insert]
GO 
CREATE PROCEDURE [gen_academictitle_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @whois varchar(64),   @eduduty1 int,   @researchduty1 int,   @rate float,   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int)
AS 
BEGIN
	INSERT INTO [academictitle]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [whois], [eduduty1], [researchduty1], [rate], [edureducerate], [researchreducerate], [eduduty], [researchduty]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @whois, @eduduty1, @researchduty1, @rate, @edureducerate, @researchreducerate, @eduduty, @researchduty)
END
-----------------end academictitle_insert--------------------
GO

-----------------begin academictitle_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academictitle_update')
    DROP PROCEDURE [gen_academictitle_update]
GO 
CREATE PROCEDURE [gen_academictitle_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @whois varchar(64), @eduduty1 int, @researchduty1 int, @rate float, @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [academictitle] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [whois] =@whois, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1, [rate] =@rate, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty WHERE [code] =@Key_code
END
-----------------end academictitle_update--------------------
GO

-----------------begin academictitle_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_academictitle_delete')
    DROP PROCEDURE [gen_academictitle_delete]
GO 
CREATE PROCEDURE [gen_academictitle_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [academictitle] WHERE [code] =@code
END
-----------------end academictitle_delete--------------------
GO

-----------------begin degree_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_degree_insert')
    DROP PROCEDURE [gen_degree_insert]
GO 
CREATE PROCEDURE [gen_degree_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @whois varchar(64),   @eduduty1 int,   @researchduty1 int,   @rate float,   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int)
AS 
BEGIN
	INSERT INTO [degree]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [whois], [eduduty1], [researchduty1], [rate], [edureducerate], [researchreducerate], [eduduty], [researchduty]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @whois, @eduduty1, @researchduty1, @rate, @edureducerate, @researchreducerate, @eduduty, @researchduty)
END
-----------------end degree_insert--------------------
GO

-----------------begin degree_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_degree_update')
    DROP PROCEDURE [gen_degree_update]
GO 
CREATE PROCEDURE [gen_degree_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @whois varchar(64), @eduduty1 int, @researchduty1 int, @rate float, @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [degree] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [whois] =@whois, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1, [rate] =@rate, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty WHERE [code] =@Key_code
END
-----------------end degree_update--------------------
GO

-----------------begin degree_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_degree_delete')
    DROP PROCEDURE [gen_degree_delete]
GO 
CREATE PROCEDURE [gen_degree_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [degree] WHERE [code] =@code
END
-----------------end degree_delete--------------------
GO

-----------------begin armyrank_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_armyrank_insert')
    DROP PROCEDURE [gen_armyrank_insert]
GO 
CREATE PROCEDURE [gen_armyrank_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @whois varchar(64),   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int,   @eduduty1 int,   @researchduty1 int)
AS 
BEGIN
	INSERT INTO [armyrank]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [whois], [edureducerate], [researchreducerate], [eduduty], [researchduty], [eduduty1], [researchduty1]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @whois, @edureducerate, @researchreducerate, @eduduty, @researchduty, @eduduty1, @researchduty1)
END
-----------------end armyrank_insert--------------------
GO

-----------------begin armyrank_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_armyrank_update')
    DROP PROCEDURE [gen_armyrank_update]
GO 
CREATE PROCEDURE [gen_armyrank_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @whois varchar(64), @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @eduduty1 int, @researchduty1 int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [armyrank] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [whois] =@whois, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1 WHERE [code] =@Key_code
END
-----------------end armyrank_update--------------------
GO

-----------------begin armyrank_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_armyrank_delete')
    DROP PROCEDURE [gen_armyrank_delete]
GO 
CREATE PROCEDURE [gen_armyrank_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [armyrank] WHERE [code] =@code
END
-----------------end armyrank_delete--------------------
GO

-----------------begin leveltitle_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitle_insert')
    DROP PROCEDURE [gen_leveltitle_insert]
GO 
CREATE PROCEDURE [gen_leveltitle_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int,   @man int,   @whois varchar(64),   @eduduty1 int,   @researchduty1 int)
AS 
BEGIN
	INSERT INTO [leveltitle]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [edureducerate], [researchreducerate], [eduduty], [researchduty], [man], [whois], [eduduty1], [researchduty1]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @edureducerate, @researchreducerate, @eduduty, @researchduty, @man, @whois, @eduduty1, @researchduty1)
END
-----------------end leveltitle_insert--------------------
GO

-----------------begin leveltitle_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitle_update')
    DROP PROCEDURE [gen_leveltitle_update]
GO 
CREATE PROCEDURE [gen_leveltitle_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @man int, @whois varchar(64), @eduduty1 int, @researchduty1 int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [leveltitle] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty, [man] =@man, [whois] =@whois, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1 WHERE [code] =@Key_code
END
-----------------end leveltitle_update--------------------
GO

-----------------begin leveltitle_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitle_delete')
    DROP PROCEDURE [gen_leveltitle_delete]
GO 
CREATE PROCEDURE [gen_leveltitle_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [leveltitle] WHERE [code] =@code
END
-----------------end leveltitle_delete--------------------
GO

-----------------begin partyleveltitle_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_partyleveltitle_insert')
    DROP PROCEDURE [gen_partyleveltitle_insert]
GO 
CREATE PROCEDURE [gen_partyleveltitle_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @man int,   @whois varchar(64),   @eduduty1 int,   @researchduty1 int,   @edureducerate int,   @researchreducerate int,   @eduduty int,   @researchduty int)
AS 
BEGIN
	INSERT INTO [partyleveltitle]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [man], [whois], [eduduty1], [researchduty1], [edureducerate], [researchreducerate], [eduduty], [researchduty]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @man, @whois, @eduduty1, @researchduty1, @edureducerate, @researchreducerate, @eduduty, @researchduty)
END
-----------------end partyleveltitle_insert--------------------
GO

-----------------begin partyleveltitle_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_partyleveltitle_update')
    DROP PROCEDURE [gen_partyleveltitle_update]
GO 
CREATE PROCEDURE [gen_partyleveltitle_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @man int, @whois varchar(64), @eduduty1 int, @researchduty1 int, @edureducerate int, @researchreducerate int, @eduduty int, @researchduty int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [partyleveltitle] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [man] =@man, [whois] =@whois, [eduduty1] =@eduduty1, [researchduty1] =@researchduty1, [edureducerate] =@edureducerate, [researchreducerate] =@researchreducerate, [eduduty] =@eduduty, [researchduty] =@researchduty WHERE [code] =@Key_code
END
-----------------end partyleveltitle_update--------------------
GO

-----------------begin partyleveltitle_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_partyleveltitle_delete')
    DROP PROCEDURE [gen_partyleveltitle_delete]
GO 
CREATE PROCEDURE [gen_partyleveltitle_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [partyleveltitle] WHERE [code] =@code
END
-----------------end partyleveltitle_delete--------------------
GO

-----------------begin staffstatus_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffstatus_insert')
    DROP PROCEDURE [gen_staffstatus_insert]
GO 
CREATE PROCEDURE [gen_staffstatus_insert](  @code varchar(10),   @codeview nvarchar(50),   @name nvarchar(1000),   @edittime Datetime,   @edituser varchar(20),   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @isstaff int,   @theorder int)
AS 
BEGIN
	INSERT INTO [staffstatus]([code], [codeview], [name], [edittime], [edituser], [lock], [lockdate], [whois], [isstaff], [theorder]) VALUES(@code, @codeview, @name, @edittime, @edituser, @lock, @lockdate, @whois, @isstaff, @theorder)
END
-----------------end staffstatus_insert--------------------
GO

-----------------begin staffstatus_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffstatus_update')
    DROP PROCEDURE [gen_staffstatus_update]
GO 
CREATE PROCEDURE [gen_staffstatus_update](@code varchar(10), @codeview nvarchar(50), @name nvarchar(1000), @edittime Datetime, @edituser varchar(20), @lock smallint, @lockdate datetime, @whois varchar(64), @isstaff int, @theorder int, @Key_code varchar(10))
AS 
BEGIN
	UPDATE [staffstatus] SET [code] =@code, [codeview] =@codeview, [name] =@name, [edittime] =@edittime, [edituser] =@edituser, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [isstaff] =@isstaff, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end staffstatus_update--------------------
GO

-----------------begin staffstatus_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffstatus_delete')
    DROP PROCEDURE [gen_staffstatus_delete]
GO 
CREATE PROCEDURE [gen_staffstatus_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [staffstatus] WHERE [code] =@code
END
-----------------end staffstatus_delete--------------------
GO

-----------------begin department_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_department_insert')
    DROP PROCEDURE [gen_department_insert]
GO 
CREATE PROCEDURE [gen_department_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @parentcode varchar(10),   @comparelevel int,   @theorder int,   @phone nvarchar(50),   @email nvarchar(100),   @whois varchar(64),   @amount int,   @description nvarchar(max),   @universitycode varchar(10),   @originalcode varchar(10),   @extensioncode varchar(120),   @levelextension int,   @managelevelcode varchar(10),   @address nvarchar(1000),   @regioncode varchar(10),   @foundeddate datetime,   @foundeddateshow varchar(20),   @syscomponentcode varchar(10),   @partneronly int)
AS 
BEGIN
	INSERT INTO [department]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [parentcode], [comparelevel], [theorder], [phone], [email], [whois], [amount], [description], [universitycode], [originalcode], [extensioncode], [levelextension], [managelevelcode], [address], [regioncode], [foundeddate], [foundeddateshow], [syscomponentcode], [partneronly]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @parentcode, @comparelevel, @theorder, @phone, @email, @whois, @amount, @description, @universitycode, @originalcode, @extensioncode, @levelextension, @managelevelcode, @address, @regioncode, @foundeddate, @foundeddateshow, @syscomponentcode, @partneronly)
END
-----------------end department_insert--------------------
GO

-----------------begin department_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_department_update')
    DROP PROCEDURE [gen_department_update]
GO 
CREATE PROCEDURE [gen_department_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @parentcode varchar(10), @comparelevel int, @theorder int, @phone nvarchar(50), @email nvarchar(100), @whois varchar(64), @amount int, @description nvarchar(max), @universitycode varchar(10), @originalcode varchar(10), @extensioncode varchar(120), @levelextension int, @managelevelcode varchar(10), @address nvarchar(1000), @regioncode varchar(10), @foundeddate datetime, @foundeddateshow varchar(20), @syscomponentcode varchar(10), @partneronly int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [department] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [parentcode] =@parentcode, [comparelevel] =@comparelevel, [theorder] =@theorder, [phone] =@phone, [email] =@email, [whois] =@whois, [amount] =@amount, [description] =@description, [universitycode] =@universitycode, [originalcode] =@originalcode, [extensioncode] =@extensioncode, [levelextension] =@levelextension, [managelevelcode] =@managelevelcode, [address] =@address, [regioncode] =@regioncode, [foundeddate] =@foundeddate, [foundeddateshow] =@foundeddateshow, [syscomponentcode] =@syscomponentcode, [partneronly] =@partneronly WHERE [code] =@Key_code
END
-----------------end department_update--------------------
GO

-----------------begin department_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_department_delete')
    DROP PROCEDURE [gen_department_delete]
GO 
CREATE PROCEDURE [gen_department_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [department] WHERE [code] =@code
END
-----------------end department_delete--------------------
GO

-----------------begin staff_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staff_insert')
    DROP PROCEDURE [gen_staff_insert]
GO 
CREATE PROCEDURE [gen_staff_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(MAX),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @birthday datetime,   @address nvarchar(400),   @academictitlecode Varchar(10),   @degreecode Varchar(10),   @leveltitlecode Varchar(10),   @departmentcode Varchar(10),   @armyrankcode varchar(10),   @partyleveltitlecode Varchar(10),   @mobiphone Varchar(20),   @tel Varchar(20),   @userpassword Varchar(100),   @photo nvarchar(200),   @manager int,   @email nvarchar(100),   @changepass smallint,   @academiclevelcode varchar(10),   @staffstatuscode varchar(10),   @provincecode varchar(10),   @districtcode varchar(10),   @towncode varchar(10),   @internalemail nvarchar(100),   @whois varchar(64),   @sex int,   @ethniccode varchar(10),   @religioncode varchar(10),   @hometown nvarchar(500),   @username nvarchar(100),   @universitycode varchar(10),   @civilid varchar(50),   @extensioncode varchar(200))
AS 
BEGIN
	INSERT INTO [staff]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [birthday], [address], [academictitlecode], [degreecode], [leveltitlecode], [departmentcode], [armyrankcode], [partyleveltitlecode], [mobiphone], [tel], [userpassword], [photo], [manager], [email], [changepass], [academiclevelcode], [staffstatuscode], [provincecode], [districtcode], [towncode], [internalemail], [whois], [sex], [ethniccode], [religioncode], [hometown], [username], [universitycode], [civilid], [extensioncode]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @birthday, @address, @academictitlecode, @degreecode, @leveltitlecode, @departmentcode, @armyrankcode, @partyleveltitlecode, @mobiphone, @tel, @userpassword, @photo, @manager, @email, @changepass, @academiclevelcode, @staffstatuscode, @provincecode, @districtcode, @towncode, @internalemail, @whois, @sex, @ethniccode, @religioncode, @hometown, @username, @universitycode, @civilid, @extensioncode)
END
-----------------end staff_insert--------------------
GO

-----------------begin staff_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staff_update')
    DROP PROCEDURE [gen_staff_update]
GO 
CREATE PROCEDURE [gen_staff_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(MAX), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @birthday datetime, @address nvarchar(400), @academictitlecode Varchar(10), @degreecode Varchar(10), @leveltitlecode Varchar(10), @departmentcode Varchar(10), @armyrankcode varchar(10), @partyleveltitlecode Varchar(10), @mobiphone Varchar(20), @tel Varchar(20), @userpassword Varchar(100), @photo nvarchar(200), @manager int, @email nvarchar(100), @changepass smallint, @academiclevelcode varchar(10), @staffstatuscode varchar(10), @provincecode varchar(10), @districtcode varchar(10), @towncode varchar(10), @internalemail nvarchar(100), @whois varchar(64), @sex int, @ethniccode varchar(10), @religioncode varchar(10), @hometown nvarchar(500), @username nvarchar(100), @universitycode varchar(10), @civilid varchar(50), @extensioncode varchar(200), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [staff] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [birthday] =@birthday, [address] =@address, [academictitlecode] =@academictitlecode, [degreecode] =@degreecode, [leveltitlecode] =@leveltitlecode, [departmentcode] =@departmentcode, [armyrankcode] =@armyrankcode, [partyleveltitlecode] =@partyleveltitlecode, [mobiphone] =@mobiphone, [tel] =@tel, [userpassword] =@userpassword, [photo] =@photo, [manager] =@manager, [email] =@email, [changepass] =@changepass, [academiclevelcode] =@academiclevelcode, [staffstatuscode] =@staffstatuscode, [provincecode] =@provincecode, [districtcode] =@districtcode, [towncode] =@towncode, [internalemail] =@internalemail, [whois] =@whois, [sex] =@sex, [ethniccode] =@ethniccode, [religioncode] =@religioncode, [hometown] =@hometown, [username] =@username, [universitycode] =@universitycode, [civilid] =@civilid, [extensioncode] =@extensioncode WHERE [code] =@Key_code
END
-----------------end staff_update--------------------
GO

-----------------begin staff_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staff_delete')
    DROP PROCEDURE [gen_staff_delete]
GO 
CREATE PROCEDURE [gen_staff_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [staff] WHERE [code] =@code
END
-----------------end staff_delete--------------------
GO

