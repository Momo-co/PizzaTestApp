//
//  Topping.swift
//  PizzaMenu
//
//  Created by MAC on 19/11/21.
//

import Foundation

struct Topping {
    let name: String
    let isVegan: Bool
    let allergens:[String]
    
    func getToppingType() -> String{
        switch self.name {
        case "Tomato sauce":
            return "Sauce"
        case "Barbecue sauce":
            return "Sauce"
        case "Mozzarella":
            return "Cheese"
        default:
            return "Topping"
        }
    }
    
}
