//
//  NameModel.swift
//  Monarch Project
//
//  Created by jimenez on 1/14/22.
//

import Foundation
import Firebase

class NameModel: ObservableObject {
    
    @Published var namelist = [Names]()
    
    
    func addData(image: String, name: String) {
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        //Read the documents at a specific path
        db.collection("names").addDocument(data: ["image": image,  "name": name]) { error in
            
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
        db.collection("names").getDocuments { snapshot, error in
            print("Name Model")
            
            //checking for errors
            if error == nil {
                
                //no errors
                if let snapshot = snapshot {
                    
                    //Update the list property
                    DispatchQueue.main.async {
                        self.namelist = snapshot.documents.map { documen in
                            
                            return Names(id: documen.documentID,
                                         image: documen["image"] as? String ?? "",
                                         name: documen["name"] as? String ?? "")
                        }
                    }
                    
                }
            }
            else {
                
            }
            
        }
    }
    
}
