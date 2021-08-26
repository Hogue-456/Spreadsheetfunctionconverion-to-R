Zifferanzahl <- sqldf(" SELECT Nummer AS Nummer1 FROM Join2 WHERE Substr IN(1, 2, 3, 4, 5, 6, 7, 8, 9, 0) ")
Buchstabenanzahl <- sqldf(" SELECT Nummer AS Nummer2 FROM Join2 WHERE Substr IN('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z') ")
Minziffer <- sqldf(" SELECT MIN(Nummer1) AS Minziffer FROM Zifferanzahl ")
Maxbuchstabe <- sqldf(" SELECT MAX(Nummer2) AS Maxbuchstabe FROM Buchstabenanzahl ")
Zeilenzahl <- nrow(Zifferanzahl)
Buchstabenzahl <- nrow(Buchstabenanzahl)
Anzahlen <- data.frame(Minziffer, Maxbuchstabe, Zeilenzahl, Buchstabenzahl)
Anzahlen$Gesamtzahl <- nrow(Join2)-1
Zahlausgabe <- nrow(sqldf(" SELECT * FROM Anzahlen WHERE Minziffer > 0 AND Maxbuchstabe > 0 AND Gesamtzahl - Zeilenzahl - Buchstabenzahl = 0 "))
Zahlausgabe2 <- nrow(sqldf(" SELECT * FROM Anzahlen WHERE Zeilenzahl = Gesamtzahl "))
Zahlausgabe3 <- nrow(sqldf(" SELECT * FROM Anzahlen WHERE Buchstabenzahl = Gesamtzahl "))
Zahlausgabe4 <- nrow(sqldf(" SELECT * FROM Anzahlen WHERE Gesamtzahl > Zeilenzahl + Buchstabenzahl "))
Zahlausgabe5 <- 1
Liste <- c(Zahlausgabe, Zahlausgabe2, Zahlausgabe3, Zahlausgabe4, Zahlausgabe5)
Art <- c('Zellbezug', 'Zellwert', 'Spaltenbezug', 'String', 'String')
Auswahl <- data.frame(Liste, Art)
Auswahl$Zeile <- 1
Auswahl$Zeile <- cumsum(Auswahl$Zeile)
Funktionsart <- sqldf(" SELECT MIN(Zeile) AS Zeile, Art FROM Auswahl WHERE Liste = 1 ")
Entscheidung <- Funktionsart
Funktionsart <- Funktionsart$Art 
Extrakt <- z
Bestandteile <- data.frame(Funktionsart, Extrakt)
