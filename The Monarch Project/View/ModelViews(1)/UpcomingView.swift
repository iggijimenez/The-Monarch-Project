//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI
import Firebase

struct UpcomingView: View {
  
  //MARK: BODY
  var body: some View {
    ZStack{
//      HStack(alignment: .topLeading) {
//        Text("hi")
//      }
      Image("event.image")
        .resizable()
        .scaledToFit()
        .cornerRadius(4)
        .overlay(
          Rectangle()
            .foregroundColor(.black)
            .opacity(0.4))
      
        
        VStack{
          Text("event.title")
            .fontWeight(.heavy)
            .font(.title)
            .foregroundColor(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.7)
          
        }
        
      }
      .padding(.vertical, 20)
  }
  
}
