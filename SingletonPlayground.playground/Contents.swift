//https://www.youtube.com/watch?v=5Ybgl8uEGng
import UIKit

struct userInfo {
    var fname : String
    var lname : String
}

var objUserInfo : userInfo?

class Singleton {
    static let shared = Singleton()
    
    // to restrict making more than one instance of a singleton class
    private init() {}
    
    func getUserInfo() -> userInfo? {
        return objUserInfo
    }
    
    func updateUserInfo1(para: userInfo) -> () {
        objUserInfo = para
    }
}

class User {
    func getUser() -> userInfo? {
        return Singleton.shared.getUserInfo()
    }
    
    func updateUserInfo2() -> () {
        Singleton.shared.updateUserInfo1(para: userInfo(fname: "Hamza", lname: "Mustafa"))
    }
}

let userVal = Singleton.shared.getUserInfo()
print("First Name: \(userVal?.fname)")
print("Last Name: \(userVal?.lname)")

let userVal2 = User()
userVal2.updateUserInfo2()
userVal2.getUser()?.fname
userVal2.getUser()?.lname
