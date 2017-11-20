//
//  ViewController.swift
//  Dicee
//
//  Created by Abhishek Goyal on 17/11/17.
//  Copyright © 2017 Abhishek Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var diceValueLeft : Int = 0;
    var diceValueRight : Int = 0;
    @IBOutlet weak var diceImageViewRight: UIImageView!
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    let diceImagesArray  = ["dice1","dice2","dice3","dice4","dice5","dice6"];
    
    @IBAction func rollMeBtnPressed(_ sender: UIButton) {
        
        diceValueLeft = Int(arc4random_uniform(6));
        diceValueRight = Int(arc4random_uniform(6));
        
        //print(diceValueLeft);
        //print(diceValueRight);
        
        diceImageViewLeft.image = UIImage(named:diceImagesArray[diceValueLeft]);
        diceImageViewRight.image = UIImage(named:diceImagesArray[diceValueRight]);
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

