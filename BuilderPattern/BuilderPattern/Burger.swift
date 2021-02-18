//
//  Burger.swift
//  BuilderPattern
//
//  Created by Hamza Mustafa on 18/02/2021.
//

import Foundation

class Burger {
    let customerName:String?
    let meat:meatType?
    let cheese:Bool?
    let mayo:Bool?
    let ketchup:Bool?
    let cook:Cooked?
    let amount:Int?
    
    enum meatType:String{
        case zinger = "Zinger"
        case beef = "Beef"
    }
    
    enum Cooked:String {
        case fried = "Fried"
        case deepFried = "Deep Fried"
    }
    
    init(customerName:String, meat:meatType, cheese:Bool, mayo:Bool, ketchup:Bool, cook:Cooked, amount:Int){
        self.customerName = customerName
        self.meat = meat
        self.cheese = cheese
        self.mayo = mayo
        self.ketchup = ketchup
        self.cook = cook
        self.amount = amount
    }
    
    func printOrderDetails(){
        if let name = customerName, let meat = meat, let cheese = cheese, let mayo = mayo, let ketchup = ketchup, let cook = cook, let amount = amount{
            print("Customer Name : \(name)")
            print("Meat Type : \(meat)")
            print("Cheese : \(cheese)")
            print("Mayo : \(mayo)")
            print("Ketchup : \(ketchup)")
            print("Cooked : \(cook)")
            print("Amount : \(amount)")
        }
    }
}
