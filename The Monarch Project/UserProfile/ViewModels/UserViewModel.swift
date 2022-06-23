//
//  UserViewModel.swift
//  Monarch Project
//
//  Created by jimenez on 6/23/22.
//

import Foundation
import Firebase

class UserViewModel: ObservableObject {
    
    init(event: Event){
        self.event = event
    }
    
    var event: Event
    @Published var list = [Event_User]()
            
    func getData() {
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        //Read the documents at a specific path
        db.collection("usernames").document(event.id).getDocument { snapshot, error in
            
            //checking for errors
            if error == nil {
                
                //no errors
                if let snapshot = snapshot {
                    
                    //update the list property in the main thread
                    DispatchQueue.main.async {
                        let eventDocument = snapshot
                        guard let eventDictionary = eventDocument.data() else { return }
                        
                        
                    }
                    
                }
            } else {
                //Handle the error
                
            }
        }
    }
    
}

