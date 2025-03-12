//
//  Informacion_de_contacto.swift
//  Agenda Shufle
//
//  Created by alumno on 3/12/25.
//

import SwiftUI

var contactoDefault = ContactoAgenda(nombre: "Telefoncio", telefono: "6561234567", imagen: "nombre_imagen")


struct Informacion_de_contacto: View {
    let esquinaRedonda = CGSize(width: 100, height: 100)
    var contacto: ContactoAgenda
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200)
                .foregroundColor(Color.indigo)
            Image(contacto.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 170)
                .clipShape(RoundedRectangle(cornerSize: esquinaRedonda))
        }
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 35, height: 35))
                .frame(width: 300, height: 150)
                .foregroundColor(.orange)
            VStack{
                Text("NOMBRE")
                    .foregroundStyle(Color.white)
                    //.padding(10)
                    .bold()
                    .underline()
                Text(contactoDefault.nombre)
                    .foregroundStyle(Color.white)
                Text("TELÉFONO")
                    .foregroundStyle(Color.white)
                    .bold()
                    .underline()
                Text(contactoDefault.telefono)
                    .foregroundStyle(Color.white)
            }
        }
        
        
    }
}

#Preview {
    Informacion_de_contacto(contacto: contactoDefault)
}
