//
//  User.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
