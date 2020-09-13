//
//  ViewController.swift
//  Count
//
//  Created by Yamamoto Miu on 2020/09/13.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel : UILabel!
    var number : Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func colorChange(){
        if number >= 10 {
            countLabel.textColor = UIColor.red
        }
        else if number <= -10 {
            countLabel.textColor = UIColor.blue
        }
        else{
            countLabel.textColor = UIColor.darkGray
        }
    }
    
    @IBAction func add(){
        number = number + 1
        countLabel.text = String(number)
        self.colorChange()
    }
    @IBAction func minus(){
        number = number - 1
        countLabel.text = String(number)
        self.colorChange()
    }
    @IBAction func multiply(){
        number = number * 2
        countLabel.text = String(number)
        self.colorChange()
    }
    @IBAction func devide(){
        number = number / 2
        countLabel.text = String(number)
        self.colorChange()
    }
    @IBAction func clear(){
        number = 0.0
        countLabel.text = String(number)
        self.colorChange()
    }
    



}

