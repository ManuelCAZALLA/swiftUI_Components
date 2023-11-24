//
//  Listas3View.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct Listas3View: View {
    let bestFriends = ["Jorge", "Manuel", "Angel"] 

    var body: some View {
        NavigationView {
            List {
                ForEach(bestFriends, id: \.self) { friend in
                    Text(friend)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            // Acción 1
                            Button(action: {
                                // Código de la acción
                            }) {
                                Label("Silenciar", systemImage: "bell.fill")
                            }
                            .tint(.red)
                        }
                }
            }
            .navigationTitle("Lista de Amigos")
        }
    }
}


 

#Preview {
    Listas3View()
}
