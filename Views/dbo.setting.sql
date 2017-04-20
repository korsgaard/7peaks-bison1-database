SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[setting]
AS
SELECT TblSetting.*
FROM TblSetting
WHERE TblSetting.SettingSectionID  IN (SELECT TblSection.SectionID FROM TblSection WHERE TblSection.SectionPageID='System' ) 
GO