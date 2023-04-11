//
//  MerceesDecorator.swift
//  DecoratorPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

class MerceesDecorator: MercedesProtocol {
    private let decoratorType: MercedesProtocol
    
    required init(decorator: MercedesProtocol) {
        decoratorType = decorator
    }
    
    func price() -> Double {
        decoratorType.price()
    }
    
    func getTitle() -> String {
        decoratorType.getTitle()
    }
    
    
}
