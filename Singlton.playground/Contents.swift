//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Settings {
    static let shared = Settings()
    
    var vaolume = 1.0
    var color = UIColor.blue
    var textColor = UIColor.black
}

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = Settings.shared.color

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        Settings.shared.textColor = .green
        label.textColor = Settings.shared.textColor
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
