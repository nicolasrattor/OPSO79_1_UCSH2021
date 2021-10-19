
## instalar paquetes
# install.packages("tidyr")
# install.packages("dplyr")
# install.packages("guaguas")

## Cargar paquetes
library(tidyr)
library(dplyr)

## Cargar data guaguas del paquete guaguas
guaguas <- guaguas::guaguas

## Filtrar guaguas desde 2018 en adelante (para que no quede tan pesado el dato)
guaguas2 <- guaguas %>% filter(anio>=2018) %>% select(anio,nombre,sexo,n)

## Replicar cada fila el número de veces que se inscribió cada nombres en cada año
guaguas2 <- as.data.frame(lapply(guaguas2, rep, guaguas2$n)) 

## Prueba de que funciona 
guaguas2 %>% filter(nombre=="Benjamín") %>% group_by(anio) %>% tally()
guaguas  %>% filter(nombre=="Benjamín"&anio>=2018) 

## guaguas desde 2018. Cada fila es una guagua
guaguas2 %>% arrange(n)
table(guaguas$sexo)
