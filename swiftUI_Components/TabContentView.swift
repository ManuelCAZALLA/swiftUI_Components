//
//  TabView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct TabContentView: View {
    var body: some View {
        TabView{
            ImageView()
                .tabItem {
                    Image(systemName: "star")
                    Text("imagen")
                }
            
        }
    }
}

#Preview {
    TabContentView()
}
