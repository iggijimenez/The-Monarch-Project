//
//  EventBanner.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI

struct EventBanner: View {
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 220, height: 50)
                .cornerRadius(20)
                .foregroundColor(.orange)
            Text("Upcoming Events")
                .foregroundColor(.black)
                .font(.title2)
                .fontWeight(.bold)
        }
        .padding(.vertical, 20)
    }
}


struct EventBanner_Previews: PreviewProvider {
    static var previews: some View {
        EventBanner()
    }
}
