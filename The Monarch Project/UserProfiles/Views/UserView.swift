//
//  UserView.swift
//  Monarch Project
//
//  Created by jimenez on 6/12/22.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: .infinity, height: 100)
                    .foregroundColor(Color.red)
                HStack {
                    Circle()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    VStack {
                        Text("Username")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("Joined 2022")
                            .fontWeight(.light)
                    }
                }
                .padding()
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
