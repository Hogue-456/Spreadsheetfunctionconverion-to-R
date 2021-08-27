Arglist2 <- sqldf(" SELECT * FROM Argumentliste WHERE Pos IN('Funktion_2') ")
Arglist2$Varprop <- paste0(Arglist2$Pos,'_',Arglist2$Nummer-1)
Varprop1 <- sqldf(" SELECT Varprop FROM Arglist2 WHERE Nummer = 2")
Varprop2 <- sqldf(" SELECT Varprop FROM Arglist2 WHERE Nummer = 3")
Varprop3 <- sqldf(" SELECT Varprop FROM Arglist2 WHERE Nummer = 4")
Varprop1 <- Varprop1$Varprop
Varprop2 <- Varprop2$Varprop
Varprop3 <- Varprop3$Varprop
Progvartext <- paste0('Gesamtliste$Sub <- substr(Gesamtliste$',Varprop1,',Gesamtliste$',Varprop2,',Gesamtliste$',Varprop2,'+Gesamtliste$',Varprop3,'-1)')
print('Ergebnis in Variable Progvartext')
