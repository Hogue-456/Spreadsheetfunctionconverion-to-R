zFormelquery <- paste0('SELECT Formel FROM Funktionsstartliste WHERE Nummer =',Schleifenhochzaehlzahl)
zFormel <- sqldf(zFormelquery)
z <- zFormel$Formel
source('~/Tabellenkalkultionsumwandler/Schleifenzellartbridge.R', encoding = 'UTF-8')
Posangabe512 <- paste0('Funktion_',Schleifenhochzaehlzahl)
Argumentliste$Pos <- Posangabe512
Bis1 <- Backupliste$Bis
Bis2 <- Argumentliste$Bis
Bis <- c(Bis1, Bis2)
Fnct1 <- Backupliste$Fnct
Fnct2 <- Argumentliste$Fnct
Fnct <- c(Fnct1, Fnct2)
Res1 <- Backupliste$Res
Res2 <- Argumentliste$Res
Res <- c(Res1, Res2)
Nummer1 <- Backupliste$Nummer
Nummer2 <- Argumentliste$Nummer
Nummer <- c(Nummer1, Nummer2)
Funktionsart1 <- Backupliste$Funktionsart
Funktionsart2 <- Argumentliste$Funktionsart
Funktionsart <- c(Funktionsart1, Funktionsart2)
Pos1 <- Backupliste$Pos
Pos2 <- Argumentliste$Pos
Pos <- c(Pos1, Pos2)
Argumentliste <- data.frame(Bis, Fnct, Res, Nummer, Funktionsart, Pos)
Backupliste <- Argumentliste
Schleifenhochzaehlzahl <- Schleifenhochzaehlzahl + 1
Prog128 <- paste0(' SELECT Prog512 FROM Progwahl512 WHERE Nummer512 =',Schleifenhochzaehlzahl)
Prog128 <- sqldf(Prog128)
Prog128 <- Prog128$Prog512
source(Prog128, encoding = 'UTF-8')