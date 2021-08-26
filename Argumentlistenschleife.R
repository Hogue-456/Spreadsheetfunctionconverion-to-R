library(sqldf)
Funktionsstartliste$Wahl512 <- '~/Tabellenkalkultionsumwandler/Schleifenzellfunktionen.R'
Maxwert512 <- nrow(Funktionsstartliste) + 1
Nummer512 <- c(Funktionsstartliste$Nummer, Maxwert512)
Prog512 <- c(Funktionsstartliste$Wahl512,'~/Tabellenkalkultionsumwandler/Schleifenzellvarausgabe.R')
Progwahl512 <- data.frame(Nummer512, Prog512) 
Schleifenhochzaehlzahl <- 1
zFormelquery <- paste0('SELECT Formel FROM Funktionsstartliste WHERE Nummer =',Schleifenhochzaehlzahl)
zFormel <- sqldf(zFormelquery)
z <- zFormel$Formel
source('~/Tabellenkalkultionsumwandler/Schleifenzellartbridge.R',encoding = 'UTF-8')
Argumentliste$Pos <- 'Funktion_1'
Backupliste <- Argumentliste
Schleifenhochzaehlzahl <- Schleifenhochzaehlzahl + 1
Prog128 <- paste0(' SELECT Prog512 FROM Progwahl512 WHERE Nummer512 =',Schleifenhochzaehlzahl)
Prog128 <- sqldf(Prog128)
Prog128 <- Prog128$Prog512
source(Prog128, encoding = 'UTF-8')