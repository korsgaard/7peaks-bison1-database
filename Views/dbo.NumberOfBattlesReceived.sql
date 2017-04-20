SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[NumberOfBattlesReceived]
AS
SELECT     TOP 100 PERCENT COUNT(CstBattle.BattleID) AS NumberOfBattlesReceived, CstBattle.ReceiverFK, 
                      FmwUser.FullName, FmwUser.Hidden
FROM         CstBattle LEFT OUTER JOIN
                      FmwUser ON CstBattle.ReceiverFK = FmwUser.UserID
GROUP BY CstBattle.ReceiverFK, FmwUser.FullName, FmwUser.Hidden
ORDER BY COUNT(CstBattle.BattleID) DESC
GO