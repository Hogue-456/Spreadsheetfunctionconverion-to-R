Varprop$Listzahl <- 1
Varprop$Listzahl <- cumsum(Varprop$Listzahl)
Varprop <- sqldf(" SELECT * FROM Varprop WHERE Listzahl > 1 ORDER BY Zahl ")
Argumentliste$Varres <- Varprop$Varprop
Argumentliste$Varprop <- paste0(Argumentliste$Pos,'_Var',Argumentliste$Nummer - 1,'<- ',Argumentliste$Varres)