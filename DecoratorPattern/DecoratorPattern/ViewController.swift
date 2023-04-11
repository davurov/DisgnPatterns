//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var type: UILabel! {
        didSet {
            type.text = "Type: " + String(mercedes.getTitle())
        }
    }
    @IBOutlet weak var priceLbl: UILabel! {
        didSet {
            priceLbl.text = "Price: " + String(mercedes.price()) + " $"
        }
    }
    
    var mercedes: MercedesProtocol = MercedessCla()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sigmentTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedessCla()
            type.text = "Type: " + String(mercedes.getTitle())
            priceLbl.text = "Price: " + String(mercedes.price()) + " $"
        case 1:
            mercedes = MercedessCla()
            mercedes = AlloyWhells(decorator: mercedes)
            type.text = "Type: " + String(mercedes.getTitle())
            priceLbl.text = "Price: " + String(mercedes.price()) + " $"
        case 2:
            mercedes = MercedessCla()
            mercedes = PanframeRoof(decorator: mercedes)
            type.text = "Type: " + String(mercedes.getTitle())
            priceLbl.text = "Price: " + String(mercedes.price()) + " $"
        default:
            break
        }
        
    }
    
}

