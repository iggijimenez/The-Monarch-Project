//
//  Homescreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct Homescreen: View {
    
    @State var isAddPresented = false
    @StateObject var model = EventModel()
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                ScrollView{
                    ForEach(model.upcomingEvents) { event in
                        NavigationLink(
                            destination: UpcomingEventView(event: event), label: {
                                UpcomingView(event: event)
                            }
                        )
                    }
                    ForEach(model.pastEvents) { event in
                        NavigationLink(
                            destination: EventDetailView(event: event), label: {
                                EventPostView(event: event)
                            }
                        )
                    }
                    .listRowInsets(EdgeInsets())
                }
                
            }
            .navigationBarTitle("Feed")
            .navigationBarItems(trailing: Button(action: {
//                self.isAddPresented = true
                isAddPresented.toggle()
            }) {
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(Color.orange)
            })
            .fullScreenCover(isPresented: $isAddPresented,
                   onDismiss: { self.isAddPresented = false }) {
                UserProfileView()
            }
        }
        .onAppear {
            model.getData()
        }
    }
    
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
