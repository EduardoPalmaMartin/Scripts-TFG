##

# Autor: Eduardo Palma Martín
# Proyecto: Trabajo de Fin de Grado de Biología de la Universidad de Málaga: "Caracterización Fenotípica y Clasificación de Variedades de Persea americana Mill a partir de Fotografías Digitales"
# Fecha: 20/06/2018


# Cargar paquetes
if (!require(readxl)) install.packages('readxl')
library(readxl)
if (!require(caret)) install.packages('caret')
library(caret)  
if (!require(Rtsne)) install.packages('Rtsne')
library(Rtsne)

set.seed(42)

#Importar datos
source("scripts/cargar_datos.R")

#Seleccionar variables 
datos2<-datos1[,c(3, 10:length(names(datos1)))]

#Convertir a data frame
df<-as.data.frame(datos2)

#Convertir en factor Variedad
Variedades<-factor(df$variedad)

#Selección de datos numéricos
my_data_n<-df[,-1]

#Crear los modelos de cluster para distintos niveles de perplejidad
t1 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 5  , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t2 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 10 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t3 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 15 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t4 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 20 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t5 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 25 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t6 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 30 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t7 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t8 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 40 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t9 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 45 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)
t10= Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 50 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)

#Crear los modelos de cluster para distintos número de steps
t11 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=10, pca_center=TRUE, pca_scale=TRUE)
t12 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=20, pca_center=TRUE, pca_scale=TRUE)
t13 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=60, pca_center=TRUE, pca_scale=TRUE)
t14 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=120, pca_center=TRUE, pca_scale=TRUE)
t15 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=500, pca_center=TRUE, pca_scale=TRUE)
t16 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=1000, pca_center=TRUE, pca_scale=TRUE)
t17 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=2000, pca_center=TRUE, pca_scale=TRUE)
t18 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=3000, pca_center=TRUE, pca_scale=TRUE)
t19 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=4000, pca_center=TRUE, pca_scale=TRUE)
t20 = Rtsne(as.matrix(my_data_n), check_duplicates=FALSE, pca=TRUE, perplexity= 35 , theta=0, dims=2, initial_dims=11, max_iter=5000, pca_center=TRUE, pca_scale=TRUE)

#Representar modelos cluster
ggplot(as.data.frame(t1$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t2$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t3$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t4$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t5$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t6$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t7$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t8$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t9$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t10$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t11$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t12$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t13$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t14$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t15$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t16$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t17$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t18$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t19$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()

ggplot(as.data.frame(t20$Y), aes(x=V1, y=V2,color=Variedades)) +  
  geom_point(size=3) +
  xlab("Dim1") + ylab("Dim2") +
  ggtitle("t-SNE") + theme_minimal()