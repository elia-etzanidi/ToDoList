//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import Foundation
import Combine
import FirebaseAuth
import FirebaseFirestore

/// ViewModel for single todo item

class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item //creating a copy because item is a constant
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
