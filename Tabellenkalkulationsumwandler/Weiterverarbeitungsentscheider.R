Zeichennummer <- Strichpunkte$Nummer
Entscheidung$Zeile <- Zeichennummer
Entscheidung$Klammdiff <- Entscheidung$Anzahl1 - Entscheidung$Anzahl2
Operandenanzahl <- nrow(sqldf(" SELECT * FROM Entscheidung WHERE Klammdiff = 0 AND Substr IN('&','+','-','*','/') "))
Relteil <- Entscheidung
Operandenanzahl <- data.frame(Operandenanzahl)
Entscheidungszahl <- nrow(sqldf(" SELECT * FROM Operandenanzahl WHERE Operandenanzahl > 0 "))
Programme <- c('~/Tabellenkalkultionsumwandler/Operandenextrakteurvorbereitung.R','~/Tabellenkalkultionsumwandler/Argumentextrakteur.R')
Zustaende <- c(1, 0)
Programmwahl <- data.frame(Programme, Zustaende)
Querytext5 <- paste0('SELECT Programme FROM Programmwahl WHERE Zustaende =',Entscheidungszahl)
Querytext5 <- sqldf(Querytext5)
Programmtext3 <- Querytext5$Programme
source(Programmtext3)
print('Aufteilung ermittelt')