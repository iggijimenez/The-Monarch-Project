//
//  UserProfileView.swift
//  Monarch Project
//
//  Created by jimenez on 6/13/22.
//

import SwiftUI

struct UserProfileView: View {
    @State private var name: String = ""
    @State private var username: String = ""
    @State private var pronouns: String = ""
    
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(Color.gray)
                .frame(width: 150, height: 150)
            Text("Change profile photo")
                .font(.headline)
                .foregroundColor(Color.blue)
            
            HStack {
                VStack{
                    HStack {
                        Text("Name")
                        TextField( "name", text: $username)
                    }.padding()
                    
                    HStack {
                        Text("Username")
                        TextField( "username", text: $username)
                    }.padding()
                    
                    HStack {
                        Text("Pronouns")
                        TextField( "pronouns", text: $username)
                    }.padding()
                }.padding()
            } //HStack
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
            
    }
}
