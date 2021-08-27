Otherstring <- sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart NOT IN('String','Zellbezug') ")
Otherstring$Resprop <- Otherstring$Res
Varpropres <- Varprop$Varprop
Zahl <- Varprop$Zahl
Varprop <- c(Varpropres, Otherstring$Resprop)
Zahl <- c(Zahl, Otherstring$Zahl)
Varprop <- data.frame(Zahl, Varprop)
Varpropzahl <- Varpropzahl + 1
Queryvarprop <- paste0('SELECT Proglist FROM Progrespropwahllist WHERE Zahl = ',Varpropzahl)
Src <- sqldf(Queryvarprop)
Src <- Src$Proglist
source(Src)