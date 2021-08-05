//
//  ViewController.swift
//  ExampleMVP2
//
//  Created by Samuel Sales on 04/08/21.
//

import UIKit

class ViewController: UIViewController, UserViewDelegate {
    
    let userPresenter = UserPresenter(userService: UserService())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userPresenter.setUserViewDelegate(viewDelegate: self)
        // Do any additional setup after loading the view.
    }


}

