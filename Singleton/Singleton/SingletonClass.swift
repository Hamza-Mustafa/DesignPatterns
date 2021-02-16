//
//  SingletonClass.swift
//  Singleton
//
//  Created by Hamza Mustafa on 16/02/2021.
//

import Foundation

class SingletonClass {
    static let shared = SingletonClass()
    var sharedUser = userObject()
    
    func requestForUser() -> userObject {
        return self.sharedUser
    }
}

class userObject {
    var fname = ""
    var lname = ""
}
