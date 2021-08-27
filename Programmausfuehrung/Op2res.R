Op2<- sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4<>Funktion_1_Var5" )
Op2$Dec <- Op2$Funktion_1_Var3
Numlist <- c(Dec$Numlist, Op2$Num)
Dec <- c(Dec$Dec, Op2$Dec)
Dec <- data.frame(Dec, Numlist)
Progselectzahl <- Progselectzahl + 1
Query <- paste0(' SELECT Prog FROM Declist WHERE Num =',Progselectzahl)
Progselect <- sqldf(Query)
Progselectres <- Progselect$Prog
source(Progselectres)

