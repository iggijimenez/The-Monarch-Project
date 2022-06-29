//
//  UserViewModel.swift
//  Monarch Project
//
//  Created by jimenez on 6/23/22.
//

import Foundation
import Firebase

class UserViewModel: ObservableObject {
    
    @Published var list = [Username]()
    
    
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
        db.collection("usernames").getDocuments { snapshot, error in
            
            //checking for errors
            if error == nil {
                //no errors
                
                if let snapshot = snapshot {
                    // update
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create usernames
                        self.list = snapshot.documents.map { d in
                            
                            //Create a Username
                            return Username(id: d.documentID, name: d["name"] as? String ?? "",
                                            attending: d["attending"] as? Int ?? 0) //cast as a string and if not found return as a empty string
                        }
                    }
                }
            } else {
                //Handle the error
                
            }
        }
    }
    
    
    
    
    
}

