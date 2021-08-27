Arglist3 <- sqldf(" SELECT * FROM Argumentliste WHERE Pos IN('Funktion_3') ")
Arglist3$Varprop <- paste0(Arglist3$Pos,'_',Arglist3$Nummer-1)
Var1 <- sqldf(" SELECT Varprop FROM Arglist3 WHERE Nummer = 2 ")
Var1 <- Var1$Varprop
Strlengthprog <- paste0('Gesamtliste$Length <- str_length(Gesamtliste$',Var1,')')