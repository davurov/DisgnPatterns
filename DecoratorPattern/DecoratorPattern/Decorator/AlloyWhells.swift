//
//  AlloyWhells.swift
//  DecoratorPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

class AlloyWhells: MerceesDecorator {
    required init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func price() -> Double {
        return super.price() + 1000
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " Alloy whells"
    }
}
