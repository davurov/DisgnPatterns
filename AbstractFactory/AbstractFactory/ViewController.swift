//
//  ViewController.swift
//  AbstractFactory
//
//  Created by Abduraxmon on 11/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var table: Table?
    var sofa: Sofa?
    var chair: Chair?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func kitchenOrderPressed(_ sender: Any) {
        table = KitchenFactory().createTable()
        chair = KitchenFactory().createChair()
        sofa = KitchenFactory().createSofa()
    }
    
    @IBAction func bedroomOrderPressed(_ sender: Any) {
        table = BedroomFactory().createTable()
        chair = BedroomFactory().createChair()
        sofa = BedroomFactory().createSofa()
    }
    
}
