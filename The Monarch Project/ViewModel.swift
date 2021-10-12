//
//  ViewModel.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
  
  @Published var list = [Event_User]()
  
  func getData() {
    
    //get a reference to the database
    let db = Firestore.firestore()
    
    //Read the documents at a specific path
    db.collection("event_users").getDocuments { snapshot, error in
      
      //checking for errors
      if error == nil {
        
        //no errors
        if let snapshot = snapshot {
          
          //update the list propert in hte main thred
          DispatchQueue.main.async {
            
            //get all the documents and create event_user
            self.list = snapshot.documents.map { d in
              
              //Create a event item for each document returned
              return Event_User(id: d.documentID,
                                name: d["name"] as? String ?? "", //cant find the value
                                like: d["like"] as? String ?? "") //cant find the value
            }
            
          }
          
        }
      } else {
        //Handle the error
        
      }
    }
  }
  
}
