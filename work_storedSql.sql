
-----------------begin approvedstatus_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_approvedstatus_insert')
    DROP PROCEDURE [gen_approvedstatus_insert]
GO 
CREATE PROCEDURE [gen_approvedstatus_insert](  @code varchar(10),   @codeview nvarchar(50),   @name nvarchar(1000),   @edittime Datetime,   @edituser varchar(20),   @lock smallint,   @lockdate datetime,   @thetype varchar(20),   @whois varchar(64),   @statusnumber int)
AS 
BEGIN
	INSERT INTO [approvedstatus]([code], [codeview], [name], [edittime], [edituser], [lock], [lockdate], [thetype], [whois], [statusnumber]) VALUES(@code, @codeview, @name, @edittime, @edituser, @lock, @lockdate, @thetype, @whois, @statusnumber)
END
-----------------end approvedstatus_insert--------------------
GO

-----------------begin approvedstatus_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_approvedstatus_update')
    DROP PROCEDURE [gen_approvedstatus_update]
GO 
CREATE PROCEDURE [gen_approvedstatus_update](@code varchar(10), @codeview nvarchar(50), @name nvarchar(1000), @edittime Datetime, @edituser varchar(20), @lock smallint, @lockdate datetime, @thetype varchar(20), @whois varchar(64), @statusnumber int, @Key_code varchar(10))
AS 
BEGIN
	UPDATE [approvedstatus] SET [code] =@code, [codeview] =@codeview, [name] =@name, [edittime] =@edittime, [edituser] =@edituser, [lock] =@lock, [lockdate] =@lockdate, [thetype] =@thetype, [whois] =@whois, [statusnumber] =@statusnumber WHERE [code] =@Key_code
END
-----------------end approvedstatus_update--------------------
GO

-----------------begin approvedstatus_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_approvedstatus_delete')
    DROP PROCEDURE [gen_approvedstatus_delete]
