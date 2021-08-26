Query <- paste0(' SELECT Vardec FROM Arglist1 WHERE Nummer =',Queryzahl)
Vardec2 <- sqldf(Query)
Vardec2 <- Vardec2$Vardec
Vardec <- paste0(Vardec, Vardec2)
Queryzahl <- Queryzahl + 1
Progseczahl <- Progseczahl + 1
Progsecquery <- paste0(' SELECT Prog FROM Num WHERE Nummer =',Progseczahl)
Progsecres <- sqldf(Progsecquery)
Progsec <- Progsecres$Prog
source(Progsec)