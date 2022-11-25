//
//  UserViewModel.swift
//  Monarch Project
//
//  Created by jimenez on 6/23/22.
//

/*
 This is the UserViewModel where we CRUD the users information(name, ue) to 'usernames' collection.
 */

import Foundation
import Firebase

class UserViewModel: ObservableObject {
    
    @Published var list = [Username]()
    
    
    func addData(name: String, ue: Bool) {
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        
        // Add a new document in collection "username"
        db.collection("usernames").document(UserDefaults.standard.object(forKey: "value") as! String).setData([
                // MARK: Change the parameters to the users inputed choices
                "name": name,
                "ue": ue
            ]) { err in
                if let err = err {
                    print("Error writing document: \(err)")
                } else {
                    print("Document successfully written!")
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
                            return Username(id: d.documentID, name: d["name"] as? String ?? "", ue: ((d["ue"]) != nil)) //cast as a string and if not found return as a empty string
                        }
                    }
                }
            } else {
                //Handle the error
                
            }
        }
    }
    
    
    
    
    
}

