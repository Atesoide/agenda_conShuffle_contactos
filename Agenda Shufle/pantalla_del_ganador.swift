//
//  pantalla_del_ganador.swift
//  Agenda Shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contactoAlterno = ContactoAgenda(nombre: "Telefoncio", telefono: "6561234567")
let esquinaRedondeada = CGSize(width: 100, height: 100)

struct pantalla_del_ganador: View {
    var contactoAMolestar: ContactoAgenda
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200)
                .tint(Color.red)
                .foregroundColor(Color.purple)
            Image("nombre_imagen")
                .resizable()
                .scaledToFit()
                .frame(width: 170)
                .clipShape(RoundedRectangle(cornerSize: esquinaRedondeada))
        }
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 35, height: 35))
                .frame(width: 300, height: 150)
                .foregroundColor(.indigo)
            VStack{
                Text("¡GANADOR!")
                    .foregroundStyle(Color.white)
                    .padding(15)
                    .bold()
                Text(contactoAMolestar.nombre)
                    .foregroundStyle(Color.mint)
                Text(contactoAMolestar.telefono)
                    .foregroundStyle(Color.mint)
            }
        }
        
        
    }
}

#Preview {
    pantalla_del_ganador(contactoAMolestar: contactoAlterno)
}
