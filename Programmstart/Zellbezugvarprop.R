Zellbezuege <- sqldf(" SELECT COUNT(DISTINCT Res) AS Zellbezug, Res FROM Argumentliste WHERE Funktionsart IN('Zellbezug') GROUP BY Res")
Zellbezuege$Varprop <- paste0('Gesamtliste$Var',cumsum(Zellbezuege$Zellbezug))
Zellbezugliste <- sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart IN('Zellbezug') ")
Zellbezugres <- sqldf(" SELECT Zellbezugliste.Res, Zahl, Varprop FROM Zellbezugliste LEFT JOIN Zellbezuege ON Zellbezugliste.Res=Zellbezuege.Res ")
Varpropres <- Varprop$Varprop
Zahl <- Varprop$Zahl
Varprop <- c(Varpropres, Zellbezugres$Varprop)
Zahl <- c(Zahl, Zellbezugres$Zahl)
Varprop <- data.frame(Zahl, Varprop)
Varpropzahl <- Varpropzahl + 1
Queryvarprop <- paste0('SELECT Proglist FROM Progrespropwahllist WHERE Zahl = ',Varpropzahl)
Src <- sqldf(Queryvarprop)
Src <- Src$Proglist
source(Src)