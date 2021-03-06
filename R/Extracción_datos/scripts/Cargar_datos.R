##

# Autor: Eduardo Palma Mart�n
# Proyecto: Trabajo de Fin de Grado de Biolog�a de la Universidad de M�laga: "Caracterizaci�n Fenot�pica y Clasificaci�n de Variedades de Persea americana Mill a partir de Fotograf�as Digitales"
# Fecha: 20/06/2018


# Importar datos
if (!require(readxl)) install.packages('readxl')
library(readxl)

datos <- read_excel("datos/datos.xlsx",
                    sheet = "datos2")

#Convertir datos en dataframe
raw_data<- as.data.frame(datos)

#Seleccionar datos num�ricos
my_data<-raw_data[,c(10:101)]

head(my_data)

#Subset limpio sin feretAngle ni feretX/feretY
clean_data<-within(raw_data,rm(feretX_h,feretY_h,feretAngle_h,feretX_e,feretY_e,feretAngle_e))

#Eliminar datos repetidos (�reas)

datos1<-within(clean_data,rm(area_hh,area_eh,area_hs,area_es,area_hb,area_eb,area_hr,area_er,area_hg,area_eg,area_hB,area_eB))




