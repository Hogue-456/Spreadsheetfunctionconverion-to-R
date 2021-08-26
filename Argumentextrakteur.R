Strichpunktpos <- sqldf(" SELECT Zeile, Substr FROM Relteil WHERE Substr IN(';') AND Klammdiff = 1 ")
Klammaufpos <- sqldf(" SELECT MIN(Zeile) AS Zeile, Substr FROM Relteil WHERE Substr IN('(') ")
Klammzupos <- sqldf(" SELECT MAX(Zeile) AS Zeile, Substr FROM Relteil WHERE Substr IN(')') ")
Uebergaenge <- c(Klammaufpos$Zeile, Strichpunktpos$Zeile, Klammzupos$Zeile)
Uebergaenge <- data.frame(Uebergaenge)
Uebergaenge$Bis <- Uebergaenge$Uebergaenge -1
Uebergaenge$Ab <- Uebergaenge$Uebergaenge + 1
Max <- sqldf(" SELECT MAX(Ab) AS Max FROM Uebergaenge ")
Max <- Max$Max
Query <- paste0(' SELECT Ab FROM Uebergaenge WHERE Ab < ',Max)
Maxwerte <- sqldf(Query)
Max <- c(2, Maxwerte$Ab)
Bis <- Uebergaenge$Bis
Bestandteile <- data.frame(Max, Bis)
Bestandteile$Fnct <- z
library(stringr)
Bestandteile$Res <- substr(Bestandteile$Fnct, Bestandteile$Max, Bestandteile$Bis)
Funktionsart <- 'Funktionsteile'
Ausgangsfunktion <- sqldf(" SELECT Res FROM Bestandteile WHERE Max = 2 ")
Ausgangsfunktion <- data.frame(Ausgangsfunktion)