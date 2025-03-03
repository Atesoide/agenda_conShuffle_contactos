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
        
        HStack(alignment: VerticalAlignment.center, spacing: 25) {
            ZStack{//boton izquierdo
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(Color.purple)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
                
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
            }
            Spacer()
            ZStack{//Boton derecho
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(Color.purple)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.red)
                
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para iniciar la llamada")
            }
            
            
        }
        
        
    }
}

#Preview {
    PantallaAgenda()
}
