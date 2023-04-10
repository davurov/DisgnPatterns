//
//  AbstractFactory.swift
//  AbstractFactory
//
//  Created by Abduraxmon on 11/04/23.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createTable() -> Table
}
