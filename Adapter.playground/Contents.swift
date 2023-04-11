import UIKit

protocol BirdProtocol {
    func sing()
    func fly()
}

class Bird: BirdProtocol {
    func sing() {
        print("singing")
    }
    
    func fly() {
        print("flying")
    }
}

class Goose {
    func speak() {
        print("Goose is speaking")
    }
    
    func move() {
        print("Goos is noving")
    }
}
class BirdAdapter: BirdProtocol {
    private var goose: Goose
    
    init(adaptee: Goose) {
        goose = adaptee
    }
    
    func sing() {
        goose.speak()
    }
    
    func fly() {
        goose.move()
    }
}


func makeBirdTest(bird: BirdProtocol) {
    bird.fly()
    bird.sing()
}

let simpleBird = Bird()
makeBirdTest(bird: simpleBird)
let anotherBird = Goose()
let gooseApdaptee = BirdAdapter(adaptee: anotherBird)
makeBirdTest(bird: gooseApdaptee)
