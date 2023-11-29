//
//  ViewController.swift
//  Throw Dice
//
//  Created by Halit Bakır on 25.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var left: UIImageView!
    @IBOutlet weak var right: UIImageView!
    
    let gorsel = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func zarAt(_ sender: Any) {
        
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        
        left.image = gorsel[first]
        right.image = gorsel[second]
        
    }
    
}

