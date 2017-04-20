SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[viewBattleWinLose]
AS
SELECT     CstBattle.*, (CASE WHEN (DoneTS IS NULL) THEN NULL ELSE (CASE WHEN (SenderScore > ReceiverScore) 
                      THEN SenderFK ELSE (CASE WHEN (ReceiverScore > SenderScore) THEN ReceiverFK ELSE NULL END) END) END) AS WinnerFK, 
                      (CASE WHEN (DoneTS IS NULL) THEN NULL ELSE (CASE WHEN (SenderScore < ReceiverScore) 
                      THEN SenderFK ELSE (CASE WHEN (ReceiverScore < SenderScore) THEN ReceiverFK ELSE NULL END) END) END) AS LoserFK
FROM         CstBattle
GO