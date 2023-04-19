//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let flyColor = UIColor.rgba(1, 0, 0, 1)
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = flyColor
        
        view.addSubview(label)
        self.view = view
    }
}

extension UIColor {
    static var colorStore: [String : UIColor] = [:]
    
    class func rgba(_ red: CGFloat,
                    _ green: CGFloat,
                    _ blue: CGFloat,
                    _ alpha: CGFloat) -> UIColor {
        
        let key = "\(red)\(green)\(blue)\(alpha)"
        if let color = colorStore[key] {
            return color
        }
        
        let color = UIColor(red: red,
                            green: green,
                            blue: blue,
                            alpha: alpha)
        colorStore[key] = color
        
        return color
    }
}


// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
