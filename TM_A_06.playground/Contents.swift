import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator ***
func *** (a:Int, b:Int) -> Int{
    var Result = a
    for _ in 1...b-1 {
            Result = Result * a
    }
    return Result
}
7***5
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
let Array = [2,5,3,4]
var V = Array

prefix operator |>
prefix func |> (a:Array<Int>) -> Array<Int>{
    var flag: Bool = true
    while(flag){
        flag = false
        for i in 0..<V.count - 1 {
            if V[i] > V[i+1] {
                let swap = V[i]
                V[i] = V[i+1]
                V[i+1] = swap
                flag = true
            }
        }
    }
    return V
}

|>V



/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class Cantidad{
    var valores:[Int]
    init(v:[Int]){
        self.valores = v
    }
    
    subscript(idx:Int) -> Int{
        get{
            return valores[idx]
        }
        
        set(NewValue){
            valores[idx] = valores[idx] * NewValue
        }
    }
    
}

let v1 = Cantidad(v: Array)

v1[0] = 2
v1[1] = 2
v1[2] = 2
v1[3] = 2

Array
v1.valores
//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let Coleccion = ["A":1, "B":2,"C":3]

func ExisteValor(idx:String){
    guard let existe = Coleccion[idx] else {
    print("No Existe")
    return
    }
    print("existe \(existe)")
}
ExisteValor(idx:"D")
Coleccion["D"]








