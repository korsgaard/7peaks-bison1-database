SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesper Nyholm
-- Create date: 20 April 2013
-- Description:	Sletter data i HealthCamp software
-- =============================================
CREATE PROCEDURE [dbo].[CleanDB]
AS
BEGIN

	SET NOCOUNT ON;

	-- STAMDATA 
   
   -- KALENDER
    TRUNCATE TABLE dbo.CstActivityBooking
    TRUNCATE TABLE dbo.CstActivity2User
    DELETE FROM dbo.CstActivity
	
	--ARTIKELSTATISTIK
 -- 	TRUNCATE TABLE dbo.CstArticle2User
	
	-- BATTLE UDFORDRINGER
 	TRUNCATE TABLE dbo.CstBattle
	
	-- KONKURRENCER
  	TRUNCATE TABLE dbo.CstContest2User
  	DELETE FROM dbo.CstContest
	
	-- EKSPERTPANELET
  	TRUNCATE TABLE dbo.CstPanelItem2User
  	DELETE FROM  dbo.CstPanelItem
	
	--OPSKRIFT STATISTIK OG RATING
  --	TRUNCATE TABLE dbo.CstRecipe2User
  --	TRUNCATE TABLE dbo.CstRecipeRating2User
	
	-- BRUGER KOMMUNIKATION
  	TRUNCATE TABLE dbo.CstUserCommunication
  	TRUNCATE TABLE dbo.FmwUser2Forum
  	TRUNCATE TABLE dbo.TblFieldReply
  	DELETE FROM dbo.TblFormReply
	
	-- INDRAPPORTERINGSDATA
	TRUNCATE TABLE dbo.hcReportCourseActivity
	DELETE FROM dbo.hcReport
	
	-- TESTRESULTAT DATA
	TRUNCATE TABLE dbo.CstTestResultNote
	TRUNCATE TABLE dbo.CstTestResult
	
	-- TEST BOOKING DATA
	TRUNCATE TABLE dbo.CstTimeslotEntry
	DELETE FROM dbo.CstTimeslot
	DELETE FROM dbo.CstSession
	DELETE FROM dbo.CstTest
	
	DELETE FROM FmwUser WHERE UserID>4911
	DELETE FROM CstTeam WHERE TeamID NOT IN (418,417,58,292,23)
--	DELETE FROM FmwForum WHERE ForumID>716
--	UPDATE FmwForum SET Lft=1,Rgt=6 WHERE ForumID=259
--	UPDATE FmwForum SET Lft=2,Rgt=3 WHERE ForumID=322
--	UPDATE FmwForum SET Lft=4,Rgt=5 WHERE ForumID=716
	
END
GO