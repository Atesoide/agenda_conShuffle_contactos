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
    @State private var imagenSeleccionada: String = "Imagen"
    
    var botonSalir: () -> Void = {
        print("NO")
    }
    var botonAgregar: (_ nombre: String, _ numero: String, _ imagen: String) -> Void = {nombre, numero, imagen in
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
                    botonAgregar(nombre, numeroTelefonico, imagenSeleccionada)
                }
            Spacer()
            Icono(tamaño: 65, rutaIcono: "return")//Icono de salir
                .background(nombre.isEmpty ? Color.red: Color.cyan)//condicional
                .onTapGesture {
                    botonSalir()
                }
        }
        .background(Color.cyan)
        
        HStack{
            Image("nombre_imagen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 75)
                .onTapGesture {
                    imagenSeleccionada = "nombre_imagen"
                }
            Image("miku2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 75)
                .onTapGesture {
                    imagenSeleccionada = "miku2"
                }
        }
    }
    
}

#Preview {
    PantallaAgregarContacto()
}
