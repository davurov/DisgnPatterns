//
//  Proxy.swift
//  Proxy
//
//  Created by Abduraxmon on 18/04/23.
//

import Foundation

public var cacheData: Data? = nil

class Proxy: LoadServiceProtacol {
   
    private var service: LoadServiceProtacol
    
    init(service: LoadServiceProtacol) {
        self.service = service
    }
    
    func loadImage(url: URL, complition: @escaping (Data?, URLResponse?, Error?) -> ()) {
        if cacheData == nil {
            service.loadImage(url: url) { data, response, error in
                cacheData = data
                complition(data,response,error)
            }
        } else {
            complition(cacheData,nil,nil)
        }
    }
}
