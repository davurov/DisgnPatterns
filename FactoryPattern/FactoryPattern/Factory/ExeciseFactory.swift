//
//  ExeciseFactory.swift
//  FactoryPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

enum Exercises {
    case jump, pushUp
}

class ExeciseFactory {
    static let defaultFactory = ExeciseFactory()
    
    func getExercise(name: Exercises) -> Exercise {
        switch name {
        case .jump: return Jump()
        case .pushUp: return PushUp()
        }
    }
    
}
