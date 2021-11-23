//
//  PizzaMenuTests.swift
//  PizzaMenuTests
//
//  Created by MAC on 19/11/21.
//

import XCTest
@testable import PizzaMenu

class PizzaMenuTests: XCTestCase {

    // Example bases
    private let thinAndCrispyBase = Base(name: "Thin and Crispy", isVegan: true, allergens: ["Gluten"])
    
    private let pepperoniStuffedCrust = Base(name: "Pepperoni Stuffed Crust", isVegan: false, allergens: ["Mustard"])

     // Example toppings
    private let tomatoSauce = Topping(name: "Tomato sauce", isVegan: true, allergens: [])
    
    private let bbqSauce = Topping(name: "Barbecue sauce", isVegan: true, allergens: ["Mustard"])
    
    private let mozzarella = Topping(name: "Mozzarella", isVegan: false, allergens: ["Milk",  "Gluten"])
    
    private let mushroom = Topping(name: "Mushrooms", isVegan: true, allergens: [])
    
    private let pepperoni = Topping(name: "Pepperoni", isVegan: false, allergens: ["Gluten", "Mustard"] )

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsVegan() {
        // Given
        let pizza = Pizza(name: "peperoni", base: thinAndCrispyBase, toppings: [tomatoSauce, mozzarella])
        
        // When
        let expectedValue = false
        let actualValue = pizza.checkVegan()
        
        // Then
        XCTAssertEqual(expectedValue, actualValue)
    }
    
    func testIsGluten() {
        // Given
        let pizza = Pizza(name: "peperoniDouble", base: pepperoniStuffedCrust, toppings: [tomatoSauce, pepperoni])
        
        // When
        let expectedValue = false
        let actualValue = pizza.checkGluten()
        
        // Then
        XCTAssertEqual(expectedValue, actualValue)
    }

}
