//
//  contacto_agenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    var nombre: String
    var telefono: String
    
    var imagen: String = "Imagen"
    var id: String { nombre }

}
/*
var nombre = "Pepito Veraz"

var _nombre: String

var nombre: set{
    let nombreValidado = filtrarPalabras(value)
    nombre = nombreValidado
} get {
    return nombre.split(" ")[0]
}
*/
