//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI
import Firebase

struct UpcomingView: View {
  
  var event: Event
  @State var variable1 = false
  
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
        Text(event.name)
          .fontWeight(.semibold)
          .font(.title)
          .foregroundColor(.white)
        
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
//    .onTapGesture {
//      self.variable1.toggle()
//    }
//    .fullScreenCover(isPresented: $variable1) {
//      EventDetailViewTest(Variable2: self.$variable1)
//    }
    
  }
}


//struct UpcomingView_Previews: PreviewProvider {
//  static var previews: some View {
//    UpcomingView()
//      .previewLayout(.sizeThatFits)
//  }
//}
