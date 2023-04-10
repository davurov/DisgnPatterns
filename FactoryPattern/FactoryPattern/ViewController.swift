//
//  ViewController.swift
//  FactoryPattern
//
//  Created by Abduraxmon on 11/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var exerciseArray = [Exercise]()

    override func viewDidLoad() {
        super.viewDidLoad()
        createExercise(name: .pushUp)
        createExercise(name: .jump)
        startExercise()
    }
    
    func createExercise(name: Exercises) {
        let newExercise = ExeciseFactory.defaultFactory.getExercise(name: name)
        exerciseArray.append(newExercise)
    }
    
    func startExercise() {
        for ex in exerciseArray {
            ex.start()
            ex.stop()
        }
    }

    
}

