//
//  ViewController.swift
//  Is it prime?
//
//  Created by Criss Angel on 12/9/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputNum: UITextField!
   
    @IBOutlet var result: UILabel!
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = inputNum.text {
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                var isPrime = true;
                if number == 1 {
                    isPrime = false;
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                
                if isPrime {
                    result.text = "Correct, \(number) is a prime number."
                } else {
                    result.text = "Wrong, \(number) is not a prime number."
                }
                
            } else {
                result.text = "Please enter a positive whole number."
            }
        }
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

