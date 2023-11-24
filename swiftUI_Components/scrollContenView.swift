//
//  scrollContenView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var imageChange = false
    @State var imageChange2 = false
    
    var body: some View {
        VStack{
            
            switch imageChange{
            case true:
                //imagen
                Image(systemName: "sun.max")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
                
            case false:
                //imagen
                Image(systemName: "cloud.drizzle")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 200, height: 200)
                    .padding()
            }
            
            
            //boton
            Button(action: {
                //accion here
                imageChange.toggle()
                
                
            }, label: {
                Text("Cambia el tiempo")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                //.cornerRadius(20)  //hasta iOS15
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            })
        }
        
    }
}

#Preview {
    ButtonView()
}
