//
//  button.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct button: View {
    
    @State var imageChange = false
    
    var body: some View {
        VStack{
            
            switch imageChange{
            case true:
                Image(systemName: "sun.max")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
                
            case false:
                Image(systemName: "cloud.drizzle")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
            }
                
            }
            Button("Hola Mundo") {
                // action
            }
            
            Button(action: {
                // action here
                imageChange.toggle()
            }, label: {
                VStack{
                    Text("Cambia el tiempo")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .font(.title)
                    //.cornerRadius(20)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
            })
        }
    }

#Preview {
    button()
}

