Texte1 <- c(paste0('Num <- c(1, 2, 3)'),
paste0('Res2 <- c(\'Uebereinstimmung\',\'Uebereinstimmung\',\'Uebereinstimmung\')'),
paste0('Var1 <- c(3,\'Ausgabe\', \'Ausgabe\')'),
paste0('Gesamtliste <- data.frame(Num, Var1, Res2)'))
Zuordteile$Zuordteile <- paste0('Gesamtliste$',Zuordteile$Zuordteile)
Zuordteile <- Zuordteile$Zuordteile
Texte2 <- c(Zuordteile)
Texte3 <- c(paste0('Op1<- nrow(sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4',Opper,'Funktion_1_Var5" ))'),
paste0('Op2<- nrow(sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4',Opperopp,' Funktion_1_Var5" ))'),
paste0('Declist <- c(Op1, Op2, 1)'),
paste0('Declist <- data.frame(Declist)'),
paste0('Dec <- 1'),
paste0('Dec <- data.frame(Dec)'),
paste0('Dec$Numlist <- 1'),
paste0('Declist$Prog <- c('),paste0('"~/Exampleprogramm/Example20210816/Op1res.R",'),
paste0('"~/Exampleprogramm/Example20210816/Op2res.R",'),
paste0('"~/Exampleprogramm/Example20210816/Decres.R")'),
paste0('Declist <- sqldf(" SELECT * FROM Declist WHERE Declist > 0 ")'),
paste0('Declist$Num <- 1'),
paste0('Declist$Num <- cumsum(Declist$Num)'),
paste0('Progselectzahl <- 1'),
paste0('Query <- paste0(\' SELECT Prog FROM Declist WHERE Num =\',Progselectzahl)'),
paste0('Progselect <- sqldf(Query)'),
paste0('Progselectres <- Progselect$Prog'),
paste0('source(Progselectres)'))
Progteile <- c(paste0('Op1<- sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4',Opper,'Funktion_1_Var5" )'),
paste0('Op1$Dec <- Op1$Funktion_1_Var2'),
paste0('Numlist <- c(Dec$Numlist, Op1$Num)'),
paste0('Dec <- c(Dec$Dec, Op1$Dec)'),
paste0('Dec <- data.frame(Dec, Numlist)'),
paste0('Progselectzahl <- Progselectzahl + 1'),
paste0('Query <- paste0(\' SELECT Prog FROM Declist WHERE Num =\',Progselectzahl)'),
paste0('Progselect <- sqldf(Query)'),
paste0('Progselectres <- Progselect$Prog'),
paste0('source(Progselectres)'),
paste0('Op2<- sqldf(" SELECT * FROM Gesamtliste WHERE Funktion_1_Var4',Opperopp,'Funktion_1_Var5" )'),
paste0('Op2$Dec <- Op2$Funktion_1_Var3'),
paste0('Numlist <- c(Dec$Numlist, Op2$Num)'),
paste0('Dec <- c(Dec$Dec, Op2$Dec)'),
paste0('Dec <- data.frame(Dec, Numlist)'),
paste0('Progselectzahl <- Progselectzahl + 1'),
paste0('Query <- paste0(\' SELECT Prog FROM Declist WHERE Num =\',Progselectzahl)'),
paste0('Progselect <- sqldf(Query)'),
paste0('Progselectres <- Progselect$Prog'),
paste0('source(Progselectres)'),
paste0('Dec <- sqldf(" SELECT Dec FROM Dec ORDER BY Numlist")'),
paste0('Dec$Num <- 1'),
paste0('Dec$Num <- cumsum(','Dec$Num)'),
paste0('Dec <- sqldf(" SELECT Dec FROM Dec WHERE Num > 1 ")'))
Resvarname <- 'Dec'
Varres <- paste0('Gesamtliste$',Resvarname,' <- Dec$Dec')
Progtexte <- c(Progteile, Varres)
Progtextlist <- c(Texte1, Texte2, Texte3, Progteile, Varres)
Progreslist <- data.frame(Progtextlist)
print('Ergebnis in Variable Progreslist')
