//
//  FormularioView.swift
//  KcSwiftUIComponents
//
//  Created by Jose Luis Bustos Esteban on 31/10/23.
//

import SwiftUI

struct FormularioView: View {
    @State var name:String = ""
    @State var apell1:String = ""
    @State var apell2:String = ""
    @State var hasChildren:Bool = false
    private var categories = ["Programador","Analista","Full Stack"]
    @State var selectedCategory = "Analista"
    
    
    var body: some View {
        NavigationStack{
            Form(){
                
                Section {
                    //conteoles del formulario
                    TextField("Nombre", text: $name)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    TextField("Aepllido1", text: $apell1)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TextField("Apellido 2", text: $apell2)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                } header: {
                    //nombre de la seccion
                    Text("Datos del empleado")
                }
    

                
                Section {
                    Toggle(isOn: $hasChildren) {
                        Text("Tienes hijos?")
                    }
                } header: {
                    Text("Familia")
                }
                .listRowBackground(Color.orange)

                
                //lista categoria
                
                Section {
                    Picker(selection: $selectedCategory) {
                        //lista de datos
                        ForEach(categories, id:\.self){
                            Text($0)
                        }
                        
                        
                    } label: {
                        Text("Categoria del RH")
                    }
                    .pickerStyle(.menu)

                    
                } header: {
                    Text("Datos laborales")
                }
                
                //boton enviar
                
                Section {
                    Button(action: {
                        //validar.... funcion del VM
                    }, label: {
                        HStack{
                            Spacer()
                            Text("Validar datos")
                            Spacer()
                        }
                    })
                    .foregroundColor(.white)
                }
                .listRowBackground(Color.orange)
                
            }
        }
        
    }
}

#Preview {
    FormularioView()
}
