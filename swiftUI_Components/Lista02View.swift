//
//  ListadosView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct Hero: Identifiable {
    let id: UUID = UUID()
    let name: String
}

struct Lista2View: View {
    
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Batman")]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(heros){ hero in
                    
                    NavigationLink {
                        // vista destino
                        VStack{
                            Text("Detalle de \(hero.name)")
                        }
                    } label: {
                        // celda
                        HStack{
                            Image(systemName: "person")
                            Text(hero.name)
                        }
                    }

                }
            }
            .navigationTitle("Heroes")
        }
    }
}

#Preview {
    Lista2View()
}
