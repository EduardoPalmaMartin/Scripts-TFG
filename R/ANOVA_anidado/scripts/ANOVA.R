##

# Autor: Eduardo Palma Mart�n
# Proyecto: Trabajo de Fin de Grado de Biolog�a de la Universidad de M�laga: "Caracterizaci�n Fenot�pica y Clasificaci�n de Variedades de Persea americana Mill a partir de Fotograf�as Digitales"
# Fecha: 20/06/2018

# Cargar paquetes para el markdown

if (!require(knitr)) install.packages('knitr')
library(knitr)
if (!require(markdown)) install.packages('markdown')
library(markdown)
if (!require(rmarkdown)) install.packages('rmarkdown')
library(rmarkdown)
if (!require(readxl)) install.packages('readxl')
library(readxl)

# Importar datos
source("Scripts/Cargar_datos.R")

# Generar PDF con los resultados del ANOVA
for (i in c(10:length(names(datos1)))){rmarkdown::render(input = "Scripts/ANOVA.Rmd",
                    output_format = "pdf_document",
                    output_file = paste(i,names(datos[i]), ".pdf", sep='_'),
                    output_dir = "output")}

## Si el c�digo anterior falla y est� instalado el parche "MikteX 2.9", ejecutar el siguiente c�digo:
Sys.getenv("PATH")
Sys.setenv(PATH=paste(Sys.getenv("PATH"),"C:/Program Files/MiKTeX 2.9/miktex/bin/x64/",sep=";"))
