-----------------begin approvedstatus--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approvedstatus]') AND type in (N'U'))
DROP TABLE [dbo].[approvedstatus]
GO
-------------
CREATE TABLE [approvedstatus]
(
  [code] varchar(10) NOT NULL,
  [codeview] nvarchar(50) NULL,
  [name] nvarchar(1000) NULL,
  [edittime] Datetime NULL,
  [edituser] varchar(20) NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [thetype] varchar(20) NULL,
  [whois] varchar(64) NULL,
  [statusnumber] int NULL,

    CONSTRAINT [PK_approvedstatus_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end approvedstatus--------------------
GO


-----------------begin evidencestatus--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidencestatus]') AND type in (N'U'))
DROP TABLE [dbo].[evidencestatus]
GO
-------------
CREATE TABLE [evidencestatus]
(
  [code] varchar(10) NOT NULL,
  [codeview] nvarchar(50) NULL,
  [name] nvarchar(1000) NULL,
  [edittime] Datetime NULL,
  [edituser] varchar(20) NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [thetype] varchar(20) NULL,
  [whois] varchar(64) NULL,
  [statusnumber] int NULL,

    CONSTRAINT [PK_evidencestatus_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidencestatus--------------------
GO


-----------------begin deliverytype--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deliverytype]') AND type in (N'U'))
DROP TABLE [dbo].[deliverytype]
GO
-------------
CREATE TABLE [deliverytype]
(
  [code] varchar(10) NOT NULL,
  [codeview] nvarchar(50) NULL,
  [name] nvarchar(1000) NULL,
  [edittime] Datetime NULL,
  [edituser] varchar(20) NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [thetype] varchar(20) NULL,
  [whois] varchar(64) NULL,
  [statusnumber] int NULL,

    CONSTRAINT [PK_deliverytype_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end deliverytype--------------------
GO


-----------------begin evidencetype--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidencetype]') AND type in (N'U'))
DROP TABLE [dbo].[evidencetype]
GO
-------------
CREATE TABLE [evidencetype]
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
  [inspectiontime] decimal(18,2) NULL,

    CONSTRAINT [PK_evidencetype_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidencetype--------------------
GO


-----------------begin evidence--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidence]') AND type in (N'U'))
DROP TABLE [dbo].[evidence]
GO
-------------
CREATE TABLE [evidence]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(2000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [evidencetypecode] varchar(10) NULL,
  [storenote] nvarchar(1000) NULL,
  [thetype] varchar(50) NULL,
  [provincecodoe] varchar(10) NULL,
  [districtcode] varchar(10) NULL,
  [towncode] varchar(10) NULL,
  [departmentcode] varchar(10) NULL,
  [enquirer] varchar(10) NULL,
  [enquirername] nvarchar(50) NULL,
  [enquirertitle] nvarchar(100) NULL,
  [address] nvarchar(1000) NULL,
  [phone] varchar(20) NULL,
  [email] varchar(10) NULL,
  [mailcode] varchar(20) NULL,
  [delivertypecode] varchar(10) NULL,
  [enquiringthime] datetime NULL,
  [staffcode] varchar(10) NULL,
  [evidencestatus] varchar(10) NULL,
  [approvedstatus] varchar(10) NULL,
  [reponsivestaff] varchar(10) NULL,
  [result] nvarchar(1000) NULL,
  [duetime] datetime NULL,
  [finishtime] datetime NULL,
  [plustime] decimal(18,2) NULL,
  [deliverytime] datetime NULL,
  [deliverystaff] varchar(10) NULL,
  [deliverynote] nvarchar(1000) NULL,

    CONSTRAINT [PK_evidence_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidence--------------------
GO


-----------------begin quantity--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[quantity]') AND type in (N'U'))
DROP TABLE [dbo].[quantity]
GO
-------------
CREATE TABLE [quantity]
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
  [Thetype] varchar(50) NULL,
  [basecode] varchar(10) NULL,
  [rate] decimal(5,2) NULL,

    CONSTRAINT [PK_quantity_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end quantity--------------------
GO


-----------------begin material--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[material]') AND type in (N'U'))
DROP TABLE [dbo].[material]
GO
-------------
CREATE TABLE [material]
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
  [materialtype] int NULL,
  [quantitycode] varchar(10) NULL,
  [quantityname] nvarchar(100) NULL,

    CONSTRAINT [PK_material_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end material--------------------
GO


-----------------begin evidencematerial--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidencematerial]') AND type in (N'U'))
DROP TABLE [dbo].[evidencematerial]
GO
-------------
CREATE TABLE [evidencematerial]
(
  [code] Varchar(10) NOT NULL,
  [evidencecode] varchar(10) NULL,
  [materialcode] varchar(10) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(1000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [quantitycode] varchar(10) NULL,
  [amount] decimal(18,2) NULL,
  [pickupdate] datetime NULL,
  [pickupextra] int NULL,
  [remainamount] decimal(18,2) NULL,
  [returnamount] decimal(18,2) NULL,
  [storenote] nvarchar(1000) NULL,

    CONSTRAINT [PK_evidencematerial_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidencematerial--------------------
GO


-----------------begin inspectionmaterial--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inspectionmaterial]') AND type in (N'U'))
DROP TABLE [dbo].[inspectionmaterial]
GO
-------------
CREATE TABLE [inspectionmaterial]
(
  [code] Varchar(10) NOT NULL,
  [evidencecode] varchar(10) NULL,
  [materialcode] varchar(10) NULL,
  [note] Nvarchar(1000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [quantitycode] varchar(10) NULL,
  [amount] decimal(18,2) NULL,
  [pickupdate] datetime NULL,
  [staffcode] varchar(10) NULL,

    CONSTRAINT [PK_inspectionmaterial_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end inspectionmaterial--------------------
GO


-----------------begin evidencestaff--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidencestaff]') AND type in (N'U'))
DROP TABLE [dbo].[evidencestaff]
GO
-------------
CREATE TABLE [evidencestaff]
(
  [code] Varchar(10) NOT NULL,
  [evidencecode] varchar(10) NULL,
  [staffcode] varchar(10) NULL,
  [note] Nvarchar(1000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [role] int NULL,
  [begintime] datetime NULL,
  [endtime] datetime NULL,

    CONSTRAINT [PK_evidencestaff_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidencestaff--------------------
GO


-----------------begin evidencenote--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidencenote]') AND type in (N'U'))
DROP TABLE [dbo].[evidencenote]
GO
-------------
CREATE TABLE [evidencenote]
(
  [code] Varchar(10) NOT NULL,
  [evidencecode] varchar(10) NULL,
  [staffcode] varchar(10) NULL,
  [note] Nvarchar(1000) NULL,
  [edituser] Varchar(20) NULL,
  [edittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [whois] varchar(64) NULL,
  [approvedstatuscode] varchar(10) NULL,
  [notetime] datetime NULL,
  [Thetype] varchar(50) NULL,
  [approvedstaff] varchar(10) NULL,
  [approvedtime] datetime NULL,
  [evidencestatuscode] varchar(10) NULL,
  [approvednote] nvarchar(1000) NULL,

    CONSTRAINT [PK_evidencenote_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end evidencenote--------------------
GO



