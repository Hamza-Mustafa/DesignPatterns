//
//  BurgerBuilder.swift
//  BuilderPattern
//
//  Created by Hamza Mustafa on 18/02/2021.
//

import Foundation

class BurgerBuilder {
    
    //Default Configuation of the burger
    private var customerName = "nil"
    private var meat = Burger.meatType.zinger
    private var cheese = true
    private var mayo = true
    private var ketchup = true
    private var cook = Burger.Cooked.fried
    private var amount = 1
    
    // funcs to change default configuration
    
    func setName(choice:String){
        self.customerName = choice
    }
    
    func setMeat(choice:Burger.meatType){
        self.meat = choice
    }
    
    func setCheese(choice:Bool){
        self.cheese = choice
    }
    
    func setMayo(choice:Bool){
        self.mayo = choice
    }
    
    func setKetchup(choice:Bool){
        self.ketchup = choice
    }
    
    func setCook(choice:Burger.Cooked){
        self.cook = choice
    }
    
    func setAmount(choice:Int){
        self.amount = choice
    }
    
    // Builder Function
    // it is responsible for creating burger object which is used for customized values and set default values
    
    func buildObject() -> Burger {
        return Burger(customerName: self.customerName,
                      meat: self.meat,
                      cheese: self.cheese,
                      mayo: self.mayo,
                      ketchup: self.ketchup,
                      cook: self.cook,
                      amount: self.amount)
    }
}
