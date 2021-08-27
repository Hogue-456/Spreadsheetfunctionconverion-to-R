Dec <- sqldf(" SELECT Dec FROM Dec ORDER BY Numlist")
Dec$Num <- 1
Dec$Num <- cumsum(Dec$Num)
Dec <- sqldf(" SELECT Dec FROM Dec WHERE Num > 1 ")
Gesamtliste$Dec <- Dec$Dec
print('Ergebnis in Spalte Dec')