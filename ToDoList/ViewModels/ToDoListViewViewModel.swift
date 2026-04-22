//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import Foundation
import Combine

/// ViewModel for list of items view
/// Primary tab

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
