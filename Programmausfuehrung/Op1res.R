Op1<- sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4=Funktion_1_Var5" )
Op1$Dec <- Op1$Funktion_3_Var2
Numlist <- c(Dec$Numlist, Op1$Num)
Dec <- c(Dec$Dec, Op1$Dec)
Dec <- data.frame(Dec, Numlist)
Progselectzahl <- Progselectzahl + 1
Query <- paste0(' SELECT Prog FROM Declist WHERE Num =',Progselectzahl)
Progselect <- sqldf(Query)
Progselectres <- Progselect$Prog
source(Progselectres)

