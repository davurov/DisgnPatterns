//
//  Exercise.swift
//  FactoryPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

protocol Exercise {
    var name: String {get}
    var type: String {get}
    
    func start()
    func stop()
}
