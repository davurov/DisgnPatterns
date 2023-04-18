//
//  LoadServiceProtacol.swift
//  Proxy
//
//  Created by Abduraxmon on 18/04/23.
//

import Foundation

protocol LoadServiceProtacol {
    func loadImage(url: URL, complition: @escaping(Data?, URLResponse?, Error?) -> ())
}
