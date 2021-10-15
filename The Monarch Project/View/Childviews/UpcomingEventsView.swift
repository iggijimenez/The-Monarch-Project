//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI

struct UpcomingEventsView: View {
  
  @State var variable1 = false
  @State var status = "JOINs"
  
  var body: some View {
    VStack {
      
      HStack {
        VStack(alignment: .leading) {
          Text("Top Text")
          
          Image("dreamer_mural") //event.image
            .resizable()
            .scaledToFit()
            .frame(height: 280)
            .cornerRadius(25)
        }
      }
      
      Text("Upcoming Event")
        .font(.title2)
        .fontWeight(.semibold)
        .lineLimit(1)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      
      Text("This event we need helpers and we are alsing you all to come help us in this journey")
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      Spacer()
      
      Text("0 are attending")
        .font(.title)
        .fontWeight(.black)
      ZStack {
        Rectangle()
          .frame(width: 100, height: 50)
          .foregroundColor(.green)
          .cornerRadius(20)
        Text(status)
          .foregroundColor(.white)
          .font(.title2)
          .fontWeight(.heavy)
          .onTapGesture {
            self.variable1.toggle()
          }
        
      }
      
      
      Spacer()
    }
  }
}

struct UpcomingEventView_Previews: PreviewProvider {
  
  static var previews: some View {
    UpcomingEventsView()
  }
  
}
