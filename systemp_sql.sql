-----------------begin university--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[university]') AND type in (N'U'))
DROP TABLE [dbo].[university]
GO
-------------
CREATE TABLE [university]
(
  [code] Varchar(10) NOT NULL,
  [codeview] nvarchar(50) NULL,
  [name] nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [rectorcode] varchar(10) NULL,
  [rectorname] nvarchar(100) NULL,
  [address] nvarchar(100) NULL,
  [phone] varchar(50) NULL,
  [email] nvarchar(50) NULL,
  [website] nvarchar(100) NULL,
  [admincode] varchar(10) NULL,

    CONSTRAINT [PK_university_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end university--------------------
GO


-----------------begin systemparameter--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[systemparameter]') AND type in (N'U'))
DROP TABLE [dbo].[systemparameter]
GO
-------------
CREATE TABLE [systemparameter]
(
  [code] Varchar(10) NOT NULL,
  [codeview] varchar(50) NULL,
  [name] nvarchar(200) NULL,
  [note] nvarchar(1000) NULL,
  [value] nvarchar(500) NULL,
  [thetype] nvarchar(100) NULL,
  [active] int NULL,
  [theorder] int NULL,
  [universitycode] varchar(10) NULL,
  [languagecode] varchar(10) NULL,

    CONSTRAINT [PK_systemparameter_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end systemparameter--------------------
GO


-----------------begin personalparameter--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[personalparameter]') AND type in (N'U'))
DROP TABLE [dbo].[personalparameter]
GO
-------------
CREATE TABLE [personalparameter]
(
  [staffcode] Varchar(10) NOT NULL,
  [thetypecode] varchar(50) NOT NULL,
  [thevalue] nvarchar(200) NULL,
  [datatype] nvarchar(50) NULL,

    CONSTRAINT [PK_personalparameter_MY] PRIMARY KEY CLUSTERED 
    (
        [staffcode] ASC
        ,[thetypecode] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end personalparameter--------------------
GO


-----------------begin logme--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logme]') AND type in (N'U'))
DROP TABLE [dbo].[logme]
GO
-------------
CREATE TABLE [logme]
(
  [code] Varchar(20) NOT NULL,
  [staffcode] Varchar(10) NULL,
  [staffname] nvarchar(100) NULL,
  [createtime] datetime NULL,
  [tablename] nvarchar(100) NULL,
  [action] varchar(10) NULL,
  [recordcode] varchar(50) NULL,
  [note] nvarchar(1000) NULL,
  [ip] varchar(64) NULL,
  [computername] nvarchar(100) NULL,
  [webbrowser] nvarchar(100) NULL,
  [endtime] datetime NULL,
  [OS] nvarchar(500) NULL,
  [sessioncode] varchar(20) NULL,
  [urlshort] nvarchar(1000) NULL,
  [urlname] nvarchar(1000) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_logme_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end logme--------------------
GO


-----------------begin logerror--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logerror]') AND type in (N'U'))
DROP TABLE [dbo].[logerror]
GO
-------------
CREATE TABLE [logerror]
(
  [code] Varchar(20) NOT NULL,
  [staffcode] Varchar(10) NULL,
  [staffname] nvarchar(100) NULL,
  [createtime] datetime NULL,
  [tablename] nvarchar(100) NULL,
  [action] varchar(10) NULL,
  [recordcode] varchar(50) NULL,
  [note] nvarchar(1000) NULL,
  [ip] varchar(64) NULL,
  [computername] nvarchar(100) NULL,
  [webbrowser] nvarchar(100) NULL,
  [endtime] datetime NULL,
  [OS] nvarchar(500) NULL,
  [sessioncode] varchar(20) NULL,
  [urlshort] nvarchar(1000) NULL,
  [urlname] nvarchar(1000) NULL,
  [universitycode] varchar(10) NULL,
  [mes] nvarchar(max) NULL,
  [func] nvarchar(200) NULL,

    CONSTRAINT [PK_logerror_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end logerror--------------------
GO


-----------------begin logresetpassword--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logresetpassword]') AND type in (N'U'))
DROP TABLE [dbo].[logresetpassword]
GO
-------------
CREATE TABLE [logresetpassword]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(2000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [requirestaff] varchar(10) NULL,
  [password] varchar(100) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_logresetpassword_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end logresetpassword--------------------
GO


-----------------begin syscomponent--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[syscomponent]') AND type in (N'U'))
DROP TABLE [dbo].[syscomponent]
GO
-------------
CREATE TABLE [syscomponent]
(
  [code] varchar(10) NOT NULL,
  [description] nvarchar(800) NULL,
  [showauth] int NULL,
  [name] nvarchar(100) NULL,
  [lock] int NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_syscomponent_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end syscomponent--------------------
GO


-----------------begin groupname--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groupname]') AND type in (N'U'))
DROP TABLE [dbo].[groupname]
GO
-------------
CREATE TABLE [groupname]
(
  [code] varchar(10) NOT NULL,
  [description] nvarchar(800) NULL,
  [showauth] int NULL,
  [name] nvarchar(100) NULL,
  [lock] int NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_groupname_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end groupname--------------------
GO


-----------------begin priority--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[priority]') AND type in (N'U'))
DROP TABLE [dbo].[priority]
GO
-------------
CREATE TABLE [priority]
(
  [code] nvarchar(40) NOT NULL,
  [description] nvarchar(800) NULL,
  [showauth] int NULL,
  [name] nvarchar(100) NULL,
  [lock] int NULL,
  [whois] varchar(64) NULL,
  [groupcode] varchar(10) NULL,
  [syscomponentcode] varchar(10) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_priority_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end priority--------------------
GO


-----------------begin admingroup--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admingroup]') AND type in (N'U'))
DROP TABLE [dbo].[admingroup]
GO
-------------
CREATE TABLE [admingroup]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_admingroup_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end admingroup--------------------
GO


-----------------begin ADMINGROUPPRIORITY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMINGROUPPRIORITY]') AND type in (N'U'))
DROP TABLE [dbo].[ADMINGROUPPRIORITY]
GO
-------------
CREATE TABLE [ADMINGROUPPRIORITY]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [prioritycode] nvarchar(40) NOT NULL,
  [forman] int NOT NULL,
  [func] int NULL,
  [inherit] int NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,
  [thecode] varchar(10) NOT NULL,
  [extensioncode] varchar(200) NULL,
  [tablename] varchar(50) NOT NULL,
  [syscomponentcode] varchar(10) NULL,

    CONSTRAINT [PK_ADMINGROUPPRIORITY_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[prioritycode] ASC
        ,[forman] ASC
        ,[thecode] ASC
        ,[tablename] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ADMINGROUPPRIORITY--------------------
GO


-----------------begin staffadmingroup--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[staffadmingroup]') AND type in (N'U'))
DROP TABLE [dbo].[staffadmingroup]
GO
-------------
CREATE TABLE [staffadmingroup]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [admingroupcode] nvarchar(40) NOT NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,

    CONSTRAINT [PK_staffadmingroup_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[admingroupcode] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end staffadmingroup--------------------
GO


-----------------begin STAFFPRIORITY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STAFFPRIORITY]') AND type in (N'U'))
DROP TABLE [dbo].[STAFFPRIORITY]
GO
-------------
CREATE TABLE [STAFFPRIORITY]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [prioritycode] nvarchar(40) NOT NULL,
  [forman] int NOT NULL,
  [func] int NULL,
  [thecode] varchar(10) NOT NULL,
  [extensioncode] varchar(200) NULL,
  [tablename] varchar(50) NOT NULL,
  [inherit] int NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,
  [syscomponentcode] varchar(10) NULL,

    CONSTRAINT [PK_STAFFPRIORITY_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[prioritycode] ASC
        ,[forman] ASC
        ,[thecode] ASC
        ,[tablename] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end STAFFPRIORITY--------------------
GO


-----------------begin DEPARTMENTPRIORITY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARTMENTPRIORITY]') AND type in (N'U'))
DROP TABLE [dbo].[DEPARTMENTPRIORITY]
GO
-------------
CREATE TABLE [DEPARTMENTPRIORITY]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [prioritycode] nvarchar(40) NOT NULL,
  [forman] int NOT NULL,
  [func] int NULL,
  [thecode] varchar(10) NOT NULL,
  [extensioncode] varchar(200) NULL,
  [tablename] varchar(50) NOT NULL,
  [inherit] int NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_DEPARTMENTPRIORITY_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[prioritycode] ASC
        ,[forman] ASC
        ,[thecode] ASC
        ,[tablename] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DEPARTMENTPRIORITY--------------------
GO


-----------------begin LEVELTITLEPRIORITY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEVELTITLEPRIORITY]') AND type in (N'U'))
DROP TABLE [dbo].[LEVELTITLEPRIORITY]
GO
-------------
CREATE TABLE [LEVELTITLEPRIORITY]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [prioritycode] nvarchar(40) NOT NULL,
  [forman] int NOT NULL,
  [func] int NULL,
  [thecode] varchar(10) NOT NULL,
  [extensioncode] varchar(200) NULL,
  [tablename] varchar(50) NOT NULL,
  [inherit] int NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_LEVELTITLEPRIORITY_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[prioritycode] ASC
        ,[forman] ASC
        ,[thecode] ASC
        ,[tablename] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end LEVELTITLEPRIORITY--------------------
GO


-----------------begin departmentadmingroup--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[departmentadmingroup]') AND type in (N'U'))
DROP TABLE [dbo].[departmentadmingroup]
GO
-------------
CREATE TABLE [departmentadmingroup]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [admingroupcode] nvarchar(40) NOT NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_departmentadmingroup_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[admingroupcode] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end departmentadmingroup--------------------
GO


-----------------begin leveltitleadmingroup--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[leveltitleadmingroup]') AND type in (N'U'))
DROP TABLE [dbo].[leveltitleadmingroup]
GO
-------------
CREATE TABLE [leveltitleadmingroup]
(
  [objectcode] varchar(10) NOT NULL,
  [thetype] varchar(50) NOT NULL,
  [admingroupcode] nvarchar(40) NOT NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,

    CONSTRAINT [PK_leveltitleadmingroup_MY] PRIMARY KEY CLUSTERED 
    (
        [objectcode] ASC
        ,[thetype] ASC
        ,[admingroupcode] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end leveltitleadmingroup--------------------
GO


-----------------begin sysmenu--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysmenu]') AND type in (N'U'))
DROP TABLE [dbo].[sysmenu]
GO
-------------
CREATE TABLE [sysmenu]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(max) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [parentcode] varchar(10) NULL,
  [theorder] int NULL,
  [icon] nvarchar(1000) NULL,
  [link] nvarchar(1000) NULL,
  [prioritycode] nvarchar(100) NULL,
  [thetype] varchar(10) NULL,
  [whois] varchar(64) NULL,
  [universitycode] varchar(10) NULL,
  [img] nvarchar(200) NULL,
  [imgtitle] nvarchar(500) NULL,
  [imgnote] nvarchar(max) NULL,
  [glance] nvarchar(max) NULL,
  [extensioncode] varchar(200) NULL,
  [lang] varchar(10) NULL,

    CONSTRAINT [PK_sysmenu_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end sysmenu--------------------
GO


-----------------begin sysmenupriority--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysmenupriority]') AND type in (N'U'))
DROP TABLE [dbo].[sysmenupriority]
GO
-------------
CREATE TABLE [sysmenupriority]
(
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [sysmenucode] varchar(10) NOT NULL,
  [prioritycode] nvarchar(100) NOT NULL,
  [whois] varchar(64) NULL,
  [extensioncode] varchar(200) NULL,

    CONSTRAINT [PK_sysmenupriority_MY] PRIMARY KEY CLUSTERED 
    (
        [sysmenucode] ASC
        ,[prioritycode] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end sysmenupriority--------------------
GO


-----------------begin dayoff--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dayoff]') AND type in (N'U'))
DROP TABLE [dbo].[dayoff]
GO
-------------
CREATE TABLE [dayoff]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [dayoff] datetime NULL,
  [allyear] int NULL,
  [whois] varchar(64) NULL,

    CONSTRAINT [PK_dayoff_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end dayoff--------------------
GO


-----------------begin weekday--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[weekday]') AND type in (N'U'))
DROP TABLE [dbo].[weekday]
GO
-------------
CREATE TABLE [weekday]
(
  [code] Varchar(10) NOT NULL,
  [weekday] int NULL,
  [name] nvarchar(100) NULL,
  [isoff] int NULL,
  [whois] varchar(64) NULL,

    CONSTRAINT [PK_weekday_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end weekday--------------------
GO



