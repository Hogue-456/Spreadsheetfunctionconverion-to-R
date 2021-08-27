Query1 <- sqldf(" SELECT Substr, Nummer FROM Join2 ")
Query1$Wert <- 0
Prt13 <- Query1$Nummer
Prt14 <- Query1$Substr
Prt15 <- Query1$Wert
Teile <- data.frame(Prt13, Prt14, Prt15)
Sort4 <- sqldf(" SELECT * FROM Teile ORDER BY Prt13 ")
Sort4$Prt16 <- cumsum(Sort4$Prt15)
