//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numeroTelefonico: String = ""
    
    var botonSalir: () -> Void = {
        print("NO")
    }
    var botonAgregar: (_ nombre: String, _ numero: String) -> Void = {nombre, numero in
        print("NO")
    }
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.cyan)
            TextField("placeholder", text: $nombre)
                .padding(10)
        }
        
        
        Text("Colocar el campo del número telefónico")
        TextField("Placeholder numeros", text: $numeroTelefonico)
            .frame(height: 45)
            .padding(10)
        
        HStack{ //Icono de agregar un contacto
            Icono(tamaño: 65, rutaIcono: "person.crop.circle.badge.plus")
                .onTapGesture {
                    botonAgregar(nombre, numeroTelefonico)
                }
            Spacer()
            Icono(tamaño: 65, rutaIcono: "return")//Icono de salir
                .background(nombre.isEmpty ? Color.red: Color.cyan)//condicional
                .onTapGesture {
                    botonSalir()
                }
        }
        .background(Color.cyan)
        
    }
}

#Preview {
    PantallaAgregarContacto()
}
