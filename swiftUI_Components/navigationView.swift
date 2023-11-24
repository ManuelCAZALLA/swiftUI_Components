//
//  navigationView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct navigtionView: View {
    
    //Array de heroes
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Capitan America")
    ]
    
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(heros){ hero in
                    NavigationLink {
                        //desatination
                        heroDetail(data: hero)
                    } label: {
                        //celda
                        HStack{
                            Image(systemName: "person")
                            Text(hero.name)
                        }
                    }

                }
            }
            .navigationTitle("Heros")
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button("Filtrar datos"){}
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Filtrar datos"){}
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Filtrar datos"){}
                }
            }
            
        }
    }
}

#Preview {
    navigtionView()
}
