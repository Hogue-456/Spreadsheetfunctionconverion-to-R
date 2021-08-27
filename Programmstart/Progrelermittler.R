Argumentliste$Zahl <- 1
Argumentliste$Zahl <- cumsum(Argumentliste$Zahl)
Argliststring <- nrow(sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart IN('String') "))
Otherstring <- nrow(sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart NOT IN('String','Zellbezug') "))
Zellbezugliste <- nrow(sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart IN('Zellbezug') "))
Anzahl <- c(Argliststring, Otherstring, Zellbezugliste, 1)
Funktionsart <- c('String','Sonstige','Zellbezug','Ergebnisausgabe')
Proglist <- c('~/Tabellenkalkultionsumwandler/Programmstart/Stringvarprop.R',
'~/Tabellenkalkultionsumwandler/Programmstart/Othervarprop.R',
'~/Tabellenkalkultionsumwandler/Programmstart/Zellbezugvarprop.R',
'~/Tabellenkalkultionsumwandler/Programmstart/Varpropres.R')
Progrespropwahllist <- data.frame(Funktionsart, Anzahl, Proglist)
Progrespropwahllist <- sqldf(" SELECT * FROM Progrespropwahllist WHERE Anzahl > 0 ")
print('Ergebnis in Progrespropwahllist')
Varprop <- 0
Zahl <- 0
Varprop <- data.frame(Varprop, Zahl)
Progrespropwahllist$Zahl <- 1
Progrespropwahllist$Zahl <- cumsum(Progrespropwahllist$Zahl)
Varpropzahl <- 1
Queryvarprop <- paste0('SELECT Proglist FROM Progrespropwahllist WHERE Zahl = ',Varpropzahl)
Src <- sqldf(Queryvarprop)
Src <- Src$Proglist
source(Src)
