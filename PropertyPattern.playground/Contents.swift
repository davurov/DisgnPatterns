import UIKit

// 1 way of cloning

//class Person {
//    var name = ""
//
//    func clone() -> Person {
//        let person = Person()
//        person.name = name
//        return person
//    }
//}
//



// 2 way of cloning

//class Person {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func clone() -> Person {
//        return Person(name: self.name)
//    }
//}
//
//let person1 = Person(name: "Abduraxmon")
//let person2 = person1.clone()
//print(person1 === person2)
