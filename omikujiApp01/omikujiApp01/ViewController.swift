//
//  ViewController.swift
//  omikujiApp01
//
//  Created by 鶴尾直幸 on 2020/01/08.
//  Copyright © 2020 Tsuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var resultNumber = 0
    
    @IBAction func shuffleButton(_ sender: Any) {
        
        var NewresultNumber = 0
        
        repeat {
            
            NewresultNumber = Int(arc4random_uniform(4))
            
        } while resultNumber == NewresultNumber
        
        resultNumber = NewresultNumber
        
        switch resultNumber {
        case 1:
            resultLabel.text = "大吉"
            resultImage.image = UIImage(named: "omikuji-daikichi")
        
        case 2:
            resultLabel.text = "中吉"
            resultImage.image = UIImage(named: "omikuji-chukichi")

        case 3:
            resultLabel.text = "凶"
            resultImage.image = UIImage(named: "omikuji-kyo")
        
        default:
            print()
        }
        
    }
}

