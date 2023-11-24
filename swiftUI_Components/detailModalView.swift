//
//  detailModalView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct DetailModalView: View {

    //referencia a memoria de una variable booleana
   @Binding var showDetail: Bool
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack{
            Text("soy el modal...")
            
            Button(action: {
                //poner a false
                //showDetail.toggle()
                
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("Cerrar el modal")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(20)
            })
        }
    }
}
