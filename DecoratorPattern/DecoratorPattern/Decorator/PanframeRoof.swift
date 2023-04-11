//
//  PanframeRoof.swift
//  DecoratorPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

class PanframeRoof: MerceesDecorator {
    required init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func price() -> Double {
        return super.price() + 2000
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " Panframe roof"
    }
}
