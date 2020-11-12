GO
CREATE TABLE AppConfig
(
	Id int identity Primary key
	, ImageLogin nvarchar(max)
	, ImagePanelLogin varchar(max)
)

GO
INSERT INTO AppConfig(ImageLogin,ImagePanelLogin)
VALUES ('~/Libs/Login_v3/images/bg-01.jpg','~-webkit-linear-gradient(top, #dee0f5, #0683ef)')
GO
INSERT INTO staff(code,username,userpassword,name,staffstatuscode)
     VALUES ('admin','admin', N'/f9e7bsNi+c=',N'Adminstrator',1)