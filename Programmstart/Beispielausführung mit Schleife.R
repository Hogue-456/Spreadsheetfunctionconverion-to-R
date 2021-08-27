source('~/Tabellenkalkultionsumwandler/Zweitebenverarbeitung.R', encoding = 'UTF-8')
source('~/Tabellenkalkultionsumwandler/Programmstart/Progrelermittler.R', encoding = 'UTF-8')
Argumentlistenbackup300621 <- Argumentliste
print('Erstargumentliste in Argumentlistenbackup300621')
Gesamtfunktionsuebersicht <- sqldf(" SELECT Nummer, Pos, Res FROM Argumentlistenbackup300621 WHERE Nummer = 1 GROUP BY Pos ")
print('Liste der Funktionsart in Gesamtfunktionsuebersicht')
source('~/Tabellenkalkultionsumwandler/Operandenfunktion.R', encoding = 'UTF-8')
Proglist28 <- sqldf(" SELECT * FROM Vardec ")
Programmteil <- 'Operandenfunktion'
source('~/Tabellenkalkultionsumwandler/R-Filecreator/Rdateierstellerprogramm.R', encoding = 'UTF-8')
source('~/Tabellenkalkultionsumwandler/Substrersteller.R', encoding = 'UTF-8')
Proglist28 <- sqldf(" SELECT * FROM Substrtext ")
Programmteil <- 'Substr'
source('~/Tabellenkalkultionsumwandler/R-Filecreator/Rdateierstellerprogramm.R', encoding = 'UTF-8')

