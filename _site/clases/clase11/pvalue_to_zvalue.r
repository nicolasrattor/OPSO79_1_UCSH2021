
## Obtener nivel de confianza desde valor Z
z <- 1.96
round(2*pnorm(-abs(z)),3)  ## Alfa


## Obtener valor Z desde nivel de confianza
alpha <- 0.05
round(qnorm(1-(alpha/2)),2) ## puntaje Z


