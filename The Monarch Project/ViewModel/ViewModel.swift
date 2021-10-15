//
//  ViewModel.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
  
  init(event: Event){
    self.event = event
    
    let rsvpStatus = Self.hasTheUserHasRSVPed(event: event)
    self._hasTheUserRSVPed = Published(initialValue: rsvpStatus)
  }
  
  var event: Event
  @Published var hasTheUserRSVPed: Bool
  @Published var list = [Event_User]()
  @Published var attending: Int = 0
  
  func addData(name: String, like: String) {
    
    //get a reference to the database
    let db = Firestore.firestore()
    
    //Read the documents at a specific path
    let reference = db.collection("upcoming_event").document(event.id)
    reference.updateData([
      "number_of_attendees": FieldValue.increment(Int64(1))
    ])
    attending += 1
    rememberThisEventTheUserHasRSVPed(event: event)
  }
  
  private func rememberThisEventTheUserHasRSVPed(event: Event) {
    // use UserDefaults to save the even'ts ID
    let defaults = UserDefaults.standard
    defaults.set(true, forKey: event.id)
    
    hasTheUserRSVPed = true
  }
  
  private static func hasTheUserHasRSVPed(event: Event) -> Bool {
    // use UserDefaults to read the event's ID
    let defaults = UserDefaults.standard
    let array = defaults.bool(forKey:event.id)
    
    return array
  }
  
  func getData() {
    
    //get a reference to the database
    let db = Firestore.firestore()
    
    //Read the documents at a specific path
    db.collection("upcoming_event").document(event.id).getDocument { snapshot, error in
      
      //checking for errors
      if error == nil {
        
        //no errors
        if let snapshot = snapshot {
          
          //update the list property in hte main thread
          DispatchQueue.main.async {
            let eventDocument = snapshot
            guard let eventDictionary = eventDocument.data() else { return }
            
            self.attending = eventDictionary["number_of_attendees"] as? Int ?? 0
            
//            Event(id: d.documentID,
//                              name: d["name"] as? String ?? "", //cant find the value
//                              like: d["like"] as? String ?? "") //cant find the value
            //get all the documents and create event_user
            //            self.attending = (eventDocument.get("attendees") as? Int?)!
//            let result = Result {
//              try snapshot.data(as: UpcomingEvent.self)
////              snapshot.da
//            }
//            switch result {
//            case .success(let city):
//              if let city = city {
//                // A `City` value was successfully initialized from the DocumentSnapshot.
//                print("City: \(city)")
//              } else {
//                // A nil value was successfully initialized from the DocumentSnapshot,
//                // or the DocumentSnapshot was nil.
//                print("Document does not exist")
//              }
//            case .failure(let error):
//              // A `City` value could not be initialized from the DocumentSnapshot.
//              print("Error decoding city: \(error)")
//            }
          }
          
          
        }
      } else {
        //Handle the error
        
      }
    }
  }
  
}
