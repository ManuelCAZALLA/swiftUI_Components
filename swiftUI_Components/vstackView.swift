//
//  vstackView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct vstackView: View {
    var body: some View {
        VStack{
            Text("Hola")
            Spacer()
            Text("Manuel")
            Spacer()
            Text("Esto es SwiftUI")
                .font(.caption)
        }
        .font(.largeTitle)
        .frame(width: 300, height: 300)
        .background(Color.blue)
        .foregroundColor(.white)
        
    }
}

#Preview {
    vstackView()
}
