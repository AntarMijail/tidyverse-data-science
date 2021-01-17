#Preguntas de esta tarea Tema 1

#Si ejecutas ggplot(data = mpg), ¿qué observas?

Un cuadro gris, yo me lo imagino cómo el ambiente en donde los datos van a estar siendo representados,
pero aún no indicamos de que forma los vamos a representar
  
#Indica el número de filas que tiene el data frame mpg. ¿Qué significa cada fila?
234 filas, cada fila es un auto diferente
  
#Indica el número de columnas que tiene el data frame mpg. ¿Qué significa cada columna?
11 columnas, son las variables presentes en cada auto
  
#Observa la variable drv del data frame. ¿Qué describe? Recuerda que puedes usar la instrucción ?mpg para consultarlo directamente en R.
Nos indica el tipo de transmisión que tiene cada auto, f= frontal r=trasera 4= tracción en las 4 ruedas

#Realiza un scatterplot de la variable hwy vs cyl. ¿Qué observas? 
#hwy -> rendimiento en autopista
#cyl->cilindros
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
  
#Realiza un scatterplot de la variable cty vs cyl. ¿Qué observas?
#cty-> rendimiento en ciudad
#cyl->cilindros
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty, y = cyl))  

#Realiza un scatterplot de la variable class vs drv. ¿Qué observas? ¿Es útil este diagrama? ¿Por qué?
#class-> tipo de auto (Suv, compacto, ...)
#drv-> transmisión
ggplot(data = mpg) +
  geom_freqpoly(mapping = aes(x = class, y = drv)) 

En este gráfico se observa el tipo de tracción que tiene cada categoría de auto. Es útil para representar que tipo de 
transmisión tiene cada categoría de auto. Por ejemplo no se tiene registrados autos de 2 asientos con tracción frontal
o en las 4 ruedas, y todas las pikups registradas tienen tracción en todas las ruedas. La categoría de autos
que tiene una mayor siversidad en el tipo de tracción registrada son los subcompactos.
