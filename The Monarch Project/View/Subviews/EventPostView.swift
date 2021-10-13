//
//  EventPostView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI
import Firebase

struct EventPostView: View {
  
  @ObservedObject var event = EventData()
  
    var body: some View {
      Image("dreamer_mural")
        .resizable()
        .scaledToFit()
        .frame(width: 300, height: 230)
    }
}

struct EventPostView_Previews: PreviewProvider {
    static var previews: some View {
        EventPostView()
    }
}
