Zellbezuege <- sqldf(" SELECT COUNT(DISTINCT Res) AS Zellbezug, Res FROM Argumentliste WHERE Funktionsart IN('Zellbezug') GROUP BY Res")
Zellbezuege$Varprop <- paste0('Gesamtliste$Var',cumsum(Zellbezuege$Zellbezug))
