//
//  TUserViewModel.swift
//  Monarch Project
//
//  Created by jimenez on 6/29/22.
//


import Foundation
import Firebase

class TUserViewModel: ObservableObject {
    
    @Published var list = [UpcomingEvent]()
    
    
    func addData(name: String, attending: Int) {
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        //Read the documents at a specific path
        db.collection("usernames").addDocument(data: ["name": name, "attending": attending]) { error in
            
            
            if error == nil {
                // No errors
                
                //call the data to retriece latest data
                self.getData()
                
            } else {
                // Handle the error
            }
        }
        
    }
    
    func getData() {
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        //Read the documents at a specific path
        db.collection("upcoming_event").getDocuments { snapshot, error in
            
            //checking for errors
            if error == nil {
                //no errors
                
                if let snapshot = snapshot {
                    // update
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create usernames
                        self.list = snapshot.documents.map { d in
                            
                            //Create a Username
                            return UpcomingEvent(id: d.documentID,
                                                 name: d["name"] as? String ?? "",
                                                 image: d["image"] as? String ?? "",
                                                 description: d["description"] as? String ?? "",
                                                 number_of_attendees: d["number_of_attendees"] as? Int ?? 0)
                        }
                    }
                }
            } else {
                //Handle the error
                
            }
        }
    }
    
    
    
    
    
}


