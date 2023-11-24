//
//  hstackView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct hstackView: View {
    var body: some View {
        HStack{
            // Primer text
            Text("Mi nombre es :")
            // Segundo text
            Text("Steve jobs")
                .font(.title)
                .foregroundColor(.blue)
                
        }
        //.padding()
        .frame(width: 300, height: 150)
        .background(Color.yellow)
        
    }
}

#Preview {
    hstackView()
}
