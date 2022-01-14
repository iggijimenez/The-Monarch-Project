//
//  Settingscreen.swift
//  Monarch Project
//
//  Created by jimenez on 1/14/22.
//

import SwiftUI

struct Settingscreen: View {
    
    @ObservedObject var model = NameModel()
    
    
    @State var image = ""
    @State var name = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                HStack{
                    Text("Name: ")
                    TextField("", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        //Call the add data
                        model.addData(image: image, name: name)
                        
                        //clearing the textfield
                        //                        name = ""
                    } label: {
                        Image(systemName: "plus.rectangle")
                    }
                    
                }
                .padding()
                
                HStack{
                    Text("Image: ")
                    TextField("url link", text: $image)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        //Call the add data
                        model.addData(image: image, name: name)
                        
                        //clearing the textfield
                        //                        name = ""
                    } label: {
                        Image(systemName: "plus.rectangle")
                    }
                    
                }
                .padding()
                
                Spacer()
                Spacer()
            }
            
            .navigationBarTitle("SETTINGS")
        }
    }
    init() {
        model.getData()
    }
}

struct Settingscreen_Previews: PreviewProvider {
    static var previews: some View {
        Settingscreen()
    }
}
