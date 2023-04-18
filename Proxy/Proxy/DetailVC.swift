//
//  DetailVC.swift
//  Proxy
//
//  Created by Abduraxmon on 18/04/23.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var photoImage: UIImageView!
    
    let url = URL(string: "https://user-images.githubusercontent.com/113560218/232582812-23e03716-33c3-4cd2-97ae-93506a536db9.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage()
    }
    
    func loadImage() {
        let imageService = LoadImageService()
        let proxy = Proxy(service: imageService)
        
        proxy.loadImage(url: url) { [weak self] data, response, error in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                self?.photoImage.image = UIImage(data: data)
            }
        }
    }


    @IBAction func reloadPressed(_ sender: Any) {
        cacheData = nil
        photoImage.image = nil
        loadImage()
        
    }
}