GO 
CREATE PROCEDURE [gen_approvedstatus_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [approvedstatus] WHERE [code] =@code
END
-----------------end approvedstatus_delete--------------------
GO

-----------------begin evidencestatus_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestatus_insert')
    DROP PROCEDURE [gen_evidencestatus_insert]
GO 
CREATE PROCEDURE [gen_evidencestatus_insert](  @code varchar(10),   @codeview nvarchar(50),   @name nvarchar(1000),   @edittime Datetime,   @edituser varchar(20),   @lock smallint,   @lockdate datetime,   @thetype varchar(20),   @whois varchar(64),   @statusnumber int)
AS 
BEGIN
	INSERT INTO [evidencestatus]([code], [codeview], [name], [edittime], [edituser], [lock], [lockdate], [thetype], [whois], [statusnumber]) VALUES(@code, @codeview, @name, @edittime, @edituser, @lock, @lockdate, @thetype, @whois, @statusnumber)
END
-----------------end evidencestatus_insert--------------------
GO

-----------------begin evidencestatus_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestatus_update')
    DROP PROCEDURE [gen_evidencestatus_update]
GO 
CREATE PROCEDURE [gen_evidencestatus_update](@code varchar(10), @codeview nvarchar(50), @name nvarchar(1000), @edittime Datetime, @edituser varchar(20), @lock smallint, @lockdate datetime, @thetype varchar(20), @whois varchar(64), @statusnumber int, @Key_code varchar(10))
AS 
BEGIN
	UPDATE [evidencestatus] SET [code] =@code, [codeview] =@codeview, [name] =@name, [edittime] =@edittime, [edituser] =@edituser, [lock] =@lock, [lockdate] =@lockdate, [thetype] =@thetype, [whois] =@whois, [statusnumber] =@statusnumber WHERE [code] =@Key_code
END
-----------------end evidencestatus_update--------------------
GO

-----------------begin evidencestatus_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestatus_delete')
    DROP PROCEDURE [gen_evidencestatus_delete]
GO 
CREATE PROCEDURE [gen_evidencestatus_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [evidencestatus] WHERE [code] =@code
END
-----------------end evidencestatus_delete--------------------
GO

-----------------begin deliverytype_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_deliverytype_insert')
    DROP PROCEDURE [gen_deliverytype_insert]
GO 
CREATE PROCEDURE [gen_deliverytype_insert](  @code varchar(10),   @codeview nvarchar(50),   @name nvarchar(1000),   @edittime Datetime,   @edituser varchar(20),   @lock smallint,   @lockdate datetime,   @thetype varchar(20),   @whois varchar(64),   @statusnumber int)
AS 
BEGIN
	INSERT INTO [deliverytype]([code], [codeview], [name], [edittime], [edituser], [lock], [lockdate], [thetype], [whois], [statusnumber]) VALUES(@code, @codeview, @name, @edittime, @edituser, @lock, @lockdate, @thetype, @whois, @statusnumber)
END
-----------------end deliverytype_insert--------------------
GO

-----------------begin deliverytype_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_deliverytype_update')
    DROP PROCEDURE [gen_deliverytype_update]
GO 
CREATE PROCEDURE [gen_deliverytype_update](@code varchar(10), @codeview nvarchar(50), @name nvarchar(1000), @edittime Datetime, @edituser varchar(20), @lock smallint, @lockdate datetime, @thetype varchar(20), @whois varchar(64), @statusnumber int, @Key_code varchar(10))
AS 
BEGIN
	UPDATE [deliverytype] SET [code] =@code, [codeview] =@codeview, [name] =@name, [edittime] =@edittime, [edituser] =@edituser, [lock] =@lock, [lockdate] =@lockdate, [thetype] =@thetype, [whois] =@whois, [statusnumber] =@statusnumber WHERE [code] =@Key_code
END
-----------------end deliverytype_update--------------------
GO

-----------------begin deliverytype_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_deliverytype_delete')
    DROP PROCEDURE [gen_deliverytype_delete]
GO 
CREATE PROCEDURE [gen_deliverytype_delete](  @code varchar(10))
AS 
BEGIN
	DELETE FROM [deliverytype] WHERE [code] =@code
END
-----------------end deliverytype_delete--------------------
GO

-----------------begin evidencetype_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencetype_insert')
    DROP PROCEDURE [gen_evidencetype_insert]
GO 
CREATE PROCEDURE [gen_evidencetype_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @comparelevel int,   @theorder int,   @thetype varchar(50),   @inspectiontime decimal(18,2))
AS 
BEGIN
	INSERT INTO [evidencetype]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [comparelevel], [theorder], [thetype], [inspectiontime]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @comparelevel, @theorder, @thetype, @inspectiontime)
END
-----------------end evidencetype_insert--------------------
GO

-----------------begin evidencetype_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencetype_update')
    DROP PROCEDURE [gen_evidencetype_update]
GO 
CREATE PROCEDURE [gen_evidencetype_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @comparelevel int, @theorder int, @thetype varchar(50), @inspectiontime decimal(18,2), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [evidencetype] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [comparelevel] =@comparelevel, [theorder] =@theorder, [thetype] =@thetype, [inspectiontime] =@inspectiontime WHERE [code] =@Key_code
END
-----------------end evidencetype_update--------------------
GO

-----------------begin evidencetype_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencetype_delete')
    DROP PROCEDURE [gen_evidencetype_delete]
GO 
CREATE PROCEDURE [gen_evidencetype_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [evidencetype] WHERE [code] =@code
END
-----------------end evidencetype_delete--------------------
GO

-----------------begin evidence_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidence_insert')
    DROP PROCEDURE [gen_evidence_insert]
GO 
CREATE PROCEDURE [gen_evidence_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(2000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @evidencetypecode varchar(10),   @storenote nvarchar(1000),   @thetype varchar(50),   @provincecodoe varchar(10),   @districtcode varchar(10),   @towncode varchar(10),   @departmentcode varchar(10),   @enquirer varchar(10),   @enquirername nvarchar(50),   @enquirertitle nvarchar(100),   @address nvarchar(1000),   @phone varchar(20),   @email varchar(10),   @mailcode varchar(20),   @delivertypecode varchar(10),   @enquiringthime datetime,   @staffcode varchar(10),   @evidencestatus varchar(10),   @approvedstatus varchar(10),   @reponsivestaff varchar(10),   @result nvarchar(1000),   @duetime datetime,   @finishtime datetime,   @plustime decimal(18,2),   @deliverytime datetime,   @deliverystaff varchar(10),   @deliverynote nvarchar(1000))
AS 
BEGIN
	INSERT INTO [evidence]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [evidencetypecode], [storenote], [thetype], [provincecodoe], [districtcode], [towncode], [departmentcode], [enquirer], [enquirername], [enquirertitle], [address], [phone], [email], [mailcode], [delivertypecode], [enquiringthime], [staffcode], [evidencestatus], [approvedstatus], [reponsivestaff], [result], [duetime], [finishtime], [plustime], [deliverytime], [deliverystaff], [deliverynote]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @evidencetypecode, @storenote, @thetype, @provincecodoe, @districtcode, @towncode, @departmentcode, @enquirer, @enquirername, @enquirertitle, @address, @phone, @email, @mailcode, @delivertypecode, @enquiringthime, @staffcode, @evidencestatus, @approvedstatus, @reponsivestaff, @result, @duetime, @finishtime, @plustime, @deliverytime, @deliverystaff, @deliverynote)
END
-----------------end evidence_insert--------------------
GO

-----------------begin evidence_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidence_update')
    DROP PROCEDURE [gen_evidence_update]
GO 
CREATE PROCEDURE [gen_evidence_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(2000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @evidencetypecode varchar(10), @storenote nvarchar(1000), @thetype varchar(50), @provincecodoe varchar(10), @districtcode varchar(10), @towncode varchar(10), @departmentcode varchar(10), @enquirer varchar(10), @enquirername nvarchar(50), @enquirertitle nvarchar(100), @address nvarchar(1000), @phone varchar(20), @email varchar(10), @mailcode varchar(20), @delivertypecode varchar(10), @enquiringthime datetime, @staffcode varchar(10), @evidencestatus varchar(10), @approvedstatus varchar(10), @reponsivestaff varchar(10), @result nvarchar(1000), @duetime datetime, @finishtime datetime, @plustime decimal(18,2), @deliverytime datetime, @deliverystaff varchar(10), @deliverynote nvarchar(1000), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [evidence] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [evidencetypecode] =@evidencetypecode, [storenote] =@storenote, [thetype] =@thetype, [provincecodoe] =@provincecodoe, [districtcode] =@districtcode, [towncode] =@towncode, [departmentcode] =@departmentcode, [enquirer] =@enquirer, [enquirername] =@enquirername, [enquirertitle] =@enquirertitle, [address] =@address, [phone] =@phone, [email] =@email, [mailcode] =@mailcode, [delivertypecode] =@delivertypecode, [enquiringthime] =@enquiringthime, [staffcode] =@staffcode, [evidencestatus] =@evidencestatus, [approvedstatus] =@approvedstatus, [reponsivestaff] =@reponsivestaff, [result] =@result, [duetime] =@duetime, [finishtime] =@finishtime, [plustime] =@plustime, [deliverytime] =@deliverytime, [deliverystaff] =@deliverystaff, [deliverynote] =@deliverynote WHERE [code] =@Key_code
END
-----------------end evidence_update--------------------
GO

-----------------begin evidence_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidence_delete')
    DROP PROCEDURE [gen_evidence_delete]
GO 
CREATE PROCEDURE [gen_evidence_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [evidence] WHERE [code] =@code
END
-----------------end evidence_delete--------------------
GO

-----------------begin quantity_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_quantity_insert')
    DROP PROCEDURE [gen_quantity_insert]
GO 
CREATE PROCEDURE [gen_quantity_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @comparelevel int,   @theorder int,   @Thetype varchar(50),   @basecode varchar(10),   @rate decimal(5,2))
AS 
BEGIN
	INSERT INTO [quantity]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [comparelevel], [theorder], [Thetype], [basecode], [rate]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @comparelevel, @theorder, @Thetype, @basecode, @rate)
END
-----------------end quantity_insert--------------------
GO

-----------------begin quantity_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_quantity_update')
    DROP PROCEDURE [gen_quantity_update]
GO 
CREATE PROCEDURE [gen_quantity_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @comparelevel int, @theorder int, @Thetype varchar(50), @basecode varchar(10), @rate decimal(5,2), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [quantity] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [comparelevel] =@comparelevel, [theorder] =@theorder, [Thetype] =@Thetype, [basecode] =@basecode, [rate] =@rate WHERE [code] =@Key_code
END
-----------------end quantity_update--------------------
GO

-----------------begin quantity_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_quantity_delete')
    DROP PROCEDURE [gen_quantity_delete]
GO 
CREATE PROCEDURE [gen_quantity_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [quantity] WHERE [code] =@code
END
-----------------end quantity_delete--------------------
GO

-----------------begin material_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_material_insert')
    DROP PROCEDURE [gen_material_insert]
GO 
CREATE PROCEDURE [gen_material_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @comparelevel int,   @theorder int,   @whois varchar(64),   @materialtype int,   @quantitycode varchar(10),   @quantityname nvarchar(100))
AS 
BEGIN
	INSERT INTO [material]([code], [codeview], [name], [note], [edituser], [edittime], [lock], [lockdate], [comparelevel], [theorder], [whois], [materialtype], [quantitycode], [quantityname]) VALUES(@code, @codeview, @name, @note, @edituser, @edittime, @lock, @lockdate, @comparelevel, @theorder, @whois, @materialtype, @quantitycode, @quantityname)
END
-----------------end material_insert--------------------
GO

-----------------begin material_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_material_update')
    DROP PROCEDURE [gen_material_update]
GO 
CREATE PROCEDURE [gen_material_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @comparelevel int, @theorder int, @whois varchar(64), @materialtype int, @quantitycode varchar(10), @quantityname nvarchar(100), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [material] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [comparelevel] =@comparelevel, [theorder] =@theorder, [whois] =@whois, [materialtype] =@materialtype, [quantitycode] =@quantitycode, [quantityname] =@quantityname WHERE [code] =@Key_code
END
-----------------end material_update--------------------
GO

-----------------begin material_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_material_delete')
    DROP PROCEDURE [gen_material_delete]
GO 
CREATE PROCEDURE [gen_material_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [material] WHERE [code] =@code
END
-----------------end material_delete--------------------
GO

-----------------begin evidencematerial_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencematerial_insert')
    DROP PROCEDURE [gen_evidencematerial_insert]
GO 
CREATE PROCEDURE [gen_evidencematerial_insert](  @code Varchar(10),   @evidencecode varchar(10),   @materialcode varchar(10),   @name Nvarchar(200),   @note Nvarchar(1000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @quantitycode varchar(10),   @amount decimal(18,2),   @pickupdate datetime,   @pickupextra int,   @remainamount decimal(18,2),   @returnamount decimal(18,2),   @storenote nvarchar(1000))
AS 
BEGIN
	INSERT INTO [evidencematerial]([code], [evidencecode], [materialcode], [name], [note], [edituser], [edittime], [lock], [lockdate], [whois], [quantitycode], [amount], [pickupdate], [pickupextra], [remainamount], [returnamount], [storenote]) VALUES(@code, @evidencecode, @materialcode, @name, @note, @edituser, @edittime, @lock, @lockdate, @whois, @quantitycode, @amount, @pickupdate, @pickupextra, @remainamount, @returnamount, @storenote)
END
-----------------end evidencematerial_insert--------------------
GO

-----------------begin evidencematerial_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencematerial_update')
    DROP PROCEDURE [gen_evidencematerial_update]
GO 
CREATE PROCEDURE [gen_evidencematerial_update](@code Varchar(10), @evidencecode varchar(10), @materialcode varchar(10), @name Nvarchar(200), @note Nvarchar(1000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @quantitycode varchar(10), @amount decimal(18,2), @pickupdate datetime, @pickupextra int, @remainamount decimal(18,2), @returnamount decimal(18,2), @storenote nvarchar(1000), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [evidencematerial] SET [code] =@code, [evidencecode] =@evidencecode, [materialcode] =@materialcode, [name] =@name, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [quantitycode] =@quantitycode, [amount] =@amount, [pickupdate] =@pickupdate, [pickupextra] =@pickupextra, [remainamount] =@remainamount, [returnamount] =@returnamount, [storenote] =@storenote WHERE [code] =@Key_code
END
-----------------end evidencematerial_update--------------------
GO

-----------------begin evidencematerial_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencematerial_delete')
    DROP PROCEDURE [gen_evidencematerial_delete]
GO 
CREATE PROCEDURE [gen_evidencematerial_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [evidencematerial] WHERE [code] =@code
END
-----------------end evidencematerial_delete--------------------
GO

-----------------begin inspectionmaterial_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_inspectionmaterial_insert')
    DROP PROCEDURE [gen_inspectionmaterial_insert]
GO 
CREATE PROCEDURE [gen_inspectionmaterial_insert](  @code Varchar(10),   @evidencecode varchar(10),   @materialcode varchar(10),   @note Nvarchar(1000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @quantitycode varchar(10),   @amount decimal(18,2),   @pickupdate datetime,   @staffcode varchar(10))
AS 
BEGIN
	INSERT INTO [inspectionmaterial]([code], [evidencecode], [materialcode], [note], [edituser], [edittime], [lock], [lockdate], [whois], [quantitycode], [amount], [pickupdate], [staffcode]) VALUES(@code, @evidencecode, @materialcode, @note, @edituser, @edittime, @lock, @lockdate, @whois, @quantitycode, @amount, @pickupdate, @staffcode)
END
-----------------end inspectionmaterial_insert--------------------
GO

-----------------begin inspectionmaterial_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_inspectionmaterial_update')
    DROP PROCEDURE [gen_inspectionmaterial_update]
GO 
CREATE PROCEDURE [gen_inspectionmaterial_update](@code Varchar(10), @evidencecode varchar(10), @materialcode varchar(10), @note Nvarchar(1000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @quantitycode varchar(10), @amount decimal(18,2), @pickupdate datetime, @staffcode varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [inspectionmaterial] SET [code] =@code, [evidencecode] =@evidencecode, [materialcode] =@materialcode, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [quantitycode] =@quantitycode, [amount] =@amount, [pickupdate] =@pickupdate, [staffcode] =@staffcode WHERE [code] =@Key_code
END
-----------------end inspectionmaterial_update--------------------
GO

-----------------begin inspectionmaterial_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_inspectionmaterial_delete')
    DROP PROCEDURE [gen_inspectionmaterial_delete]
GO 
CREATE PROCEDURE [gen_inspectionmaterial_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [inspectionmaterial] WHERE [code] =@code
END
-----------------end inspectionmaterial_delete--------------------
GO

-----------------begin evidencestaff_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestaff_insert')
    DROP PROCEDURE [gen_evidencestaff_insert]
GO 
CREATE PROCEDURE [gen_evidencestaff_insert](  @code Varchar(10),   @evidencecode varchar(10),   @staffcode varchar(10),   @note Nvarchar(1000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @role int,   @begintime datetime,   @endtime datetime)
AS 
BEGIN
	INSERT INTO [evidencestaff]([code], [evidencecode], [staffcode], [note], [edituser], [edittime], [lock], [lockdate], [whois], [role], [begintime], [endtime]) VALUES(@code, @evidencecode, @staffcode, @note, @edituser, @edittime, @lock, @lockdate, @whois, @role, @begintime, @endtime)
END
-----------------end evidencestaff_insert--------------------
GO

-----------------begin evidencestaff_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestaff_update')
    DROP PROCEDURE [gen_evidencestaff_update]
GO 
CREATE PROCEDURE [gen_evidencestaff_update](@code Varchar(10), @evidencecode varchar(10), @staffcode varchar(10), @note Nvarchar(1000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @role int, @begintime datetime, @endtime datetime, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [evidencestaff] SET [code] =@code, [evidencecode] =@evidencecode, [staffcode] =@staffcode, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [role] =@role, [begintime] =@begintime, [endtime] =@endtime WHERE [code] =@Key_code
END
-----------------end evidencestaff_update--------------------
GO

-----------------begin evidencestaff_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencestaff_delete')
    DROP PROCEDURE [gen_evidencestaff_delete]
GO 
CREATE PROCEDURE [gen_evidencestaff_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [evidencestaff] WHERE [code] =@code
END
-----------------end evidencestaff_delete--------------------
GO

-----------------begin evidencenote_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencenote_insert')
    DROP PROCEDURE [gen_evidencenote_insert]
GO 
CREATE PROCEDURE [gen_evidencenote_insert](  @code Varchar(10),   @evidencecode varchar(10),   @staffcode varchar(10),   @note Nvarchar(1000),   @edituser Varchar(20),   @edittime Datetime,   @lock smallint,   @lockdate datetime,   @whois varchar(64),   @approvedstatuscode varchar(10),   @notetime datetime,   @Thetype varchar(50),   @approvedstaff varchar(10),   @approvedtime datetime,   @evidencestatuscode varchar(10),   @approvednote nvarchar(1000))
AS 
BEGIN
	INSERT INTO [evidencenote]([code], [evidencecode], [staffcode], [note], [edituser], [edittime], [lock], [lockdate], [whois], [approvedstatuscode], [notetime], [Thetype], [approvedstaff], [approvedtime], [evidencestatuscode], [approvednote]) VALUES(@code, @evidencecode, @staffcode, @note, @edituser, @edittime, @lock, @lockdate, @whois, @approvedstatuscode, @notetime, @Thetype, @approvedstaff, @approvedtime, @evidencestatuscode, @approvednote)
END
-----------------end evidencenote_insert--------------------
GO

-----------------begin evidencenote_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencenote_update')
    DROP PROCEDURE [gen_evidencenote_update]
GO 
CREATE PROCEDURE [gen_evidencenote_update](@code Varchar(10), @evidencecode varchar(10), @staffcode varchar(10), @note Nvarchar(1000), @edituser Varchar(20), @edittime Datetime, @lock smallint, @lockdate datetime, @whois varchar(64), @approvedstatuscode varchar(10), @notetime datetime, @Thetype varchar(50), @approvedstaff varchar(10), @approvedtime datetime, @evidencestatuscode varchar(10), @approvednote nvarchar(1000), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [evidencenote] SET [code] =@code, [evidencecode] =@evidencecode, [staffcode] =@staffcode, [note] =@note, [edituser] =@edituser, [edittime] =@edittime, [lock] =@lock, [lockdate] =@lockdate, [whois] =@whois, [approvedstatuscode] =@approvedstatuscode, [notetime] =@notetime, [Thetype] =@Thetype, [approvedstaff] =@approvedstaff, [approvedtime] =@approvedtime, [evidencestatuscode] =@evidencestatuscode, [approvednote] =@approvednote WHERE [code] =@Key_code
END
-----------------end evidencenote_update--------------------
GO

-----------------begin evidencenote_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_evidencenote_delete')
    DROP PROCEDURE [gen_evidencenote_delete]
GO 
CREATE PROCEDURE [gen_evidencenote_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [evidencenote] WHERE [code] =@code
END
-----------------end evidencenote_delete--------------------
GO

