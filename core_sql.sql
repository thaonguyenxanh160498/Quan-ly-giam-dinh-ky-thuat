-----------------begin managelevel--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[managelevel]') AND type in (N'U'))
DROP TABLE [dbo].[managelevel]
GO
-------------
CREATE TABLE [managelevel]
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
  [comparelevel] int NULL,
  [theorder] int NULL,
  [thetype] varchar(50) NULL,

    CONSTRAINT [PK_managelevel_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end managelevel--------------------
GO


-----------------begin region--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[region]') AND type in (N'U'))
DROP TABLE [dbo].[region]
GO
-------------
CREATE TABLE [region]
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
  [comparelevel] int NULL,
  [theorder] int NULL,
  [thetype] varchar(50) NULL,

    CONSTRAINT [PK_region_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end region--------------------
GO


-----------------begin academiclevel--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[academiclevel]') AND type in (N'U'))
DROP TABLE [dbo].[academiclevel]
GO
-------------
CREATE TABLE [academiclevel]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [whois] varchar(64) NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,

    CONSTRAINT [PK_academiclevel_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end academiclevel--------------------
GO


-----------------begin academictitle--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[academictitle]') AND type in (N'U'))
DROP TABLE [dbo].[academictitle]
GO
-------------
CREATE TABLE [academictitle]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [whois] varchar(64) NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,
  [rate] float NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,

    CONSTRAINT [PK_academictitle_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end academictitle--------------------
GO


-----------------begin degree--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[degree]') AND type in (N'U'))
DROP TABLE [dbo].[degree]
GO
-------------
CREATE TABLE [degree]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [whois] varchar(64) NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,
  [rate] float NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,

    CONSTRAINT [PK_degree_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end degree--------------------
GO


-----------------begin armyrank--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[armyrank]') AND type in (N'U'))
DROP TABLE [dbo].[armyrank]
GO
-------------
CREATE TABLE [armyrank]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [whois] varchar(64) NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,

    CONSTRAINT [PK_armyrank_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end armyrank--------------------
GO


-----------------begin leveltitle--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[leveltitle]') AND type in (N'U'))
DROP TABLE [dbo].[leveltitle]
GO
-------------
CREATE TABLE [leveltitle]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,
  [man] int NULL,
  [whois] varchar(64) NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,

    CONSTRAINT [PK_leveltitle_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end leveltitle--------------------
GO


-----------------begin partyleveltitle--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[partyleveltitle]') AND type in (N'U'))
DROP TABLE [dbo].[partyleveltitle]
GO
-------------
CREATE TABLE [partyleveltitle]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [man] int NULL,
  [whois] varchar(64) NULL,
  [eduduty1] int NULL,
  [researchduty1] int NULL,
  [edureducerate] int NULL,
  [researchreducerate] int NULL,
  [eduduty] int NULL,
  [researchduty] int NULL,

    CONSTRAINT [PK_partyleveltitle_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end partyleveltitle--------------------
GO


-----------------begin staffstatus--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[staffstatus]') AND type in (N'U'))
DROP TABLE [dbo].[staffstatus]
GO
-------------
CREATE TABLE [staffstatus]
(
  [code] varchar(10) NOT NULL,
  [codeview] nvarchar(50) NULL,
  [name] nvarchar(1000) NULL,
  [edittime] Datetime NULL,
  [edituser] varchar(20) NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [isstaff] int NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_staffstatus_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end staffstatus--------------------
GO


-----------------begin department--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
DROP TABLE [dbo].[department]
GO
-------------
CREATE TABLE [department]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [parentcode] varchar(10) NULL,
  [comparelevel] int NULL,
  [theorder] int NULL,
  [phone] nvarchar(50) NULL,
  [email] nvarchar(100) NULL,
  [whois] varchar(64) NULL,
  [amount] int NULL,
  [description] nvarchar(max) NULL,
  [universitycode] varchar(10) NULL,
  [originalcode] varchar(10) NULL,
  [extensioncode] varchar(120) NULL,
  [levelextension] int NULL,
  [managelevelcode] varchar(10) NULL,
  [address] nvarchar(1000) NULL,
  [regioncode] varchar(10) NULL,
  [foundeddate] datetime NULL,
  [foundeddateshow] varchar(20) NULL,
  [syscomponentcode] varchar(10) NULL,
  [partneronly] int NULL,

    CONSTRAINT [PK_department_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end department--------------------
GO


-----------------begin staff--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[staff]') AND type in (N'U'))
DROP TABLE [dbo].[staff]
GO
-------------
CREATE TABLE [staff]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(MAX) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [birthday] datetime NULL,
  [address] nvarchar(400) NULL,
  [academictitlecode] Varchar(10) NULL,
  [degreecode] Varchar(10) NULL,
  [leveltitlecode] Varchar(10) NULL,
  [departmentcode] Varchar(10) NULL,
  [armyrankcode] varchar(10) NULL,
  [partyleveltitlecode] Varchar(10) NULL,
  [mobiphone] Varchar(20) NULL,
  [tel] Varchar(20) NULL,
  [userpassword] Varchar(100) NULL,
  [photo] nvarchar(200) NULL,
  [manager] int NULL,
  [email] nvarchar(100) NULL,
  [changepass] smallint NULL,
  [academiclevelcode] varchar(10) NULL,
  [staffstatuscode] varchar(10) NULL,
  [provincecode] varchar(10) NULL,
  [districtcode] varchar(10) NULL,
  [towncode] varchar(10) NULL,
  [internalemail] nvarchar(100) NULL,
  [whois] varchar(64) NULL,
  [sex] int NULL,
  [ethniccode] varchar(10) NULL,
  [religioncode] varchar(10) NULL,
  [hometown] nvarchar(500) NULL,
  [username] nvarchar(100) NULL,
  [universitycode] varchar(10) NULL,
  [civilid] varchar(50) NULL,
  [extensioncode] varchar(200) NULL,

    CONSTRAINT [PK_staff_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end staff--------------------
GO



