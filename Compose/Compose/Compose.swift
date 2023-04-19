//
//  Compose.swift
//  Compose
//
//  Created by Abduraxmon on 19/04/23.
//

import Foundation

protocol Compose {
    var name: String {get}
    func showContext() -> Any
    func addComponent(c: Compose)
    func contextCount() -> Int
}

class File: Compose {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func showContext() -> Any {
        return name
    }
    
    func addComponent(c: Compose) {
        print("can't save file")
    }
    
    func contextCount() -> Int {
        return 1
    }
}

class Folder: Compose {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    private var contentArray = [Compose]()
    
    func showContext() -> Any {
        contentArray
    }
    
    func addComponent(c: Compose) {
        contentArray.append(c)
    }
    
    func contextCount() -> Int {
        contentArray.count
    }
    
    
}
