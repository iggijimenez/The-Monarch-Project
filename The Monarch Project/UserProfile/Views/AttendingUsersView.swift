//
//  AttendingUsersView.swift
//  Monarch Project
//
//  Created by jimenez on 6/22/22.
//

import SwiftUI

struct AttendingUsersView: View {
    
    @ObservedObject var model = UserViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            List (model.list) { item in
                if item.ue == false { // This just checks if there is a vaule in the database
                    Text(item.name)
                } else {
                    // Dont display anything.
                }
            }

            
            DissmissButton
        }
    }
    
    init() {
        model.getData()
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
