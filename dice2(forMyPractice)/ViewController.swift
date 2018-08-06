//
//  ViewController.swift
//  dice2(forMyPractice)
//
//  Created by Osama Mansoori on 02/08/2018.
//  Copyright © 2018 Osama Mansoori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceView1: Int = 0
    var randomDiceView2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceView1 = Int(arc4random_uniform(6))
        randomDiceView2 = Int(arc4random_uniform(6))
        
        print(randomDiceView1)
        print(randomDiceView2)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceView1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceView2])
        
    }
    
}

