//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fabiola Saga on 2/8/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray: Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

