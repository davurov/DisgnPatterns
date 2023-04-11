//
//  MercedessClass.swift
//  DecoratorPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

class MercedessCla: MercedesProtocol {
    
    func price() -> Double {
        return 120000
    }
    
    func getTitle() -> String {
        return "MercedessCla"
    }
    
    
}
