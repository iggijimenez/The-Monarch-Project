//
//  UserProfileView.swift
//  Monarch Project
//
//  Created by jimenez on 6/13/22.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
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
            // TODO: upload the data to firebase
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
