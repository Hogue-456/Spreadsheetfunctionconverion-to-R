Strichpunkte <- sqldf(" SELECT * FROM Join2 WHERE Substr IN('=','(',')',';','&','+','-','*','/') AND Anfzeichen IN(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42) ")
Strichpunkte$Query1 <- paste0('SELECT COUNT(Substr) AS Anzahl1 FROM Join2 WHERE Substr IN(\'(\') AND Nummer <= ',Strichpunkte$Nummer)
Strichpunkte$Query2 <- paste0('SELECT COUNT(Substr) AS Anzahl2 FROM Join2 WHERE Substr IN(\')\') AND Nummer <= ',Strichpunkte$Nummer)
Strichpunkte$Zeile <- 1
Strichpunkte$Zeile <- cumsum(Strichpunkte$Zeile)
Strichpunkte$Programm <- '~/Tabellenkalkultionsumwandler/Entscheidungsextrakt.R'
Programmliste <- c(Strichpunkte$Programm,'~/Tabellenkalkultionsumwandler/Weiterverarbeitungsentscheider.R')
Programmwahl <- data.frame(Programmliste)
Programmwahl$Zahl <- 1
Programmwahl$Zahl <- cumsum(Programmwahl$Zahl)
Queries <- sqldf(" SELECT Query1, Query2, Substr FROM Strichpunkte WHERE Zeile = 1 ")
Anzahl1 <- sqldf(Queries$Query1)
Anzahl2 <- sqldf(Queries$Query2)
Sub <- sqldf(" SELECT Substr FROM Strichpunkte WHERE Zeile = 1 ")
Substr <- Sub$Substr
Anfzeichen <- sqldf(" SELECT Anfzeichen FROM Strichpunkte WHERE Zeile = 1 ")
Anfzeichen <- Anfzeichen$Anfzeichen
Entscheidung <- data.frame(Anzahl1, Anzahl2, Substr, Anfzeichen)
Zaehler <- 2
Programmtext <- paste0(' SELECT Programmliste FROM Programmwahl WHERE Zahl =',Zaehler)
Programmpfad <- sqldf(Programmtext)
Programmres <- Programmpfad$Programmliste
source(Programmres, encoding = 'UTF-8')
