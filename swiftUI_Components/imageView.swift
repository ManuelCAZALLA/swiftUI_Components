//
//  imageView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct ImageView: View {
    //vm
    var body: some View {
        VStack{
            Image(systemName: "house")
                .resizable()
                .frame(width: 200 , height: 200)
            
            Divider()
            
            //imagen asincrona...
            AsyncImage(url: URL(string: "https://i.blogs.es/f7b0ed/steve-jobs/1366_2000.jpg")) { Image in
                //pinto la imagen
                Image
                    .resizable()// Ocupa todo el dispositivo
                
            } placeholder: {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(4)
            }
            .frame(width: 200, height: 200)

            Divider()
            
            Image(decorative: "linterna")
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(25)
            
        }
        
    }
}

#Preview {
    ImageView()
}
