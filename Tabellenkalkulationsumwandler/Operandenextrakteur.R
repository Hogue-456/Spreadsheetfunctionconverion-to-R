Operanden <- sqldf(" SELECT Zeile, Substr FROM Relteil WHERE Operatoren = 1 ")
Ab <- c(2, Operanden$Zeile + 1)
Bis <- c(Operanden$Zeile - 1, str_length(z))
Bestandteile <- data.frame(Ab, Bis)
Bestandteile$Substr <- z
Bestandteile$Res <- substr(Bestandteile$Substr, Bestandteile$Ab, Bestandteile$Bis)
Funktionsart <- 'Operandenfunktion'
Ab <- c(0, Bestandteile$Ab)
Bis <- c(0, Bestandteile$Bis)
Fnct <- c(z, Bestandteile$Substr)
Res <- c(Funktionsart, Bestandteile$Res)
Bestandteile <- data.frame(Ab, Bis, Fnct, Res)