//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//
import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan2", telefono: "12345"),
    ContactoAgenda(nombre: "Juan3", telefono: "12345"),
    ContactoAgenda(nombre: "Juan4336534564", telefono: "12345"),
    ContactoAgenda(nombre: "Juan5", telefono: "12345"),
    ContactoAgenda(nombre: "Juan6", telefono: "12345"),
    ContactoAgenda(nombre: "Juan7", telefono: "12345"),
    ContactoAgenda(nombre: "Juan8", telefono: "12345"),
]

struct PantallaAgenda: View {
    var largoDePantalla = UIScreen.main.bounds.width
    var anchoDePantalla = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    contacto_prevista(contacroAMostrar: contacto, alPulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla agenda")})
                }
                
            }
            .background(Color.cyan)
            .frame(width: largoDePantalla, alignment: Alignment/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
        .background(Color.green)
        
        
    }
}

#Preview {
    PantallaAgenda()
}
