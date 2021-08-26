Formel <- c('=C2&"Hallo Welt"','=TEIL(C2;3;5)','=WENN(C2=3;1;0)','=LÄNGE(C2)','=TEIL(C2;3;5)','=WENN(C2=3;1;0)')
Funktionsstartliste <- data.frame(Formel)
Funktionsstartliste$Nummer <- 1
Funktionsstartliste$Nummer <- cumsum(Funktionsstartliste$Nummer)
source('~/Tabellenkalkultionsumwandler/Argumentlistenschleife.R', encoding = 'UTF-8')