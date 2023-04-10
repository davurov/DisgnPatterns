//
//  BedrommFactory.swift
//  AbstractFactory
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Chair for bedroom created")
        return ChairBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Sofa for bedroom created")
        return SofaBedroom()
    }
    
    func createTable() -> Table {
        print("Table for bedroom created")
        return TableBedroom()
    }
}
