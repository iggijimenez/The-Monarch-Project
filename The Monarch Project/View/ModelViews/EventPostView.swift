//
//  EventPostView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI
import Firebase

struct EventPostView: View {
  
  var event: Event
  
  //MARK: BODY
  var body: some View {
    ZStack {
      Image(event.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(4)
        .overlay(
          Rectangle()
            .foregroundColor(.black)
            .opacity(0.4))
      
      VStack{
        Text(event.name)
          .fontWeight(.heavy)
          .font(.title)
          .foregroundColor(.white)
          .lineLimit(1)
          .minimumScaleFactor(0.7)
        Text("click me to learn more")
          .fontWeight(.light)
          .font(.subheadline)
          .foregroundColor(.white)
      }
      
    }
    .padding(.vertical, 20)
  }
}



//MARK: PREVIEW
struct EventPostView_Previews: PreviewProvider {
  
  static var event1 = Event(id: "", name: "String", image: "String", description: "String")
  
  static var previews: some View {
    Group {
      EventPostView(event: event1)
    }
    .previewLayout(.sizeThatFits)
  }
}

