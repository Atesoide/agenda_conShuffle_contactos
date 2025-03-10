//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contactoPruebas = ContactoAgenda(nombre: "Juan4336534564", telefono: "12345", imagen: "miku2")


struct contacto_prevista: View {
    var contacroAMostrar: ContactoAgenda
    var alPulsar: () -> Void = {print("hol")} //guarda una funcion sin pase de parametros y que devuelva nada
    
    let esquinaRedondeada = CGSize(width: 70, height: 70)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            VStack{
                Image(contacroAMostrar.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 65, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinaRedondeada))
                    .background(Color.mint)
            }.background(Color.white)
            
            Spacer()
                    
            VStack(alignment: HorizontalAlignment.leading){//Alineamiento a la izquierda
                Text(contacroAMostrar.nombre)
                Text(contacroAMostrar.telefono)
            }.background(Color.clear)
                .frame(width: 150, height: 70)
            Spacer()
            
        }
        .frame(width: 250, height: 80)
        .background(Color.mint)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 50)))
        .onTapGesture {
            alPulsar()
        }
        
    }
}

#Preview {
    contacto_prevista(contacroAMostrar: contactoPruebas)
}
