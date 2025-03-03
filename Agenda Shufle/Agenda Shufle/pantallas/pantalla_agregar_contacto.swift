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
        
        HStack{
            Icono(tamaño: 65, rutaIcono: "person.crop.circle.badge.plus")
            Spacer()
            Icono(tamaño: 65, rutaIcono: "return")
                .background(nombre.isEmpty ? Color.red: Color.cyan)//condicional
        }
        .background(Color.cyan)
        
    }
}

#Preview {
    PantallaAgregarContacto()
}
