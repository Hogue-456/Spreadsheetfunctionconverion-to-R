Argumentliste$Varprop3333 <- paste0(Argumentliste$Pos,'_Var',Argumentliste$Zahl +2,' <- ',Argumentliste$Varres)
Argumentliste$Varprop <- paste0('Funktion_1_Var',Argumentliste$Zahl +2,' <- ',Argumentliste$Varres)
Zuordteil1 <- sqldf(" SELECT Nummer, Varres FROM Argumentlistenbackup300621 WHERE Nummer > 2 AND Pos IN('Funktion_3') ")
Zuordteil1$Nummer <- Zuordteil1$Nummer - 1
Zuordteil1$Varprop <- paste0('Funktion_1_Var',Zuordteil1$Nummer,' <- ',Zuordteil1$Varres)
Zuordteil2 <- sqldf(" SELECT Varprop FROM Argumentliste WHERE Zahl > 1 ")
Zuordteil1 <- Zuordteil1$Varprop
Zuordteil2 <- Zuordteil2$Varprop
Zuordteile <- c(Zuordteil1, Zuordteil2)
Zuordteile <- data.frame(Zuordteile)
print('Ergebnis in Variable Zuordteile')