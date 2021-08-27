Arglist3 <- sqldf(" SELECT * FROM Argumentlistenbackup300621 WHERE Pos IN('Funktion_6') ")
zList <- sqldf(" SELECT Res FROM Arglist3 WHERE Nummer = 2 ")
z <- zList$Res
source('~/Tabellenkalkultionsumwandler/Zeichenauflister.R')
Option <- c('=','<=','>=','<>')
Optres <- c('<>','>','<','=')
Optwahl <- data.frame(Option, Optres)
Min <- sqldf(" SELECT MIN(Nummer) AS Min FROM Join2 WHERE Substr IN('=','<','>') ")
Max <- sqldf(" SELECT MAX(Nummer) AS Max FROM Join2 WHERE Substr IN('=','<','>') ")
Listmin <- Min$Min
Listmax <- Max$Max
zListres <- data.frame(Listmin, Listmax)
zListres$Text <- z
zListres$Formelextrakt <- paste0('=TESTEXTRAKT(',substr(zListres$Text, 1, zListres$Listmin -1),';',substr(zListres$Text, zListres$Listmax + 1, str_length(zListres$Text)),')')
Formel <- zListres$Formelextrakt
Opper <- substr(zListres$Text, zListres$Listmin, zListres$Listmax)
Opperoppquery <- paste0(' SELECT Optres FROM Optwahl WHERE Option IN(\'',Opper,'\')')
Opperquery <- sqldf(Opperoppquery)
Opperopp <- Opperquery$Optres
source('~/Tabellenkalkultionsumwandler/Drittebenverarbeitung.R')