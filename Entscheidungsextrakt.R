Querytext <- paste0('SELECT Substr FROM Strichpunkte WHERE Zeile =',Zaehler)
Sub <- sqldf(Querytext)
Substr <- Sub$Substr
Querytext4 <- paste0('SELECT Anfzeichen FROM Strichpunkte WHERE Zeile =',Zaehler)
Anfzeichen <- sqldf(Querytext4)
Anfzeichen <- Anfzeichen$Anfzeichen
Querytext2 <- paste0('SELECT Query1 FROM Strichpunkte WHERE Zeile =',Zaehler)
Queries1 <- sqldf(Querytext2)
Querytext3 <- paste0('SELECT Query2 FROM Strichpunkte WHERE Zeile =',Zaehler)
Queries2 <- sqldf(Querytext3)
Queryres1 <- Queries1$Query1
Queryres2 <- Queries2$Query2
Anzahl1 <- sqldf(Queryres1)
Anzahl2 <- sqldf(Queryres2)
Anzahl1 <- Anzahl1$Anzahl1
Anzahl2 <- Anzahl2$Anzahl2
Anzahl1 <- c(Entscheidung$Anzahl1, Anzahl1)
Anzahl2 <- c(Entscheidung$Anzahl2, Anzahl2)
Substr <- c(Entscheidung$Substr, Substr)
Anfzeichen <- c(Entscheidung$Anfzeichen, Anfzeichen)
Entscheidung <- data.frame(Anzahl1, Anzahl2, Substr, Anfzeichen)
Entscheidung <- sqldf(" SELECT Anzahl1, Anzahl2, Substr, Anfzeichen FROM Entscheidung ")
Zaehler <- Zaehler + 1
Programmtext <- paste0(' SELECT Programmliste FROM Programmwahl WHERE Zahl =',Zaehler)
Programmpfad <- sqldf(Programmtext)
Programmres <- Programmpfad$Programmliste
source(Programmres, encoding = 'UTF-8')


