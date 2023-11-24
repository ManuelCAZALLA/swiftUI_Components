//
//  heroDetail.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct heroDetail: View {
    
    var data: Hero
    
    var body: some View {
        VStack{
            Text("Soy \(data.name)")
                .bold()
        }
    }
}

#Preview {
    heroDetail(data: Hero(name: "Batman"))
}
