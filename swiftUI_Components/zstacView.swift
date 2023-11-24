//
//  zstacView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct zstacView: View {
    var body: some View {
        VStack{
            // imagen linterna verde
            Image(decorative: "linterna")
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(25)
            // capa oscura trans
            Image(decorative: "")
                .resizable()
                .background(.black)
                .frame(width: 200, height: 200)
                .cornerRadius(25)
                .opacity(0.4)
            
            // Titulo
            Text("Linterna Verde")
                .font(.title)
                .foregroundColor(.white)
        }
    }
    
}


#Preview {
    zstacView()
}
