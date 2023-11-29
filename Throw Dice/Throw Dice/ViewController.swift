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
    
    //zar görselleri tanımlıyoruz
    let gorsel = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func zarAt(_ sender: Any) {
        
        //her zar için 6ya kadar random bir sayı oluşturmasını istiyoruz
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        
        //gelen ilk görseli sola 2.yi sağa eklicez
        left.image = gorsel[first]
        right.image = gorsel[second]
        
    }
    
}

