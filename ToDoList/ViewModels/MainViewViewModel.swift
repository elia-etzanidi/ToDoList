//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import Foundation
import Combine
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = "" // using empty string to observe when it changes
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
            
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
