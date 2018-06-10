##

# Autor: Eduardo Palma Martín
# Proyecto: Trabajo de Fin de Grado de Biología de la Universidad de Málaga: "Caracterización Fenotípica y Clasificación de Variedades de Persea americana Mill a partir de Fotografías Digitales"
# Fecha: 20/06/2018


# Importar datos
source("Scripts/Cargar_datos.R")

if (!require(ggplot2)) install.packages('ggplot2')
library("ggplot2")
if (!require(ggjoy)) install.packages('ggjoy')
library("ggjoy")
if (!require(ggridges)) install.packages('ggridges')
library("ggridges")
if (!require(ggpubr)) install.packages('ggpubr')
library("ggpubr")
if (!require(magrittr)) install.packages('magrittr')
library("magrittr")
if (!require(gridExtra)) install.packages('gridExtra')
library("gridExtra")
if (!require(grid)) install.packages('grid')
library("grid")

#Paleta de color
paletaH<-c("#8dd3c7","#ffffb3",
           "#bebada","#fb8072",
           "#80b1d3","#fdb462",
           "#b3de69","#fccde5")

#Gráficas de densidad de cada variable y su escala.
ggjoy1<-ggplot(datos1, aes(x=Lh,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy1

ggjoy2<-ggplot(datos1, aes(x=ah,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy2

ggjoy3<-ggplot(datos, aes(x=bh,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy3

ggjoy4<-ggplot(datos, aes(x=Ch,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy4

ggjoy5<-ggplot(datos, aes(x=hh,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy5

grid.arrange(ggjoy1, ggjoy2, ggjoy3, ggjoy4, ggjoy5, ncol=2)

ggjoy6<-ggplot(datos, aes(x=area_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy6

ggjoy7<-ggplot(datos, aes(x=perim_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy7

ggjoy8<-ggplot(datos, aes(x=circ_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy8

ggjoy9<-ggplot(datos, aes(x=feret_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy9

ggjoy10<-ggplot(datos, aes(x=minFeret_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy10

ggjoy11<-ggplot(datos, aes(x=Ar_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy11

ggjoy12<-ggplot(datos, aes(x=round_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy12

ggjoy13<-ggplot(datos, aes(x=solidity_h,y=variedad,fill=variedad,height=..density..))+
  geom_density_ridges(scale=4,aes(colour=factor(variedad)))+
  scale_y_discrete(expand = c(0.01,0))+
  scale_x_continuous(expand = c(0.01,0))+
  scale_colour_manual(values = paletaH)+theme_joy()+
  scale_fill_manual(values = paletaH)+
  theme(legend.position = "none")
ggjoy13

grid.arrange(ggjoy6, ggjoy7, ggjoy8, ggjoy9, ggjoy10, ggjoy11, ggjoy12, ggjoy13,ncol=2)

##Para el resto de variables basta con sustituir el valor de "x" en la primera linea de cada ggjoy