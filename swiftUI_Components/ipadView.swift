//
//  ipadView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 2/11/23.
//

import SwiftUI

import SwiftUI

struct IpadView: View {
    @State private var heros = ["Goku","Krillin","Vegeta"]
    @State private var selectedHero: String?
    
    var body: some View {
        NavigationSplitView {
            List(heros, id:\.self, selection: $selectedHero, rowContent: Text.init)
                .navigationSplitViewColumnWidth(500)
        } detail: {
            //detalle
            
            Text(selectedHero ?? "Selecciona un heroe")
        }

    }
}

#Preview {
    IpadView()
}
