Argliststring <- sqldf(" SELECT Res, Zahl FROM Argumentliste WHERE Funktionsart IN('String') ")
Argliststring$Resprop <- paste0('\'',substr(Argliststring$Res,2,str_length(Argliststring$Res)-1),'\'')
Varpropres <- Varprop$Varprop
Zahl <- Varprop$Zahl
Varprop <- c(Varpropres, Argliststring$Resprop)
Zahl <- c(Zahl, Argliststring$Zahl)
Varprop <- data.frame(Zahl, Varprop)
Varpropzahl <- Varpropzahl + 1
Queryvarprop <- paste0('SELECT Proglist FROM Progrespropwahllist WHERE Zahl = ',Varpropzahl)
Src <- sqldf(Queryvarprop)
Src <- Src$Proglist
source(Src)
