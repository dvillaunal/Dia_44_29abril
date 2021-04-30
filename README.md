__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje Utilizado: R

+ Tema: Funciones en R. Clases de funciones. Funciones incorporadas (built-in).

+ Fuentes Utilizadas:
    1. [R Built-in Functions](https://www.javatpoint.com/r-built-in-functions)
    2. [How to write Functions in R](https://www.r-bloggers.com/2016/09/how-to-write-functions-in-r/)
    
---------------------------------------------------------------------------

# Funciones:

Las funciones son útiles cuando se desea realizar una determinada tarea varias veces. Una función acepta argumentos de entrada y produce la salida ejecutando comandos válidos de R que están dentro de la función. En R, cuando se crea una función, el nombre de la función y el archivo en el que se crea la función no tienen por qué ser el mismo y se pueden tener una o más definiciones de funciones en un solo archivo de R.

Las funciones se crean en R utilizando el comando `function()`. 

### Sintaxis:

    function_name = function(argumentos){
           cuerpo de la función
    }
    
    # Segunda forma de definir una función:
    "Cambia solo el hecho del = por un <-"
    
    function_name <- function(argumentos){
           cuerpo de la función
    }

> Nota: depués nos daremos cuenta que se pueden definir de diferentes maneras, es decir, hay casos donde las funciones tienen otra sintaxis

Los diversos componentes / partes de una función son:

+ __Nombre de la Función:__ es el nombre real de la función. Se almacena en el entorno R como un objeto con este nombre.

+ __Argumentos:__ un argumento es un marcador de posición. Siempre que se invoca una función, se pasa un valor al argumento. Son opcionales; es decir, una función puede no contener argumentos. Además, los argumentos pueden tener valores predeterminados.

+ __Cuerpo de la función:__ Contiene todo el conjunto de declaraciones que define lo que realmente hace la función.


+ __Valores de retorno:__ Son los valores que devuelve la función después de la ejecución exitosa de las tareas, en general, es la última expresión en el cuerpo de la función a ser evaluada.


## Ejemplos:

```{r}

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
```


Ahora vamos a definir funciones que nos devuelvan valores con el `return()` que hace que nuestra función salga y devuelva el valor a su llamador.


```{r}
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
```

# Diferentes tipos de funciones en R:

## Funciones Built-in:

Estas son las funciones que vienen con R para abordar una tarea específica tomando un argumento como entrada y dando una salida basada en la entrada dada.

Miremos algunas de ellas (Son Muchas...la verdad dejare un link de ahí una guía [functions Built-in](https://www.statmethods.net/management/functions.html))

### Sort()

Devuelve el orden Ascendente o Descendente (`decreasing =` `FALSE` ó `TRUE`, respectivamente) de un vector `x` cualesquiera.

> Sintaxis: sort(x, decreasing = FALSE _por defecto_)

```{r}
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
```




### Seq()

Genera una secuencia del número entre dos números especificados.


> Sintaxis: seq (Secuencia de numeros como numeric) & seq.int (secuencia de numeros enteros[integer])
>
> seq.int(from, to, by, length.out, along.with)

Aquí está la explicación de sus parámetros:

+ `from` & `to` valor inicial y final de la secuencia.

+ `by` Incremento/espacio entre dos números consecutivos en secuencia.

+ `length.out` la longitud requerida de la secuencia.

+ `along.with`: se refiere a la longitud a partir de la longitud de este      argumento.

```{r}
print(seq(from = 12.3, to = 60.32, by = 0.3))
```

### Toupper() & tolower()

Las dos funciones, toupper y tolower, son funciones que se aplican a la cadena para cambiar las mayúsculas y minúsculas de las letras en las oraciones.

```{r}
# Todas en mayusculas:
message("\n# Todas en mayusculas:")
toupper("Sirve para poner todo en mayuscula")

# Todo en minuscula:
message("\n# Todo en minuscula:")
tolower("Este Texto Sirve de Ejemplo")

```
### Rep()

Esta función replica el valor tantas veces como se especifique.

> Sintaxis: rep(value, # de veces a repetir)

```{r}
# Llamamos a un vector pasado y lo ponemso a iteroa en el bucle donde utlizaremos rep
for (i in enteros) {
  # Repetimos "i" 5 veces.
  print(rep(i,5))
}
```

### Paste()

Esta función es para concatenar cadenas junto con algún carácter específico en el medio.

> Sintaxis: paste(x, sep= " ", collapse= NULL)

```{r}
# Ulizando paste() para expresar mi gusto por la Hamburgesa:
message("\n# Ulizando paste() para expresar mi gusto por la Hamburgesa:")

cat(paste("Mi Comentario\n","Hamburgesa", "Papas Fritas", "CocaCola", sep = "||Yo amo la: "))

message("\nEntre Otras........\n")
```



Entre Otras........

## Funciones Matematicas:

R proporciona una amplia variedad de funciones matemáticas. 


### Sqrt()
Esta función calcula la raíz cuadrada de un número o vector numérico.

```{r}

# Calculamos reiices cuadarada de los numeros aletorios dados por i
for (t in sample.int(15, size = 15, replace = FALSE)) {
  print(paste("La raiz cuadrada de",t , "Es =>", sqrt(t)))
}


```

### Exp:

Esta función calcula el valor exponencial de un número o un vector numérico.


```{r}
# Evaluamos un valor del  pero por medio de un:
message("\n")
exp(0)
exp(seq(2,10,2))
```

### Cos, Sin, Tan:

Estas son funciones (Cos(x), Sin(x), Tan(x)) de trigonometría implementadas en R aquí.

```{r}
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
```

## Entre Otras:

__[Funciones Predefinidas](https://www.javatpoint.com/r-built-in-functions)__
