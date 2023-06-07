//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var diceImageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }
    
    func getRandomDiceImageName() -> String {
        var randomIndex = Int.random(in: 0..<diceImageNames.count)
        return diceImageNames[randomIndex]
    }
    
    func changeDiceImage(newDiceImageName: String, diceImage: UIImageView) {
        diceImage.image = UIImage(imageLiteralResourceName: newDiceImageName)
    }
    
    func randomiseDiceImage(diceImage: UIImageView) {
        var newDiceImageName = getRandomDiceImageName()
        
        changeDiceImage(newDiceImageName: newDiceImageName, diceImage: diceImage)
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomiseDiceImage(diceImage: diceImageView1)
        randomiseDiceImage(diceImage: diceImageView2)
    }
}

