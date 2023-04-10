import UIKit

class Burger {
    
    
    private var customerName: String?
    private var veggieProduct: Bool?
    private var patties: Int?
    private var pickles:Bool?
    private var mayo: Bool?
    private var ketchup: Bool?
    private var letuce: Bool?
    private var cook: Cooked?
    
    enum Cooked: String {
        case Rare = "Rare"
        case Normal = "Normal"
        case Welldone = "Welldone"
    }
    
    init(customerName: String, veggieProduct: Bool, patties: Int, pickles: Bool, mayo: Bool, ketchup: Bool ,letuce: Bool, cook: Cooked) {
        self.customerName = customerName
        self.veggieProduct = veggieProduct
        self.patties = patties
        self.pickles = pickles
        self.mayo = mayo
        self.ketchup = ketchup
        self.letuce = letuce
        self.cook = cook
    }
    
    func printDesc() {
        print("Name: \(String(describing: self.customerName!))")
        print("Veggieproduct: \(String(describing: self.veggieProduct!))")
        print("Patties: \(String(describing: self.patties!))")
        print("Pickles: \(String(describing: self.pickles!))")
        print("Mayo: \(String(describing: self.mayo!))")
        print("Ketchup: \(String(describing: self.ketchup!))")
        print("Letuce: \(String(describing: self.letuce!))")
        print("Cook: \(String(describing: self.cook!))")
    }
}

class BurgerBuilder {
    
    // Defoult onfiguration of burger
    
    private var veggie = true
    private var patties = 2
    private var pickles = true
    private var mayo = true
    private var ketchup = true
    private var letuce = true
    private var cook = Burger.Cooked.Normal
    
    // func to change default value
    
    func setVeggie(choice: Bool) {
        self.veggie = choice
    }
    func setPatties(choice: Int) {
        self.patties = choice
    }
    func setPickles(choice: Bool) {
        self.pickles = choice
    }
    func setMayo(choice: Bool) {
        self.mayo = choice
    }
    func setKetchup(choice: Bool) {
        self.ketchup = choice
    }
    func setLetuce(choice: Bool) {
        self.letuce = choice
    }
    func setCooked(choice: Burger.Cooked) {
        self.cook = choice
    }
    
    // builder function
    
    func builderObject(name: String) -> Burger {
        return Burger(customerName: name, veggieProduct: self.veggie, patties: self.patties, pickles: self.pickles, mayo: self.mayo, ketchup: self.ketchup, letuce: self.letuce, cook: self.cook)
    }
}


let burgerBuilder = BurgerBuilder()

let name = "Abduraxmon"
burgerBuilder.setMayo(choice: false)
burgerBuilder.setCooked(choice: .Welldone)
burgerBuilder.setPatties(choice: 3)

let order = burgerBuilder.builderObject(name: name)
order.printDesc()
