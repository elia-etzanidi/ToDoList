//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import Foundation
import Combine
import FirebaseFirestore

/// ViewModel for list of items view
/// Primary tab

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete todo list item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
