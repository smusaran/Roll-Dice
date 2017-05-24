//
//  RollViewController.swift
//  Dice Example
//
//  Created by Marc Gomez Iranzo on 23/5/17.
//  Copyright © 2017 Marc Gomez Iranzo. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    /**
     * Randomly generates a Int from 1 to 6
     */
    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    
    @IBAction func rollTheDice() {
        var controller: DiceViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        present(controller, animated: true, completion: nil)
    }
    
    
}
