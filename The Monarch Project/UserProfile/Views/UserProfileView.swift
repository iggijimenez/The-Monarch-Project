//
//  UserProfileView.swift
//  Monarch Project
//
//  Created by jimenez on 6/13/22.
//

import SwiftUI

struct UserProfileView: View {
    
    @ObservedObject var model = UserViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
//    @State private var name: String = ""
    @State private var name: String = (UserDefaults.standard.string(forKey: "UDName") ?? "")
    @State private var ue: Bool = ((UserDefaults.standard.string(forKey: "ue")) != nil)
//    @State private var userID: String = (UserDefaults.standard.string(forKey: "value") ?? "")
    @State private var username: String = ""
    @State private var pronouns: String = ""
    
    
    let columns = [GridItem(.fixed(200)),
                   GridItem(.flexible(maximum: 250))]
    
    var body: some View {
        VStack {
            
            ProfileImage
            
            ProfileInfo
                .padding(.bottom, 20)
            
            HStack {
                AddButton
                DissButton
                
            }
        }
    }
    
    private var ProfileInfo: some View {
        //TODO: Make them go to the left side
        LazyVGrid(columns: columns) {
            Text("Name")
            TextField( "name", text: $name)
            
            Text("Username")
            TextField( "username", text: $username)
            
            Text("Pronouns")
            TextField( "pronouns", text: $pronouns)
        }
    }
    
    
    private var ProfileImage: some View {
        VStack {
            Circle()
                .foregroundColor(Color.gray)
                .frame(width: 150, height: 150)
                .padding(.top, 10)
            Text("Change profile photo")
                .font(.headline)
                .foregroundColor(Color.blue)
                .padding(.bottom, 20)
        }
    }
    
    private var AddButton: some View {
        Button("Add") {
            
            //Save name to local storage
            UserDefaults.standard.set(name, forKey: "UDName")
            
            //Save to the 'username' collection
            model.addData(name: name, ue: ue)
            
            presentationMode.wrappedValue.dismiss()
        }
        .foregroundColor(Color.white)
        .padding(10)
        .background(Color.blue)
        .cornerRadius(10)
        
        
    }
    
    private var DissButton: some View {
        VStack {
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .foregroundColor(Color.white)
            .padding(10)
            .background(Color.red)
            .cornerRadius(10)
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
        
    }
}
