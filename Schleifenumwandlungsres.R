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
Vardec <- paste0('Gesamtliste$Conc <- ',Vardec)
Vardecsubstr <- sqldf(" SELECT Varprop FROM Argumentlistenbackup300621 WHERE Pos IN('Funktion_1') AND Nummer > 1 ")
Vardecsubstr <- Vardecsubstr$Varprop
Progvardeclist <- c(Vardecsubstr, Vardec)
Vardec <- data.frame(Progvardeclist)
print('Ergebnis in Variable Vardec')
