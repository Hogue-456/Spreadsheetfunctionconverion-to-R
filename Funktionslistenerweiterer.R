Query <- paste0('SELECT Res FROM Argumentliste WHERE Nummer =',Zaehlerart)
Query <- sqldf(Query)
Sub <- Query$Res
z <- paste0('=',Sub)
Programm <- paste0('SELECT Programme FROM Programmliste3 WHERE Nummer =',Zaehlerart)
Programm <- sqldf(Programm)
Programmres3 <- Programm$Programme
source(Programmres3)
Funktionsart <- c(Funktionsliste$Funktionsart, Funktionsart)
Funktionsliste <- data.frame(Funktionsart)
Zaehlerart <- Zaehlerart + 1
Nachfolgeprogramm <- paste0(' SELECT Programme22 FROM Programmliste3 WHERE Nummer =',Zaehlerart)
Nachfolgeprogramm <- sqldf(Nachfolgeprogramm)
Nachfolgeprogramm <- Nachfolgeprogramm$Programme22
source(Nachfolgeprogramm)