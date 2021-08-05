//
//  UserPresenter.swift
//  ExampleMVP2
//
//  Created by Samuel Sales on 04/08/21.
//

import Foundation

protocol UserViewDelegate: NSObjectProtocol {
    
}

class UserPresenter {
    private let userService: UserService
    weak private var userViewDelegate: UserViewDelegate?
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func setUserViewDelegate(viewDelegate: UserViewDelegate) {
        self.userViewDelegate = viewDelegate
    }
    
    
    
}
