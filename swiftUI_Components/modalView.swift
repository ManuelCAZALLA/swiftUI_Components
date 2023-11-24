//
//  modalView.swift
//  swiftUI_Components
//
//  Created by Manuel Cazalla Colmenero on 31/10/23.
//

import SwiftUI

struct ModalView: View {
    @State var showDetail = false
    
    var body: some View {
        Button(action: {
            //action here
            showDetail.toggle()
        }, label: {
            Text("Show Modal")
        })
        .sheet(isPresented: $showDetail, content: {
            DetailModalView(showDetail: $showDetail)
        })
    }
}



#Preview {
    ModalView()
}
