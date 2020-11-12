
-----------------begin university_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_university_insert')
    DROP PROCEDURE [gen_university_insert]
GO 
CREATE PROCEDURE [gen_university_insert](  @code Varchar(10),   @codeview nvarchar(50),   @name nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @rectorcode varchar(10),   @rectorname nvarchar(100),   @address nvarchar(100),   @phone varchar(50),   @email nvarchar(50),   @website nvarchar(100),   @admincode varchar(10))
AS 
BEGIN
	INSERT INTO [university]([code], [codeview], [name], [edituser], [edittime], [lock], [lockdate], [rectorcode], [rectorname], [address], [phone], [email], [website], [admincode]) VALUES(@code, @codeview, @name, @edituser, @edittime, @lock, @lockdate, @rectorcode, @rectorname, @address, @phone, @email, @website, @admincode)
END
-----------------end university_insert--------------------
GO

-----------------begin university_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_university_update')
    DROP PROCEDURE [gen_university_update]
GO 
CREATE PROCEDURE [gen_university_update](@code Varchar(10), @codeview nvarchar(50), @name nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @rectorcode varchar(10), @rectorname nvarchar(100), @address nvarchar(100), @phone varchar(50), @email nvarchar(50), @website nvarchar(100), @admincode varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [university] SET [code] =@code, [codeview] =@codeview, [name] =@name, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [rectorcode] =@rectorcode, [rectorname] =@rectorname, [address] =@address, [phone] =@phone, [email] =@email, [website] =@website, [admincode] =@admincode WHERE [code] =@Key_code
END
-----------------end university_update--------------------
GO

-----------------begin university_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_university_delete')
    DROP PROCEDURE [gen_university_delete]
GO 
CREATE PROCEDURE [gen_university_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [university] WHERE [code] =@code
END
-----------------end university_delete--------------------
GO

-----------------begin systemparameter_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_systemparameter_insert')
    DROP PROCEDURE [gen_systemparameter_insert]
GO 
CREATE PROCEDURE [gen_systemparameter_insert](  @code Varchar(10),   @codeview varchar(50),   @name nvarchar(200),   @note nvarchar(1000),   @value nvarchar(500),   @thetype nvarchar(100),   @active int,   @theorder int,   @universitycode varchar(10),   @languagecode varchar(10))
AS 
BEGIN
	INSERT INTO [systemparameter]([code], [codeview], [name], [note], [value], [thetype], [active], [theorder], [universitycode], [languagecode]) VALUES(@code, @codeview, @name, @note, @value, @thetype, @active, @theorder, @universitycode, @languagecode)
END
-----------------end systemparameter_insert--------------------
GO

-----------------begin systemparameter_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_systemparameter_update')
    DROP PROCEDURE [gen_systemparameter_update]
GO 
CREATE PROCEDURE [gen_systemparameter_update](@code Varchar(10), @codeview varchar(50), @name nvarchar(200), @note nvarchar(1000), @value nvarchar(500), @thetype nvarchar(100), @active int, @theorder int, @universitycode varchar(10), @languagecode varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [systemparameter] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [value] =@value, [thetype] =@thetype, [active] =@active, [theorder] =@theorder, [universitycode] =@universitycode, [languagecode] =@languagecode WHERE [code] =@Key_code
END
-----------------end systemparameter_update--------------------
GO

-----------------begin systemparameter_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_systemparameter_delete')
    DROP PROCEDURE [gen_systemparameter_delete]
GO 
CREATE PROCEDURE [gen_systemparameter_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [systemparameter] WHERE [code] =@code
END
-----------------end systemparameter_delete--------------------
GO

-----------------begin personalparameter_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_personalparameter_insert')
    DROP PROCEDURE [gen_personalparameter_insert]
GO 
CREATE PROCEDURE [gen_personalparameter_insert](  @staffcode Varchar(10),   @thetypecode varchar(50),   @thevalue nvarchar(200),   @datatype nvarchar(50))
AS 
BEGIN
	INSERT INTO [personalparameter]([staffcode], [thetypecode], [thevalue], [datatype]) VALUES(@staffcode, @thetypecode, @thevalue, @datatype)
END
-----------------end personalparameter_insert--------------------
GO

-----------------begin personalparameter_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_personalparameter_update')
    DROP PROCEDURE [gen_personalparameter_update]
GO 
CREATE PROCEDURE [gen_personalparameter_update](@staffcode Varchar(10), @thetypecode varchar(50), @thevalue nvarchar(200), @datatype nvarchar(50), @Key_staffcode Varchar(10), @Key_thetypecode varchar(50))
AS 
BEGIN
	UPDATE [personalparameter] SET [staffcode] =@staffcode, [thetypecode] =@thetypecode, [thevalue] =@thevalue, [datatype] =@datatype WHERE [staffcode] =@Key_staffcode AND [thetypecode] =@Key_thetypecode
END
-----------------end personalparameter_update--------------------
GO

-----------------begin personalparameter_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_personalparameter_delete')
    DROP PROCEDURE [gen_personalparameter_delete]
GO 
CREATE PROCEDURE [gen_personalparameter_delete](  @staffcode Varchar(10),   @thetypecode varchar(50))
AS 
BEGIN
	DELETE FROM [personalparameter] WHERE [staffcode] =@staffcode AND [thetypecode] =@thetypecode
END
-----------------end personalparameter_delete--------------------
GO

-----------------begin logme_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logme_insert')
    DROP PROCEDURE [gen_logme_insert]
GO 
CREATE PROCEDURE [gen_logme_insert](  @code Varchar(20),   @staffcode Varchar(10),   @staffname nvarchar(100),   @createtime datetime,   @tablename nvarchar(100),   @action varchar(10),   @recordcode varchar(50),   @note nvarchar(1000),   @ip varchar(64),   @computername nvarchar(100),   @webbrowser nvarchar(100),   @endtime datetime,   @OS nvarchar(500),   @sessioncode varchar(20),   @urlshort nvarchar(1000),   @urlname nvarchar(1000),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [logme]([code], [staffcode], [staffname], [createtime], [tablename], [action], [recordcode], [note], [ip], [computername], [webbrowser], [endtime], [OS], [sessioncode], [urlshort], [urlname], [universitycode]) VALUES(@code, @staffcode, @staffname, @createtime, @tablename, @action, @recordcode, @note, @ip, @computername, @webbrowser, @endtime, @OS, @sessioncode, @urlshort, @urlname, @universitycode)
END
-----------------end logme_insert--------------------
GO

-----------------begin logme_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logme_update')
    DROP PROCEDURE [gen_logme_update]
GO 
CREATE PROCEDURE [gen_logme_update](@code Varchar(20), @staffcode Varchar(10), @staffname nvarchar(100), @createtime datetime, @tablename nvarchar(100), @action varchar(10), @recordcode varchar(50), @note nvarchar(1000), @ip varchar(64), @computername nvarchar(100), @webbrowser nvarchar(100), @endtime datetime, @OS nvarchar(500), @sessioncode varchar(20), @urlshort nvarchar(1000), @urlname nvarchar(1000), @universitycode varchar(10), @Key_code Varchar(20))
AS 
BEGIN
	UPDATE [logme] SET [code] =@code, [staffcode] =@staffcode, [staffname] =@staffname, [createtime] =@createtime, [tablename] =@tablename, [action] =@action, [recordcode] =@recordcode, [note] =@note, [ip] =@ip, [computername] =@computername, [webbrowser] =@webbrowser, [endtime] =@endtime, [OS] =@OS, [sessioncode] =@sessioncode, [urlshort] =@urlshort, [urlname] =@urlname, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end logme_update--------------------
GO

-----------------begin logme_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logme_delete')
    DROP PROCEDURE [gen_logme_delete]
GO 
CREATE PROCEDURE [gen_logme_delete](  @code Varchar(20))
AS 
BEGIN
	DELETE FROM [logme] WHERE [code] =@code
END
-----------------end logme_delete--------------------
GO

-----------------begin logerror_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logerror_insert')
    DROP PROCEDURE [gen_logerror_insert]
GO 
CREATE PROCEDURE [gen_logerror_insert](  @code Varchar(20),   @staffcode Varchar(10),   @staffname nvarchar(100),   @createtime datetime,   @tablename nvarchar(100),   @action varchar(10),   @recordcode varchar(50),   @note nvarchar(1000),   @ip varchar(64),   @computername nvarchar(100),   @webbrowser nvarchar(100),   @endtime datetime,   @OS nvarchar(500),   @sessioncode varchar(20),   @urlshort nvarchar(1000),   @urlname nvarchar(1000),   @universitycode varchar(10),   @mes nvarchar(max),   @func nvarchar(200))
AS 
BEGIN
	INSERT INTO [logerror]([code], [staffcode], [staffname], [createtime], [tablename], [action], [recordcode], [note], [ip], [computername], [webbrowser], [endtime], [OS], [sessioncode], [urlshort], [urlname], [universitycode], [mes], [func]) VALUES(@code, @staffcode, @staffname, @createtime, @tablename, @action, @recordcode, @note, @ip, @computername, @webbrowser, @endtime, @OS, @sessioncode, @urlshort, @urlname, @universitycode, @mes, @func)
END
-----------------end logerror_insert--------------------
GO

-----------------begin logerror_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logerror_update')
    DROP PROCEDURE [gen_logerror_update]
GO 
CREATE PROCEDURE [gen_logerror_update](@code Varchar(20), @staffcode Varchar(10), @staffname nvarchar(100), @createtime datetime, @tablename nvarchar(100), @action varchar(10), @recordcode varchar(50), @note nvarchar(1000), @ip varchar(64), @computername nvarchar(100), @webbrowser nvarchar(100), @endtime datetime, @OS nvarchar(500), @sessioncode varchar(20), @urlshort nvarchar(1000), @urlname nvarchar(1000), @universitycode varchar(10), @mes nvarchar(max), @func nvarchar(200), @Key_code Varchar(20))
AS 
BEGIN
	UPDATE [logerror] SET [code] =@code, [staffcode] =@staffcode, [staffname] =@staffname, [createtime] =@createtime, [tablename] =@tablename, [action] =@action, [recordcode] =@recordcode, [note] =@note, [ip] =@ip, [computername] =@computername, [webbrowser] =@webbrowser, [endtime] =@endtime, [OS] =@OS, [sessioncode] =@sessioncode, [urlshort] =@urlshort, [urlname] =@urlname, [universitycode] =@universitycode, [mes] =@mes, [func] =@func WHERE [code] =@Key_code
END
-----------------end logerror_update--------------------
GO

-----------------begin logerror_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logerror_delete')
    DROP PROCEDURE [gen_logerror_delete]
GO 
CREATE PROCEDURE [gen_logerror_delete](  @code Varchar(20))
AS 
BEGIN
	DELETE FROM [logerror] WHERE [code] =@code
END
-----------------end logerror_delete--------------------
GO

-----------------begin logresetpassword_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logresetpassword_insert')
    DROP PROCEDURE [gen_logresetpassword_insert]
GO 
CREATE PROCEDURE [gen_logresetpassword_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(2000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @requirestaff varchar(10),   @password varchar(100),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [logresetpassword]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [requirestaff], [password], [universitycode]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @requirestaff, @password, @universitycode)
END
-----------------end logresetpassword_insert--------------------
GO

-----------------begin logresetpassword_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logresetpassword_update')
    DROP PROCEDURE [gen_logresetpassword_update]
GO 
CREATE PROCEDURE [gen_logresetpassword_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(2000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @requirestaff varchar(10), @password varchar(100), @universitycode varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [logresetpassword] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [requirestaff] =@requirestaff, [password] =@password, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end logresetpassword_update--------------------
GO

-----------------begin logresetpassword_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_logresetpassword_delete')
    DROP PROCEDURE [gen_logresetpassword_delete]
GO 
CREATE PROCEDURE [gen_logresetpassword_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [logresetpassword] WHERE [code] =@code
END
-----------------end logresetpassword_delete--------------------
GO

-----------------begin syscomponent_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_syscomponent_insert')
    DROP PROCEDURE [gen_syscomponent_insert]
GO 
CREATE PROCEDURE [gen_syscomponent_insert](  @code varchar(10),   @description nvarchar(800),   @showauth int,   @name nvarchar(100),   @lock int,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [syscomponent]([code], [description], [showauth], [name], [lock], [whois], [universitycode]) VALUES(@code, @description, @showauth, @name, @lock, @whois, @universitycode)
END
-----------------end syscomponent_insert--------------------
GO

-----------------begin syscomponent_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_syscomponent_update')
    DROP PROCEDURE [gen_syscomponent_update]
GO 
CREATE PROCEDURE [gen_syscomponent_update](@code varchar(10), @description nvarchar(800), @showauth int, @name nvarchar(100), @lock int, @whois varchar(64), @universitycode varchar(10), @Key_code varchar(10))
AS 
BEGIN
	UPDATE [syscomponent] SET [code] =@code, [description] =@description, [showauth] =@showauth, [name] =@name, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end syscomponent_update--------------------
GO

-----------------begin syscomponent_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_syscomponent_delete')
    DROP PROCEDURE [gen_syscomponent_delete]
GO 
CREATE PROCEDURE [gen_syscomponent_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [syscomponent] WHERE [code] =@code
END
-----------------end syscomponent_delete--------------------
GO

-----------------begin groupname_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_groupname_insert')
    DROP PROCEDURE [gen_groupname_insert]
GO 
CREATE PROCEDURE [gen_groupname_insert](  @code varchar(10),   @description nvarchar(800),   @showauth int,   @name nvarchar(100),   @lock int,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [groupname]([code], [description], [showauth], [name], [lock], [whois], [universitycode]) VALUES(@code, @description, @showauth, @name, @lock, @whois, @universitycode)
END
-----------------end groupname_insert--------------------
GO

-----------------begin groupname_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_groupname_update')
    DROP PROCEDURE [gen_groupname_update]
GO 
CREATE PROCEDURE [gen_groupname_update](@code varchar(10), @description nvarchar(800), @showauth int, @name nvarchar(100), @lock int, @whois varchar(64), @universitycode varchar(10), @Key_code varchar(10))
AS 
BEGIN
	UPDATE [groupname] SET [code] =@code, [description] =@description, [showauth] =@showauth, [name] =@name, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end groupname_update--------------------
GO

-----------------begin groupname_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_groupname_delete')
    DROP PROCEDURE [gen_groupname_delete]
GO 
CREATE PROCEDURE [gen_groupname_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [groupname] WHERE [code] =@code
END
-----------------end groupname_delete--------------------
GO

-----------------begin priority_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_priority_insert')
    DROP PROCEDURE [gen_priority_insert]
GO 
CREATE PROCEDURE [gen_priority_insert](  @code nvarchar(40),   @description nvarchar(800),   @showauth int,   @name nvarchar(100),   @lock int,   @whois varchar(64),   @groupcode varchar(10),   @syscomponentcode varchar(10),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [priority]([code], [description], [showauth], [name], [lock], [whois], [groupcode], [syscomponentcode], [universitycode]) VALUES(@code, @description, @showauth, @name, @lock, @whois, @groupcode, @syscomponentcode, @universitycode)
END
-----------------end priority_insert--------------------
GO

-----------------begin priority_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_priority_update')
    DROP PROCEDURE [gen_priority_update]
GO 
CREATE PROCEDURE [gen_priority_update](@code nvarchar(40), @description nvarchar(800), @showauth int, @name nvarchar(100), @lock int, @whois varchar(64), @groupcode varchar(10), @syscomponentcode varchar(10), @universitycode varchar(10), @Key_code nvarchar(40))
AS 
BEGIN
	UPDATE [priority] SET [code] =@code, [description] =@description, [showauth] =@showauth, [name] =@name, [lock] =@lock, [whois] =@whois, [groupcode] =@groupcode, [syscomponentcode] =@syscomponentcode, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end priority_update--------------------
GO

-----------------begin priority_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_priority_delete')
    DROP PROCEDURE [gen_priority_delete]
GO 
CREATE PROCEDURE [gen_priority_delete](  @code nvarchar(40))
AS 
BEGIN
	DELETE FROM [priority] WHERE [code] =@code
END
-----------------end priority_delete--------------------
GO

-----------------begin admingroup_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_admingroup_insert')
    DROP PROCEDURE [gen_admingroup_insert]
GO 
CREATE PROCEDURE [gen_admingroup_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [admingroup]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [universitycode]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @universitycode)
END
-----------------end admingroup_insert--------------------
GO

-----------------begin admingroup_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_admingroup_update')
    DROP PROCEDURE [gen_admingroup_update]
GO 
CREATE PROCEDURE [gen_admingroup_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @universitycode varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [admingroup] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [universitycode] =@universitycode WHERE [code] =@Key_code
END
-----------------end admingroup_update--------------------
GO

-----------------begin admingroup_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_admingroup_delete')
    DROP PROCEDURE [gen_admingroup_delete]
GO 
CREATE PROCEDURE [gen_admingroup_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [admingroup] WHERE [code] =@code
END
-----------------end admingroup_delete--------------------
GO

-----------------begin ADMINGROUPPRIORITY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINGROUPPRIORITY_insert')
    DROP PROCEDURE [gen_ADMINGROUPPRIORITY_insert]
GO 
CREATE PROCEDURE [gen_ADMINGROUPPRIORITY_insert](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @func int,   @inherit int,   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10),   @thecode varchar(10),   @extensioncode varchar(200),   @tablename varchar(50),   @syscomponentcode varchar(10))
AS 
BEGIN
	INSERT INTO [ADMINGROUPPRIORITY]([objectcode], [thetype], [prioritycode], [forman], [func], [inherit], [edituser], [edittime], [lock], [whois], [universitycode], [thecode], [extensioncode], [tablename], [syscomponentcode]) VALUES(@objectcode, @thetype, @prioritycode, @forman, @func, @inherit, @edituser, @edittime, @lock, @whois, @universitycode, @thecode, @extensioncode, @tablename, @syscomponentcode)
END
-----------------end ADMINGROUPPRIORITY_insert--------------------
GO

-----------------begin ADMINGROUPPRIORITY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINGROUPPRIORITY_update')
    DROP PROCEDURE [gen_ADMINGROUPPRIORITY_update]
GO 
CREATE PROCEDURE [gen_ADMINGROUPPRIORITY_update](@objectcode varchar(10), @thetype varchar(50), @prioritycode nvarchar(40), @forman int, @func int, @inherit int, @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @thecode varchar(10), @extensioncode varchar(200), @tablename varchar(50), @syscomponentcode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_prioritycode nvarchar(40), @Key_forman int, @Key_thecode varchar(10), @Key_tablename varchar(50))
AS 
BEGIN
	UPDATE [ADMINGROUPPRIORITY] SET [objectcode] =@objectcode, [thetype] =@thetype, [prioritycode] =@prioritycode, [forman] =@forman, [func] =@func, [inherit] =@inherit, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode, [thecode] =@thecode, [extensioncode] =@extensioncode, [tablename] =@tablename, [syscomponentcode] =@syscomponentcode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [prioritycode] =@Key_prioritycode AND [forman] =@Key_forman AND [thecode] =@Key_thecode AND [tablename] =@Key_tablename
END
-----------------end ADMINGROUPPRIORITY_update--------------------
GO

-----------------begin ADMINGROUPPRIORITY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINGROUPPRIORITY_delete')
    DROP PROCEDURE [gen_ADMINGROUPPRIORITY_delete]
GO 
CREATE PROCEDURE [gen_ADMINGROUPPRIORITY_delete](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @thecode varchar(10),   @tablename varchar(50))
AS 
BEGIN
	DELETE FROM [ADMINGROUPPRIORITY] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [prioritycode] =@prioritycode AND [forman] =@forman AND [thecode] =@thecode AND [tablename] =@tablename
END
-----------------end ADMINGROUPPRIORITY_delete--------------------
GO

-----------------begin staffadmingroup_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffadmingroup_insert')
    DROP PROCEDURE [gen_staffadmingroup_insert]
GO 
CREATE PROCEDURE [gen_staffadmingroup_insert](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64))
AS 
BEGIN
	INSERT INTO [staffadmingroup]([objectcode], [thetype], [admingroupcode], [edituser], [edittime], [lock], [whois]) VALUES(@objectcode, @thetype, @admingroupcode, @edituser, @edittime, @lock, @whois)
END
-----------------end staffadmingroup_insert--------------------
GO

-----------------begin staffadmingroup_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffadmingroup_update')
    DROP PROCEDURE [gen_staffadmingroup_update]
GO 
CREATE PROCEDURE [gen_staffadmingroup_update](@objectcode varchar(10), @thetype varchar(50), @admingroupcode nvarchar(40), @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_admingroupcode nvarchar(40))
AS 
BEGIN
	UPDATE [staffadmingroup] SET [objectcode] =@objectcode, [thetype] =@thetype, [admingroupcode] =@admingroupcode, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [admingroupcode] =@Key_admingroupcode
END
-----------------end staffadmingroup_update--------------------
GO

-----------------begin staffadmingroup_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_staffadmingroup_delete')
    DROP PROCEDURE [gen_staffadmingroup_delete]
GO 
CREATE PROCEDURE [gen_staffadmingroup_delete](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40))
AS 
BEGIN
	DELETE FROM [staffadmingroup] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [admingroupcode] =@admingroupcode
END
-----------------end staffadmingroup_delete--------------------
GO

-----------------begin STAFFPRIORITY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STAFFPRIORITY_insert')
    DROP PROCEDURE [gen_STAFFPRIORITY_insert]
GO 
CREATE PROCEDURE [gen_STAFFPRIORITY_insert](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @func int,   @thecode varchar(10),   @extensioncode varchar(200),   @tablename varchar(50),   @inherit int,   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10),   @syscomponentcode varchar(10))
AS 
BEGIN
	INSERT INTO [STAFFPRIORITY]([objectcode], [thetype], [prioritycode], [forman], [func], [thecode], [extensioncode], [tablename], [inherit], [edituser], [edittime], [lock], [whois], [universitycode], [syscomponentcode]) VALUES(@objectcode, @thetype, @prioritycode, @forman, @func, @thecode, @extensioncode, @tablename, @inherit, @edituser, @edittime, @lock, @whois, @universitycode, @syscomponentcode)
END
-----------------end STAFFPRIORITY_insert--------------------
GO

-----------------begin STAFFPRIORITY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STAFFPRIORITY_update')
    DROP PROCEDURE [gen_STAFFPRIORITY_update]
GO 
CREATE PROCEDURE [gen_STAFFPRIORITY_update](@objectcode varchar(10), @thetype varchar(50), @prioritycode nvarchar(40), @forman int, @func int, @thecode varchar(10), @extensioncode varchar(200), @tablename varchar(50), @inherit int, @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @syscomponentcode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_prioritycode nvarchar(40), @Key_forman int, @Key_thecode varchar(10), @Key_tablename varchar(50))
AS 
BEGIN
	UPDATE [STAFFPRIORITY] SET [objectcode] =@objectcode, [thetype] =@thetype, [prioritycode] =@prioritycode, [forman] =@forman, [func] =@func, [thecode] =@thecode, [extensioncode] =@extensioncode, [tablename] =@tablename, [inherit] =@inherit, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode, [syscomponentcode] =@syscomponentcode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [prioritycode] =@Key_prioritycode AND [forman] =@Key_forman AND [thecode] =@Key_thecode AND [tablename] =@Key_tablename
END
-----------------end STAFFPRIORITY_update--------------------
GO

-----------------begin STAFFPRIORITY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STAFFPRIORITY_delete')
    DROP PROCEDURE [gen_STAFFPRIORITY_delete]
GO 
CREATE PROCEDURE [gen_STAFFPRIORITY_delete](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @thecode varchar(10),   @tablename varchar(50))
AS 
BEGIN
	DELETE FROM [STAFFPRIORITY] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [prioritycode] =@prioritycode AND [forman] =@forman AND [thecode] =@thecode AND [tablename] =@tablename
END
-----------------end STAFFPRIORITY_delete--------------------
GO

-----------------begin DEPARTMENTPRIORITY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENTPRIORITY_insert')
    DROP PROCEDURE [gen_DEPARTMENTPRIORITY_insert]
GO 
CREATE PROCEDURE [gen_DEPARTMENTPRIORITY_insert](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @func int,   @thecode varchar(10),   @extensioncode varchar(200),   @tablename varchar(50),   @inherit int,   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [DEPARTMENTPRIORITY]([objectcode], [thetype], [prioritycode], [forman], [func], [thecode], [extensioncode], [tablename], [inherit], [edituser], [edittime], [lock], [whois], [universitycode]) VALUES(@objectcode, @thetype, @prioritycode, @forman, @func, @thecode, @extensioncode, @tablename, @inherit, @edituser, @edittime, @lock, @whois, @universitycode)
END
-----------------end DEPARTMENTPRIORITY_insert--------------------
GO

-----------------begin DEPARTMENTPRIORITY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENTPRIORITY_update')
    DROP PROCEDURE [gen_DEPARTMENTPRIORITY_update]
GO 
CREATE PROCEDURE [gen_DEPARTMENTPRIORITY_update](@objectcode varchar(10), @thetype varchar(50), @prioritycode nvarchar(40), @forman int, @func int, @thecode varchar(10), @extensioncode varchar(200), @tablename varchar(50), @inherit int, @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_prioritycode nvarchar(40), @Key_forman int, @Key_thecode varchar(10), @Key_tablename varchar(50))
AS 
BEGIN
	UPDATE [DEPARTMENTPRIORITY] SET [objectcode] =@objectcode, [thetype] =@thetype, [prioritycode] =@prioritycode, [forman] =@forman, [func] =@func, [thecode] =@thecode, [extensioncode] =@extensioncode, [tablename] =@tablename, [inherit] =@inherit, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [prioritycode] =@Key_prioritycode AND [forman] =@Key_forman AND [thecode] =@Key_thecode AND [tablename] =@Key_tablename
END
-----------------end DEPARTMENTPRIORITY_update--------------------
GO

-----------------begin DEPARTMENTPRIORITY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENTPRIORITY_delete')
    DROP PROCEDURE [gen_DEPARTMENTPRIORITY_delete]
GO 
CREATE PROCEDURE [gen_DEPARTMENTPRIORITY_delete](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @thecode varchar(10),   @tablename varchar(50))
AS 
BEGIN
	DELETE FROM [DEPARTMENTPRIORITY] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [prioritycode] =@prioritycode AND [forman] =@forman AND [thecode] =@thecode AND [tablename] =@tablename
END
-----------------end DEPARTMENTPRIORITY_delete--------------------
GO

-----------------begin LEVELTITLEPRIORITY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LEVELTITLEPRIORITY_insert')
    DROP PROCEDURE [gen_LEVELTITLEPRIORITY_insert]
GO 
CREATE PROCEDURE [gen_LEVELTITLEPRIORITY_insert](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @func int,   @thecode varchar(10),   @extensioncode varchar(200),   @tablename varchar(50),   @inherit int,   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [LEVELTITLEPRIORITY]([objectcode], [thetype], [prioritycode], [forman], [func], [thecode], [extensioncode], [tablename], [inherit], [edituser], [edittime], [lock], [whois], [universitycode]) VALUES(@objectcode, @thetype, @prioritycode, @forman, @func, @thecode, @extensioncode, @tablename, @inherit, @edituser, @edittime, @lock, @whois, @universitycode)
END
-----------------end LEVELTITLEPRIORITY_insert--------------------
GO

-----------------begin LEVELTITLEPRIORITY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LEVELTITLEPRIORITY_update')
    DROP PROCEDURE [gen_LEVELTITLEPRIORITY_update]
GO 
CREATE PROCEDURE [gen_LEVELTITLEPRIORITY_update](@objectcode varchar(10), @thetype varchar(50), @prioritycode nvarchar(40), @forman int, @func int, @thecode varchar(10), @extensioncode varchar(200), @tablename varchar(50), @inherit int, @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_prioritycode nvarchar(40), @Key_forman int, @Key_thecode varchar(10), @Key_tablename varchar(50))
AS 
BEGIN
	UPDATE [LEVELTITLEPRIORITY] SET [objectcode] =@objectcode, [thetype] =@thetype, [prioritycode] =@prioritycode, [forman] =@forman, [func] =@func, [thecode] =@thecode, [extensioncode] =@extensioncode, [tablename] =@tablename, [inherit] =@inherit, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [prioritycode] =@Key_prioritycode AND [forman] =@Key_forman AND [thecode] =@Key_thecode AND [tablename] =@Key_tablename
END
-----------------end LEVELTITLEPRIORITY_update--------------------
GO

-----------------begin LEVELTITLEPRIORITY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LEVELTITLEPRIORITY_delete')
    DROP PROCEDURE [gen_LEVELTITLEPRIORITY_delete]
GO 
CREATE PROCEDURE [gen_LEVELTITLEPRIORITY_delete](  @objectcode varchar(10),   @thetype varchar(50),   @prioritycode nvarchar(40),   @forman int,   @thecode varchar(10),   @tablename varchar(50))
AS 
BEGIN
	DELETE FROM [LEVELTITLEPRIORITY] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [prioritycode] =@prioritycode AND [forman] =@forman AND [thecode] =@thecode AND [tablename] =@tablename
END
-----------------end LEVELTITLEPRIORITY_delete--------------------
GO

-----------------begin departmentadmingroup_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_departmentadmingroup_insert')
    DROP PROCEDURE [gen_departmentadmingroup_insert]
GO 
CREATE PROCEDURE [gen_departmentadmingroup_insert](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [departmentadmingroup]([objectcode], [thetype], [admingroupcode], [edituser], [edittime], [lock], [whois], [universitycode]) VALUES(@objectcode, @thetype, @admingroupcode, @edituser, @edittime, @lock, @whois, @universitycode)
END
-----------------end departmentadmingroup_insert--------------------
GO

-----------------begin departmentadmingroup_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_departmentadmingroup_update')
    DROP PROCEDURE [gen_departmentadmingroup_update]
GO 
CREATE PROCEDURE [gen_departmentadmingroup_update](@objectcode varchar(10), @thetype varchar(50), @admingroupcode nvarchar(40), @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_admingroupcode nvarchar(40))
AS 
BEGIN
	UPDATE [departmentadmingroup] SET [objectcode] =@objectcode, [thetype] =@thetype, [admingroupcode] =@admingroupcode, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [admingroupcode] =@Key_admingroupcode
END
-----------------end departmentadmingroup_update--------------------
GO

-----------------begin departmentadmingroup_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_departmentadmingroup_delete')
    DROP PROCEDURE [gen_departmentadmingroup_delete]
GO 
CREATE PROCEDURE [gen_departmentadmingroup_delete](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40))
AS 
BEGIN
	DELETE FROM [departmentadmingroup] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [admingroupcode] =@admingroupcode
END
-----------------end departmentadmingroup_delete--------------------
GO

-----------------begin leveltitleadmingroup_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitleadmingroup_insert')
    DROP PROCEDURE [gen_leveltitleadmingroup_insert]
GO 
CREATE PROCEDURE [gen_leveltitleadmingroup_insert](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @whois varchar(64),   @universitycode varchar(10))
AS 
BEGIN
	INSERT INTO [leveltitleadmingroup]([objectcode], [thetype], [admingroupcode], [edituser], [edittime], [lock], [whois], [universitycode]) VALUES(@objectcode, @thetype, @admingroupcode, @edituser, @edittime, @lock, @whois, @universitycode)
END
-----------------end leveltitleadmingroup_insert--------------------
GO

-----------------begin leveltitleadmingroup_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitleadmingroup_update')
    DROP PROCEDURE [gen_leveltitleadmingroup_update]
GO 
CREATE PROCEDURE [gen_leveltitleadmingroup_update](@objectcode varchar(10), @thetype varchar(50), @admingroupcode nvarchar(40), @edituser Varchar(20), @edittime Datetime, @lock smallint, @whois varchar(64), @universitycode varchar(10), @Key_objectcode varchar(10), @Key_thetype varchar(50), @Key_admingroupcode nvarchar(40))
AS 
BEGIN
	UPDATE [leveltitleadmingroup] SET [objectcode] =@objectcode, [thetype] =@thetype, [admingroupcode] =@admingroupcode, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [whois] =@whois, [universitycode] =@universitycode WHERE [objectcode] =@Key_objectcode AND [thetype] =@Key_thetype AND [admingroupcode] =@Key_admingroupcode
END
-----------------end leveltitleadmingroup_update--------------------
GO

-----------------begin leveltitleadmingroup_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_leveltitleadmingroup_delete')
    DROP PROCEDURE [gen_leveltitleadmingroup_delete]
GO 
CREATE PROCEDURE [gen_leveltitleadmingroup_delete](  @objectcode varchar(10),   @thetype varchar(50),   @admingroupcode nvarchar(40))
AS 
BEGIN
	DELETE FROM [leveltitleadmingroup] WHERE [objectcode] =@objectcode AND [thetype] =@thetype AND [admingroupcode] =@admingroupcode
END
-----------------end leveltitleadmingroup_delete--------------------
GO

-----------------begin sysmenu_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenu_insert')
    DROP PROCEDURE [gen_sysmenu_insert]
GO 
CREATE PROCEDURE [gen_sysmenu_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(max),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @parentcode varchar(10),   @theorder int,   @icon nvarchar(1000),   @link nvarchar(1000),   @prioritycode nvarchar(100),   @thetype varchar(10),   @whois varchar(64),   @universitycode varchar(10),   @img nvarchar(200),   @imgtitle nvarchar(500),   @imgnote nvarchar(max),   @glance nvarchar(max),   @extensioncode varchar(200),   @lang varchar(10))
AS 
BEGIN
	INSERT INTO [sysmenu]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [parentcode], [theorder], [icon], [link], [prioritycode], [thetype], [whois], [universitycode], [img], [imgtitle], [imgnote], [glance], [extensioncode], [lang]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @parentcode, @theorder, @icon, @link, @prioritycode, @thetype, @whois, @universitycode, @img, @imgtitle, @imgnote, @glance, @extensioncode, @lang)
END
-----------------end sysmenu_insert--------------------
GO

-----------------begin sysmenu_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenu_update')
    DROP PROCEDURE [gen_sysmenu_update]
GO 
CREATE PROCEDURE [gen_sysmenu_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(max), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @parentcode varchar(10), @theorder int, @icon nvarchar(1000), @link nvarchar(1000), @prioritycode nvarchar(100), @thetype varchar(10), @whois varchar(64), @universitycode varchar(10), @img nvarchar(200), @imgtitle nvarchar(500), @imgnote nvarchar(max), @glance nvarchar(max), @extensioncode varchar(200), @lang varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [sysmenu] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [parentcode] =@parentcode, [theorder] =@theorder, [icon] =@icon, [link] =@link, [prioritycode] =@prioritycode, [thetype] =@thetype, [whois] =@whois, [universitycode] =@universitycode, [img] =@img, [imgtitle] =@imgtitle, [imgnote] =@imgnote, [glance] =@glance, [extensioncode] =@extensioncode, [lang] =@lang WHERE [code] =@Key_code
END
-----------------end sysmenu_update--------------------
GO

-----------------begin sysmenu_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenu_delete')
    DROP PROCEDURE [gen_sysmenu_delete]
GO 
CREATE PROCEDURE [gen_sysmenu_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [sysmenu] WHERE [code] =@code
END
-----------------end sysmenu_delete--------------------
GO

-----------------begin sysmenupriority_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenupriority_insert')
    DROP PROCEDURE [gen_sysmenupriority_insert]
GO 
CREATE PROCEDURE [gen_sysmenupriority_insert](  @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @sysmenucode varchar(10),   @prioritycode nvarchar(100),   @whois varchar(64),   @extensioncode varchar(200))
AS 
BEGIN
	INSERT INTO [sysmenupriority]([edituser], [edittime], [lock], [lockdate], [sysmenucode], [prioritycode], [whois], [extensioncode]) VALUES(@edituser, @edittime, @lock, @lockdate, @sysmenucode, @prioritycode, @whois, @extensioncode)
END
-----------------end sysmenupriority_insert--------------------
GO

-----------------begin sysmenupriority_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenupriority_update')
    DROP PROCEDURE [gen_sysmenupriority_update]
GO 
CREATE PROCEDURE [gen_sysmenupriority_update](@edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @sysmenucode varchar(10), @prioritycode nvarchar(100), @whois varchar(64), @extensioncode varchar(200), @Key_sysmenucode varchar(10), @Key_prioritycode nvarchar(100))
AS 
BEGIN
	UPDATE [sysmenupriority] SET [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [sysmenucode] =@sysmenucode, [prioritycode] =@prioritycode, [whois] =@whois, [extensioncode] =@extensioncode WHERE [sysmenucode] =@Key_sysmenucode AND [prioritycode] =@Key_prioritycode
END
-----------------end sysmenupriority_update--------------------
GO

-----------------begin sysmenupriority_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_sysmenupriority_delete')
    DROP PROCEDURE [gen_sysmenupriority_delete]
GO 
CREATE PROCEDURE [gen_sysmenupriority_delete](  @sysmenucode varchar(10),   @prioritycode nvarchar(100))
AS 
BEGIN
	DELETE FROM [sysmenupriority] WHERE [sysmenucode] =@sysmenucode AND [prioritycode] =@prioritycode
END
-----------------end sysmenupriority_delete--------------------
GO

-----------------begin dayoff_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_dayoff_insert')
    DROP PROCEDURE [gen_dayoff_insert]
GO 
CREATE PROCEDURE [gen_dayoff_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @dayoff datetime,   @allyear int,   @whois varchar(64))
AS 
BEGIN
	INSERT INTO [dayoff]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [dayoff], [allyear], [whois]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @dayoff, @allyear, @whois)
END
-----------------end dayoff_insert--------------------
GO

-----------------begin dayoff_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_dayoff_update')
    DROP PROCEDURE [gen_dayoff_update]
GO 
CREATE PROCEDURE [gen_dayoff_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @dayoff datetime, @allyear int, @whois varchar(64), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [dayoff] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [dayoff] =@dayoff, [allyear] =@allyear, [whois] =@whois WHERE [code] =@Key_code
END
-----------------end dayoff_update--------------------
GO

-----------------begin dayoff_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_dayoff_delete')
    DROP PROCEDURE [gen_dayoff_delete]
GO 
CREATE PROCEDURE [gen_dayoff_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [dayoff] WHERE [code] =@code
END
-----------------end dayoff_delete--------------------
GO

-----------------begin weekday_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_weekday_insert')
    DROP PROCEDURE [gen_weekday_insert]
GO 
CREATE PROCEDURE [gen_weekday_insert](  @code Varchar(10),   @weekday int,   @name nvarchar(100),   @isoff int,   @whois varchar(64))
AS 
BEGIN
	INSERT INTO [weekday]([code], [weekday], [name], [isoff], [whois]) VALUES(@code, @weekday, @name, @isoff, @whois)
END
-----------------end weekday_insert--------------------
GO

-----------------begin weekday_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_weekday_update')
    DROP PROCEDURE [gen_weekday_update]
GO 
CREATE PROCEDURE [gen_weekday_update](@code Varchar(10), @weekday int, @name nvarchar(100), @isoff int, @whois varchar(64), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [weekday] SET [code] =@code, [weekday] =@weekday, [name] =@name, [isoff] =@isoff, [whois] =@whois WHERE [code] =@Key_code
END
-----------------end weekday_update--------------------
GO

-----------------begin weekday_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_weekday_delete')
    DROP PROCEDURE [gen_weekday_delete]
GO 
CREATE PROCEDURE [gen_weekday_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [weekday] WHERE [code] =@code
END
-----------------end weekday_delete--------------------
GO

