Query1 <- sqldf(" SELECT Substr, Nummer FROM Join2 WHERE Substr IN('\"') ")
Query2 <- sqldf(" SELECT Substr, Nummer FROM Join2 WHERE Substr NOT IN('\"') ")
Query1$Wert <- 1
Query2$Wert <- 0
Prt13 <- c(Query1$Nummer,Query2$Nummer)
Prt14 <- c(Query1$Substr,Query2$Substr)
Prt15 <- c(Query1$Wert,Query2$Wert)
Teile <- data.frame(Prt13, Prt14, Prt15)
Sort4 <- sqldf(" SELECT * FROM Teile ORDER BY Prt13 ")
Sort4$Prt16 <- cumsum(Sort4$Prt15)
