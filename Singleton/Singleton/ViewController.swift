//
//  ViewController.swift
//  Singleton
//
//  Created by Hamza Mustafa on 16/02/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Accessing vlaue from  singleton class
        let user =  SingletonClass.shared.requestForUser()
        print("first name : \(user.fname)\nlast name : \(user.lname)")        
    }
}
