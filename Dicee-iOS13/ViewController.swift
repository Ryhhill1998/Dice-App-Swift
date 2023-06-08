//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceImageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func randomiseDiceImage(diceImage: UIImageView) {
        guard let newImageName = diceImageNames.randomElement() else {
            return
        }
        
        diceImage.image = UIImage(imageLiteralResourceName: newImageName)
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomiseDiceImage(diceImage: diceImageView1)
        randomiseDiceImage(diceImage: diceImageView2)
    }
}

