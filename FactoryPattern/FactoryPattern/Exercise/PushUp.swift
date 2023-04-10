//
//  PushUp.swift
//  FactoryPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation
class PushUp: Exercise {
    var name: String = "PushUp"
    
    var type: String = "arms"
    
    func start() {
        print("push up started")
    }
    
    func stop() {
        print("push up finished")
    }
}
