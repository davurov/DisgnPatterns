//
//  MainVC.swift
//  Compose
//
//  Created by Abduraxmon on 19/04/23.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var currentFolder: Compose = Folder(name: "Main")

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        title = "Compose"
        
        let file = UIBarButtonItem(title: "File", style: .plain, target: self, action: #selector(fileTapped))
        let folder = UIBarButtonItem(title: "Folder", style: .plain, target: self, action: #selector(folderTapped))
        
        navigationItem.rightBarButtonItems = [file, folder]
    }
    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @objc func fileTapped() {
        currentFolder.addComponent(c: File(name: "New File"))
        tableView.reloadData()
    }
    
    @objc func folderTapped() {
        currentFolder.addComponent(c: Folder(name: "New Folder"))
        tableView.reloadData()
    }

}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFolder.contextCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        guard let contents = currentFolder.showContext() as? [Compose] else { fatalError() }
        let item = contents[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item is Folder ? "Folder" : "File"
        cell.imageView?.image = item is Folder ? UIImage(systemName: "folder.fill") : UIImage(systemName: "doc.fill")
        return cell
    }
    
    
}
