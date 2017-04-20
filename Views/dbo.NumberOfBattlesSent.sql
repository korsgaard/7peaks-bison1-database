SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[NumberOfBattlesSent]
AS
SELECT     TOP 100 PERCENT COUNT(CstBattle.BattleID) AS NumberOfBattlesSent, CstBattle.SenderFK, FmwUser.FullName, 
                      FmwUser.Hidden
FROM         CstBattle LEFT OUTER JOIN
                      FmwUser ON CstBattle.SenderFK = FmwUser.UserID
GROUP BY CstBattle.SenderFK, FmwUser.FullName, FmwUser.Hidden
ORDER BY COUNT(CstBattle.BattleID) DESC
GO