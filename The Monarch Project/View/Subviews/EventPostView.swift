//
//  EventPostView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI
import Firebase

struct EventPostView: View {
  
  var event: EventModel
  @ObservedObject var model = ViewModel()
  
  //MARK: BODY
  var body: some View {
    
    ZStack {
      Image(event.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 400, height: 300)
        .clipped()
        .overlay(
          Rectangle()
            .foregroundColor(.black)
            .opacity(0.4))
      
      VStack{
        Text(event.title)
          .fontWeight(.heavy)
          .font(.title)
          .foregroundColor(.white)
        
        Button(action: {
          model.getData()
        }) {
          HStack(spacing: 8) {
            Text("refresh")
            Image(systemName: "restart.circle")
              .imageScale(.large)
          }
          .foregroundColor(.blue)
        }//: BUTTON
      }
    }
    Spacer()
  }
}



//MARK: PREVIEW
struct EventPostView_Previews: PreviewProvider {
  
  static var event1 = EventModel(title: "String", image: "String", description: "String")
  
  static var previews: some View {
    Group {
      EventPostView(event: event1)
    }
    .previewLayout(.sizeThatFits)
  }
}

