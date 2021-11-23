//
//  Pizza.swift
//  PizzaMenu
//
//  Created by MAC on 19/11/21.
//

import Foundation

struct Pizza {
    let name: String
    let base: Base
    let toppings:[Topping]
    
    func checkVegan() -> Bool {
        return (base.isVegan && toppings.filter{$0.isVegan == false}.count == 0)
    }
    func checkGluten() -> Bool {
        let glutenBase = base.allergens.filter { gluten in
            gluten == "Gluten"
        }
        
        var glutenToppings:[String] = []
        for topping in toppings {
            glutenToppings += topping.allergens.filter({ gluten in
                gluten == "Gluten"
            })
        }
        return glutenBase.count == 0 && glutenToppings.count == 0
    }
    
    func allAllergen() -> [String] {
        var allergenList:Set<String> = []
        for allergen in base.allergens {
            allergenList.insert(allergen)
        }
        for topping in toppings {
            for allergen in topping.allergens {
                allergenList.insert(allergen)
            }
        }
        
        return allergenList.sorted()
    }
}
