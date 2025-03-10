import UIKit

class persona{
    var nombre:String
    init(nombre: String) {
        self.nombre = nombre
    }
    func presentarse(){
        print("hola soy \(nombre)")
        print("----------")
    }
}
class estudiante:persona{
    var grado:String
    init(nombre:String,grado: String) {
        self.grado = grado
        super.init(nombre: nombre)
    }
    override func presentarse() {
        super.presentarse()
        print("estoy en el grado \(grado)")
    }
}

let estudia = estudiante(nombre: "Claire", grado: "1ro")
estudia.presentarse()

struct personax{
    var nombre:String
}

var persona3 = personax(nombre: "carlos")
var persona2 = persona3

print("----------")
print(persona2.nombre)
print(persona3.nombre)
print("----------")

class personaj{
    var nombre:String
    init(nombre: String) {
        self.nombre = nombre
    }
}

var persona4 = personaj(nombre: "RAOL")
var persona5 = persona4

persona5.nombre = "Maria "

print("----------")
print(persona4.nombre)
print(persona5.nombre)
print("----------")
