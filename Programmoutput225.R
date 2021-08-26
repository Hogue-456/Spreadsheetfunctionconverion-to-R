Entscheidungshilfe225 <- data.frame(Funktionsart)
Decisionnumber225 <- nrow(sqldf(" SELECT * FROM Entscheidungshilfe225 WHERE Funktionsart IN('Operandenfunktion','Funktionsteile') "))
Program225 <- c('~/Tabellenkalkultionsumwandler/Einzelzellwertausgabe.R','~/Tabellenkalkultionsumwandler/Schleifenzellartausgabe.R')
Numberoptions225 <- c(0, 1)
Decisionprogram225 <- data.frame(Program225, Numberoptions225)
Programres225 <- paste0('SELECT Program225 FROM Decisionprogram225 WHERE Numberoptions225 =',Decisionnumber225)
Programoutput225 <- sqldf(Programres225)
Programoutputres225 <- Programoutput225$Program225
source(Programoutputres225, encoding = 'UTF-8')