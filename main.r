"__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje Utilizado: R

+ Tema: Funciones en R. Clases de funciones. Funciones incorporadas (built-in).

+ Fuentes Utilizadas:
    1. [R Built-in Functions](https://www.javatpoint.com/r-built-in-functions)
    2. [How to write Functions in R](https://www.r-bloggers.com/2016/09/how-to-write-functions-in-r/)"


## -----------------------------------------------------------------------------

#Definir una función que saque la  potencia de dos numeros Enteros, si el que es el exponente es numeric (Float), dara un mensaje que no se pude realizar:

message("#Definir una función que saque la  potencia de dos numeros Enteros, si el que es el exponente es numeric (Float), dara un mensaje que no se pude realizar:")


potencia <- function(x,y){
  # Calcula la potencia de x a la y (y debe ser integer)
  if(is.integer(y) == TRUE){
    resultado <- x^y
    print(paste(x, "elevado a la", y, "es igual a =>",resultado))
  }
  else{
    cat("Ingrese un valor entero para y:", y, "<=>", "is.integer(y) =>",is.integer(y))
    cat("\nRecuerde un valor entero en R se define con una \"L\" (Mayuscula)")
  }
}

print(potencia)

## Ahora la probamos con algunos valores:
message("\n## Ahora la probamos con algunos valores:")

## Definimos un vector con numeros enteros pseudos-aletorios:
message("\n## Definimos un vector con numeros enteros pseudos-aletorios:")

enteros <- sample.int(10, size = 5, replace = TRUE)


for (i in enteros) {
  # Evalumaos la función con valores con un bucle for:
  p <- potencia(i-2, i)
  print(p)
}


## -----------------------------------------------------------------------------
# Definimos nuestra función con return():
message("\n# Definimos nuestra función con return():")

## Haremos un función que devuelva un valor lógico, donde nos devuelva True si el numero dado es par ó FALSE en caso contrario:
message("\n## Haremos un función que devuelva un valor lógico, donde nos devuelva True si el numero dado es par ó FALSE en caso contrario:")

par <- function(p){
  # ¿Es par o no?:
  if(p %% 2 == 0){
    return(paste(p,"=> Es par"))
  }
  else{
    return(paste(p, "=> No es Par, observa p %% 2 ==", p%%2))
  }
}

# Probamos nuestra función par:
message("\n# Probamos nuestra función par:")

par(1.9)
par(2L)
par(12354)

## Probemos con más de un valor a la vez:
message("\n## Probemos con más de un valor a la vez:")

for (x in 2:15) {
  print(par(sample.int(x, size = 1, replace = TRUE)))
}


## -----------------------------------------------------------------------------
# Organicemos un vector cualesquiera con decimales:
message("\n# Organicemos un vector cualesquiera con decimales:")
x <- runif(10, min = 0, max = 15)
cat("Orden inicial de x:",x)

## Orden ascendente:
message("\n## Orden ascendente:")
orden_as <- sort(x)
print(orden_as)

## Orden Descendente:
message("\n## Orden Descendente:")
orden_des <- sort(x, decreasing = TRUE)
print(orden_des)


## -----------------------------------------------------------------------------
print(seq(from = 12.3, to = 60.32, by = 0.3))


## -----------------------------------------------------------------------------
# Todas en mayusculas:
message("\n# Todas en mayusculas:")
toupper("Sirve para poner todo en mayuscula")

# Todo en minuscula:
message("\n# Todo en minuscula:")
tolower("Este Texto Sirve de Ejemplo")



## -----------------------------------------------------------------------------
# Llamamos a un vector pasado y lo ponemso a iteroa en el bucle donde utlizaremos rep
for (i in enteros) {
  # Repetimos "i" 5 veces.
  print(rep(i,5))
}


## -----------------------------------------------------------------------------
# Ulizando paste() para expresar mi gusto por la Hamburgesa:
message("\n# Ulizando paste() para expresar mi gusto por la Hamburgesa:")

cat(paste("Mi Comentario\n","Hamburgesa", "Papas Fritas", "CocaCola", sep = "||Yo amo la: "))

message("\nEntre Otras........\n")


## -----------------------------------------------------------------------------

# Calculamos reiices cuadarada de los numeros aletorios dados por i
for (t in sample.int(15, size = 15, replace = FALSE)) {
  print(paste("La raiz cuadrada de",t , "Es =>", sqrt(t)))
}




## -----------------------------------------------------------------------------
# Evaluamos un valor del  pero por medio de un:
message("\n")
exp(0)
exp(seq(2,10,2))


## -----------------------------------------------------------------------------
# Definimos los angulos nobles:
message("\n# Definimos los angulos nobles:")
notable <- c(pi/6,pi/4, pi/3,pi/2,0)
print(notable)

# iteramos los valores:
message("\n# iteramos los valores:")

for (x in notable) {
  print(paste("Coseno de",x, "=>", cos(t), "Seno de",x, "=>", sin(t), "Tangente de", x, "=>", tan(x)))
  cat("\n")
  
}

