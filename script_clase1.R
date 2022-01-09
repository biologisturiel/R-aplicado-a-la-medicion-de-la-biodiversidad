###### SCRIPT CLASE 1 #### 

# me indica la cantidad de paquetes disponibles 
nrow(available.packages()) 

objetoA <- c(2, 2, 2, 3)

objetoA <- c(2, 1, 2, 2)

objetoa <- c(1, 1, 2, 2)

abundancia <- c(12, 12, 11, 10, 8, 23)
abundancia
length(abundancia)

playas <- c("San Bartolo", "Pucusana", "Chancaíllo", "Santa Rosa", "Costa Azul", "Lurín")
playas
length(playas)

base_datos <- data.frame(
  Alumnos = c("Yessica", "Juan", "Uriel"),
  Nota = c(20, 17, 11)
)

base_datos

dim(base_datos)
length(base_datos)

data("iris")
dim(iris)

iris

data("InsectSprays")
dim(InsectSprays)
InsectSprays

vector_logico <- c(F, T, F, F, F, F)

length(abundancia)
length(playas)
length(vector_logico)

data <- data.frame(abundancia, playas, vector_logico)

vector_caracter <- c("2", "4", "7", "9")

#### convertir vectores 
as.character(abundancia)
as.character(vector_logico)

vector_logico
as.numeric(vector_logico)
as.logical()

### creando vectores 
Playas <- c("San Bartolo", "Pucusana", "Chancaíllo", "Santa Rosa", "Costa Azul", "Lurín")
class(Playas)

Nivel_contaminacion <- c("Saludable", "No Saludable", "Poco Saludable", "Saludable", "No Saludable", "No Saludable")
class(Nivel_contaminacion)

Presencia_garza <- c(T, F, T, T, F, T)
class(Presencia_garza)

Abundancia_garza <- c(12, 23, 10, 5, 10, 12)
class(Abundancia_garza)

data <- data.frame(playas, Nivel_contaminacion, Presencia_garza, Abundancia_garza)

data


# me muestra todos los objetos que tengo en el entorno
ls()


#### listas 
lista_a <- list(playas, Nivel_contaminacion, data, iris)


#### indexacion con vectores 
abundancia[3]
abundancia[3] <- 5

abundancia[3:5] 
abundancia[3:5] <- c(1, 2, 3)

abundancia[c(1,2,5)]
abundancia[c(1,2,5)] <- c(7,8,9)

### indexacion con data frames 
data[1, 2]
data[1, 2] <- c("No Saludable")

data[1, 2:4]
data[1, 2:4] <- c("Saludable", F, 30)

data[4:6, c(3,4)]

### indexacion con listas 
lista_a[[1]] 
lista_a[[2]] 
lista_a[[3]] 
lista_a[[4]] 


# usando dataeditR
install.packages("DataEditR")
library(DataEditR)

data_mamiferos <- read.csv("/home/biologisturiel/Descargas/data/data_sueño_mamiferos.csv")

data_edit(data_mamiferos)

df_modificado <- read.csv("/home/biologisturiel/Descargas/data_mamiferos_modificada.csv")

###### teoria de tidy data 
df1 <- data.frame(
  nombres = c("Hormiga A", "Hormiga B", "Hormiga C", "Hormiga D"),
  Pantanos_Villa = c(12, 22, 9, 10), 
  Ventanilla = c(0, 7, 6, 1)
) 

df2 <- data.frame(
  localidad = c("Pantanos de Villa, Ventanilla", "Pantanos de Villa, Ventanilla" ),
  Hormiga_A = c(12, 0), 
  Hormiga_B = c(22, 7), 
  Hormiga_C = c(9, 6), 
  Hormiga_D = c(10, 1)
) 

df3 <- data.frame(
  especie = c("Hormiga A", "Hormiga B", "Hormiga C", "Hormiga D", "Hormiga A", "Hormiga B", "Hormiga C", "Hormiga D"), 
  localidad = c("Pantanos de Villa", 'Pantanos de Villa', "Pantanos de Villa", "Pantanos de Villa", "Ventanilla", 'Ventanilla', "Ventanilla", "Ventanilla"), 
  abundancia = c(12, 22, 9, 10, 0, 7, 6, 1)
) 


#### base de datos formato para inext y vegan
library(iNEXT)
library(vegan)
data("ant")
data("spider")


library(rgbif)
library(rinat)

##### importando bases de datos
base_datos <- read.csv("/home/biologisturiel/Descargas/20220108-data.csv")

data("iris")
head(iris, 10)
head(iris, 20)

library(readxl)
df_excel <- read_excel('aca debe ir la dirección en donde se encuentra tu archivo, tu archivo debe acabar en xls o xlsx', sheet = "Hoja1")

library(gsheet)
df_excel_drive <- gsheet2tbl("https://docs.google.com/spreadsheets/d/13gV_HUqe55328loEn0XPaxxG7-pNbpZ9/edit#gid=1922099029")

library(data.table)
df_pesada <- fread("/home/biologisturiel/Descargas/data/data_emerita.csv")

# copiar del portapapeles (modificar)
df_clipboard <- read.delim.clipboard.("clipboard")

library(data.table)
df_gbif <- fread("/home/biologisturiel/Descargas/data/occurrence.txt")

df_aelegir <- fread(file.choose())

#### exportar base de datos
write.csv(data, "/home/biologisturiel/Descargas/data_playas.csv")
data("iris")
write.csv(iris, "df_iris_coma.csv", row.names = F, dec = ",")

library(openxlsx)
write.xlsx(data, "/home/biologisturiel/Descargas/data.xlsx")

### comandos fundamentales 
data$Abundancia_garza <- as.numeric(data$Abundancia_garza) 
class(data$Abundancia_garza)

str(data)

rm(iris)
rm(list = ls())


#### niveles del factor
levels(data$Nivel_contaminacion)

data$Nivel_contaminacion <- as.factor(data$Nivel_contaminacion)
levels(data$Nivel_contaminacion)

# resumen del objeto
boxplot(iris$Sepal.Length)

summary(iris)

# frecuencias absolutas del objeto
data("InsectSprays")
table(InsectSprays$spray)

# frecuencias relativas del objeto
prop.table(table(InsectSprays$spray))

##### trabajando con tidyverse 
df <- read.csv("/home/biologisturiel/Descargas/data/data_emerita.csv")
library(tidyverse)
glimpse(df)
head(df, 20)
tail(df, 10)

df$LC <- as.factor(df$LC)
class(df$LC)
unique(df$LC)

min(df$LCT)
max(df$LCT)

which.min(df$LCT)
which.max(df$LCT)

dim(df)

# promedio de NTP en funcion de  LC
aggregate(NTP ~ LC, df, mean)
aggregate(NTP ~ NMP, df, mean)

# mediana de NTP en funcion de  LC
aggregate(NTP ~ LC, df, median)
aggregate(NTP ~ NMP, df, median)

# desviacion estandar de NTP en funcion de  LC
aggregate(NTP ~ LC, df, sd)
aggregate(NTP ~ NMP, df, sd)

# valor minimo de NTP en funcion de  LC
aggregate(NTP ~ LC, df, min)
aggregate(NTP ~ NMP, df, min)

# valor maximo de NTP en funcion de  LC
aggregate(NTP ~ LC, df, max)
aggregate(NTP ~ NMP, df, max)




































