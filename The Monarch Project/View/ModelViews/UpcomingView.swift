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
    
    //MARK: This is going to be what the admin is about to update
    var body: some View {
        
        
        ZStack(alignment: .topLeading) {
            
            ZStack{
                //MARK: NEEDS TO BE A VARAIBLE
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
                    .cornerRadius(0)
                Text("Upcoming Events")
                    .padding(1)
                    .foregroundColor(Color.black)
                    .font(.headline)
            }
        }
    }
}
