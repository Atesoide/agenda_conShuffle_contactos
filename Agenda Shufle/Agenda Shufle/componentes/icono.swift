//
//  icono.swift
//  Agenda Shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct Icono: View {
    var tamaño: CGFloat
    var rutaIcono: String
    var padding: CGFloat = 10
    
    var body: some View {
        Image(systemName: rutaIcono)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: tamaño, height: tamaño)
            .padding(padding)
    }
}

#Preview {
    Icono(tamaño: 50, rutaIcono: "plus")
}
