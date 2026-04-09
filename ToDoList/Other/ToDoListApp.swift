//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 9/4/26.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
