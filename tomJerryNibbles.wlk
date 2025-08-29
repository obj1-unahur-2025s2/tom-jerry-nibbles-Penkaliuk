/*## Parte 1: velocidad máxima
Hacer un sistema en wollok que modele al gato tom y a los ratones jerry y nibbles 
El sistema tiene dos casos de uso principales: 
* Indicar que tom comió un ratón ( aclarando cuál ratón comió)  
* Indicar que tom corrió una distancia (aclarando cuantos metros). 

Lo que nos interesa de tom es saber la velocidad máxima a la que puede correr.

La velocidad máxima depende de la energía que tenga. 

La energía va a variar según vaya comiendo ratones y corriendo por ahí:

* Cuando tom corre, su energía disminuye en `cantidad de metros que corrió / 2` 
* Cuando tom come un ratón, su energía aumenta en `12 + el peso del ratón` 
* La velocidad máxima de tom es `5 + energía/10`

Tom comienza con 50 de energía

Existen 2 ratones.

* Jerry, cuyo peso es la `edad * 20`. Al inicio tiene 2 años, pero puede cumplir años. 
* Nibbles, cuyo peso es 35, siempre

Nota: Acá se trabaja polimorfismo, ordenes, consulta y estado del objeto.*/
object tom {
    var energia = 50
    var distancia = 0
method comerRaton(raton){
    energia = energia + 12 + raton.peso()
}
method distancia(metros){
    return distancia + metros
}
method velocidadMax(){
    return 5 + energia / 10
} 
method correr(metros){
    energia = energia - metros / 2
}
method energia2(){
    return 0 + energia
}
}
object jerry {
    var edad = 2
    method peso() {
        return edad * 20
  }
}

object nibbles {
    var edad = 0
    method peso(){
        return 35
    }
}

// Inventar otro ratón
/*
## Parte 2:  Poder comer y cazar.

Se agrega como requerimientos 
* Saber si tom puede cazar un ratón que está a cierta distancia (indicando la distancia)
* Cazar un ratón que está a cierta distancia (indicando el ratón y la distancia)

Puede cazar si tiene energía suficiente para recorrer esa distancia. Es
decir, la energía que gastaría en correr la distancia es menor a su propia
energía.

Cazar un ratón si puede, y hacer que lo coma.

Nota: Acá se busca ser capaz de evitar la duplicación de código (subtareas), 
y manejar correctamente métodos booleanos de consulta.*/

