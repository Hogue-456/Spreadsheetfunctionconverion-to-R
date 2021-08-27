Arglist1 <- sqldf(" SELECT * FROM Argumentliste WHERE Pos IN('Funktion_1') ")
Arglist1$Operand <- substr(Arglist1$Fnct, Arglist1$Bis+1, Arglist1$Bis+1)
Opmatchlist <- c('=','&','+','*','-','/','')
Opmatchres <- c('paste0(',',','+','*','-','/',')')
Opsel <- data.frame(Opmatchlist, Opmatchres)
Arglistres <- sqldf(" SELECT Operand, Opmatchres FROM Arglist1 LEFT JOIN Opsel ON Arglist1.Operand=Opsel.Opmatchlist ")
Arglist1$Varprop <- paste0('Gesamtliste$',Arglist1$Pos,'_',Arglist1$Nummer-1)
Arglist1$Opp <- Arglistres$Opmachtres
Vardec <- 'paste0('
Queryzahl <- 2
Nummer <- Arglist1$Nummer
Nummermax <- max(Arglist1$Nummer)+1
Nummer <- c(Nummer, Nummermax)
Num <- data.frame(Nummer)
Progseczahl <- 1
Arglist1$Opp <- Arglistres$Opmatchres
Arglist1$Vardec <- paste0(Arglist1$Varprop, Arglist1$Opp)
Arglist1$Prog <- '~/Tabellenkalkultionsumwandler/Concatenateprogram/Verkettungsschleife.R'
Num$Prog <- c(Arglist1$Prog,'~/Tabellenkalkultionsumwandler/Concatenateprogram/Schleifenumwandlungsres.R')
Progseczahl <- 1
Progsecquery <- paste0(' SELECT Prog FROM Num WHERE Nummer =',Progseczahl)
Progsecres <- sqldf(Progsecquery)
Progsec <- Progsecres$Prog
source(Progsec)
