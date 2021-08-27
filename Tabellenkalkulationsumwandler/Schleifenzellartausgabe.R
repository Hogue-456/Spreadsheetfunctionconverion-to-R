Argumentliste <- Bestandteile
Argumentliste$Nummer <- 1
Argumentliste$Nummer <- cumsum(Argumentliste$Nummer)
Funktionsliste <- data.frame(Funktionsart)
Argumentliste$Programm <- '~/Tabellenkalkultionsumwandler/Stringteilausgabe mit Anfzeichenzahl.R'
Argumentliste$Programm22 <- '~/Tabellenkalkultionsumwandler/Funktionslistenerweiterer.R'
Programme1 <- sqldf(" SELECT Programm FROM Argumentliste WHERE Nummer > 1 ")
Programme2 <- sqldf(" SELECT Programm22 FROM Argumentliste WHERE Nummer > 1 ")
Programme <- c(Programme1$Programm,'~/Tabellenkalkultionsumwandler/Schleifenzellartergebnisausgabe.R')
Programme22 <- c(Programme2$Programm22,'~/Tabellenkalkultionsumwandler/Schleifenzellartergebnisausgabe.R')
Programmliste3 <- data.frame(Programme, Programme22)
Programmliste3$Nummer <- 1
Programmliste3$Nummer <- cumsum(Programmliste3$Nummer)+1
Zaehlerart <- 2
Nachfolgeprogramm <- paste0(' SELECT Programme22 FROM Programmliste3 WHERE Nummer =',Zaehlerart)
Nachfolgeprogramm <- sqldf(Nachfolgeprogramm)
Nachfolgeprogramm <- Nachfolgeprogramm$Programme
source(Nachfolgeprogramm, encoding = 'UTF-8')

