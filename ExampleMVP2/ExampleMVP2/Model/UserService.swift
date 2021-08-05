//
//  UserService.swift
//  ExampleMVP2
//
//  Created by Samuel Sales on 04/08/21.
//

import Foundation

class UserService {
    private let users: [User] = [
        User(name: "Niel", idade: 31, username: "nielBernardo", password: "12345"),
        User(name: "Samuel", idade: 21, username: "salessamuel", password: "54321"),
        User(name: "Princesa", idade: 5, username: "princesa", password: "12345")
    ]
    
    func getAllUser() -> [User] {
        return users
    }
    
    func getUser(username: String, callback: (User?) -> Void) {
        if let foundUser = users.first(where: {$0.username == username}) {
            callback(foundUser)
        } else {
            callback(nil)
        }
    }
    
}
