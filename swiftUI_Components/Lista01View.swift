//
//  Lista01View.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 2/11/23.
//

import SwiftUI

struct Lista01View: View {
    
    let heros = ["Batman", "Spiderman", "Thor"]
    
   @State var heroSelected: String = "" // Guardo heroe seleccionado
    @State private var showAlert = false
    
    var body: some View {
        
        List {
            ForEach(heros, id: \.self){
                hero in
                // pinto lo que quiero que sea la celda
                Button {
                    heroSelected = hero
                    showAlert = true
                } label: {
                    Text(hero)
                }

            }
        }
        .alert(isPresented: $showAlert, content: { // le paso la direcciona a memoria $
            Alert(title: Text("El heroe selecciona es: \(heroSelected)"))
        })
    }
}

#Preview {
    Lista01View()
}
