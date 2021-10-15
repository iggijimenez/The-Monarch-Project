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
    
    
    ZStack(alignment: .topLeading) {
      
      ZStack{
      Image("dreamer_mural")
        .resizable()
        .scaledToFit()
        .cornerRadius(4)
        .overlay(
          Rectangle()
            .foregroundColor(.black)
            .opacity(0.4))
        Text("Current Event")
          .fontWeight(.semibold)
          .font(.title)
      
      }
      ZStack(){
        Rectangle()
          .frame(width: 230, height: 50)
          .foregroundColor(Color.orange)
          .cornerRadius(10)
        Text("Upcoming Events")
          .padding(1)
          .foregroundColor(Color.black)
          .font(.headline)
      } //
    } //ZStack with alignment
  }
}

struct UpcomingView_Previews: PreviewProvider {
  static var previews: some View {
    UpcomingView()
      .previewLayout(.sizeThatFits)
  }
}
