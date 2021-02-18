//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Hamza Mustafa on 18/02/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Problem in this practice is we have to set values of all the attributes everytime we make burger and all attributes remain in memory
        //makeBurger()
        
        //Builder Pattern provides intermediate layer for the object creation
        // we can modify all the properties of an object with the help of the method provided inside builder layer
        // and for the properties we dont wanna change will pick default configuration from builder class
        // for the object creation we always rely on the build object method of the builder class
        makeBurgerFaster()
    }
    
    // call burger
    func makeBurger() {
        let burger = Burger(customerName: "Hamza", meat: .zinger, cheese: true, mayo: false, ketchup: true, cook: .deepFried, amount: 2)
        burger.printOrderDetails()
    }
    
    func makeBurgerFaster(){
        // make object of Builder Class
        let burgerBuilder = BurgerBuilder()
        
        // set customized configuration
        burgerBuilder.setName(choice: "Hamza Mustafa")
        burgerBuilder.setMeat(choice: Burger.meatType.zinger)
        burgerBuilder.setAmount(choice: 3)
        
        let order = burgerBuilder.buildObject()
        order.printOrderDetails()
    }
}
