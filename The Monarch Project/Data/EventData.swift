//
//  EventData.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import Foundation
import Firebase

class EventData: ObservableObject {
  
  @Published var list = [Event]()
  
  func addData(desciption: String, image: String, name: String) {
    
    //get a reference to the database
    let db = Firestore.firestore()
    
    //Read the documents at a specific path
    db.collection("events").addDocument(data: ["desciption": desciption,  "image": image, "name" : name]) { error in
      
      //checking for errors
      if error == nil {
        self.getData()
      } else {
        
      }
    }
    
    
  }
  
  func getData() {
    
    //get a reference to the database
    let db = Firestore.firestore()
    
    //Read the documents at a specific path
    db.collection("events").getDocuments { snapshot, error in
      
      //checking for errors
      if error == nil {
        
        //no errors
        if let snapshot = snapshot {
          
          //update the list propert in hte main thred
          DispatchQueue.main.async {
            
            //get all the documents and create event_user
            self.list = snapshot.documents.map { d in
              print(self.list)
              
              //Create a event item for each document returned
              return Event(id: d.documentID,
                           description: d["description"] as? String ?? "",
                           image: d["image"] as? String ?? "",
                           name: d["name"] as? String ?? "") //cant find the value
            }
            
          }
          
        }
      } else {
        //Handle the error
        
      }
    }
  }
  
}

