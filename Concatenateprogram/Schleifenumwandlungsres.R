Oppnum <- nrow(sqldf(" SELECT * FROM Arglist1 WHERE Opp IN('+','-','*','/') "))
Oppdiff <- nrow(Arglist1) - Oppnum - 2
Opt <- c(Vardec, substr(Vardec, 8, str_length(Vardec)-1))
Oppdiff <- data.frame(Oppdiff)
Optdiffnum <- c(1, 0)
Optdiffdec <- data.frame(Opt, Optdiffnum)
Oppdiffzahl <- nrow(sqldf(" SELECT * FROM Oppdiff WHERE Oppdiff > 0 "))
Querydiff <- paste0(' SELECT Opt FROM Optdiffdec WHERE Optdiffnum =',Oppdiffzahl)
Optdiff <- sqldf(Querydiff)
Vardec <- Optdiff$Opt
print('Ergebnis in Variable Vardec')
