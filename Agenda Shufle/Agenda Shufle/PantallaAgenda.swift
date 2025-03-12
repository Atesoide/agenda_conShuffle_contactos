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
var contactoSeleccionado: Bool = false
enum pantallasDisponibles: String, Identifiable{
    case pantallaAgregar, pantallaAleatorio
    
    var id: String {rawValue}
}

struct PantallaAgenda: View {
    var largoDePantalla = UIScreen.main.bounds.width
    var anchoDePantalla = UIScreen.main.bounds.height
    
    @State var contactosActuales: [ContactoAgenda] = [
    ContactoAgenda(nombre: "Aniria Diaz", telefono: "6561234567", imagen: "nombre_imagen"),
    ContactoAgenda(nombre: "Angel Alonso", telefono: "6567654321", imagen: "miku2"),
    ContactoAgenda(nombre: "Hola mundo", telefono: "6568934204", imagen: "miku3")]
    
    @State var pantallasAMostrar: pantallasDisponibles?
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 10) {
                    ForEach(contactosActuales){ contacto in//Muestra los contactos del arreglo de contactos actuales
                        NavigationLink{
                            Informacion_de_contacto(contacto: contacto)
                        } label: {
                            Contacto_prevista(contacroAMostrar: contacto)
                        }
                        .tint(Color.black)
                    }
                    
                }
                //.background(Color.cyan)
                .frame(width: largoDePantalla, alignment: Alignment/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .background(Color.white)
        }
        
        
        HStack(alignment: VerticalAlignment.center, spacing: 25) {
            ZStack{//boton izquierdo
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.pink)
                Image(systemName: "plus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .colorInvert()
                
            }
            .padding(15)
            .onTapGesture {
                pantallasAMostrar = pantallasDisponibles.pantallaAgregar
            }
            Spacer()
            ZStack{//Boton derecho
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(Color.pink)
                Image(systemName: "shuffle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .colorInvert()
                
            }
            .padding(15)
            .onTapGesture {
                pantallasAMostrar = pantallasDisponibles.pantallaAleatorio
                print("Lanzar un intent para iniciar la llamada")
            }
            
            
        }.background(Color.orange)
            .sheet(item: $pantallasAMostrar){ pantalla in
                switch(pantalla){
                case .pantallaAgregar:
                    PantallaAgregarContacto(
                        botonSalir: {
                        }, botonAgregar: {
                            nombre, numero, imagen in
                            let contactoNuevo = ContactoAgenda(nombre: nombre, telefono: numero, imagen: imagen)
                            contactosActuales.append(contactoNuevo)

                        })
                case .pantallaAleatorio:
                    Pantalla_del_ganador(contactoAMolestar: contactosActuales.randomElement() ?? contactosActuales[0])
                }
            }
        
    }
}

#Preview {
    PantallaAgenda()
}
