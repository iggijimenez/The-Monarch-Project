//
//  AttendingUsersView.swift
//  Monarch Project
//
//  Created by jimenez on 6/22/22.
//

import SwiftUI

struct AttendingUsersView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            List{
                Text("Iggi Jimenez")
                Text("Edison Li")
                Text("Jaylen Shleb")
            }
            
            DissmissButton
        }
    }
    
    private var DissmissButton: some View {
        Button("Dismiss") {
            // TODO: upload the data to firebase
            presentationMode.wrappedValue.dismiss()
        }
        .foregroundColor(Color.white)
        .padding(10)
        .background(Color.blue)
        .cornerRadius(10)
        
        
    }
}

struct AttendingUsersView_Previews: PreviewProvider {
    static var previews: some View {
        AttendingUsersView()
    }
}
