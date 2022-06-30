//
//  AttendingUsersView.swift
//  Monarch Project
//
//  Created by jimenez on 6/22/22.
//

import SwiftUI

struct AttendingUsersView: View {
    
    @ObservedObject var model = UserViewModel()
    @ObservedObject var tmodel = TUserViewModel()
    
    @State  var showDuck: Bool = true
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            if showDuck {
                List (model.list) { item in
                    Text(item.name)
                    Text(item.id)
                }
            } else {
                Text("🐘")
            }
            
            
            
            DissmissButton
        }
    }
    
    init() {
        model.getData()
        tmodel.getData()
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
