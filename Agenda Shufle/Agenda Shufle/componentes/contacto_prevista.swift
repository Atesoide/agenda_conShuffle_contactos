//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contactoPruebas = ContactoAgenda(nombre: "Juan4336534564", telefono: "12345")


struct contacto_prevista: View {
    var contacroAMostrar: ContactoAgenda
    var alPulsar: () -> Void = {print("hol")} //guarda una funcion sin pase de parametros y que devuelva nada
    
    let esquinaRedondeada = CGSize(width: 25, height: 25)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            VStack{
                Image("nombre_imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinaRedondeada))
                    .background(Color.blue)
            }.background(Color.white)
            
            Spacer()
                    
            VStack(alignment: HorizontalAlignment.leading){//Alineamiento a la izquierda
                Text(contacroAMostrar.nombre)
                Text(contacroAMostrar.telefono)
            }.background(Color.gray)
                .frame(width: 150)
            Spacer()
            
        }
        .frame(width: 250)
        .background(Color.red)
        .onTapGesture {
            alPulsar()
        }
        
    }
}

#Preview {
    contacto_prevista(contacroAMostrar: contactoPruebas)
}
