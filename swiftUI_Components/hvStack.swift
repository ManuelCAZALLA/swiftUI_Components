//
//  hvStack.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct hvStack: View {
    var body: some View {
        VStack{
            HStack{
                Text("Mi nombre es :")
                Text ("Manuel")
            }
            HStack{
                Text("Mi nombre es :")
                Text("Angela:")
            }
        }
       
    }
}

#Preview {
    hvStack()
}
