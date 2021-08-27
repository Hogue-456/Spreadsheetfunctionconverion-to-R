Relteil <- Entscheidung
Relteil <- sqldf(" SELECT * FROM Relteil WHERE Substr IN('&','+','-','*','/') ")
Relteil$Operatoren <- 1
source('~/Tabellenkalkultionsumwandler/Operandenextrakteur.R', encoding = 'UTF-8')