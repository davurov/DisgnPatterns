//
//  LoadImageService.swift
//  Proxy
//
//  Created by Abduraxmon on 18/04/23.
//

import Foundation

class LoadImageService: LoadServiceProtacol {
    
    func loadImage(url: URL, complition: @escaping (Data?, URLResponse?, Error?) -> ()) {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        config.urlCache = nil
        
        let sesion = URLSession.init(configuration: config)
        sesion.dataTask(with: url, completionHandler: complition).resume()
    }
}
