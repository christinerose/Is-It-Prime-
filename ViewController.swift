//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Christine Rose on 5/22/15.
//  Copyright (c) 2015 Christine Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumber: UITextField!

    @IBOutlet weak var resultsField: UILabel!

    
    @IBAction func SubmitButton(sender: AnyObject) {
        
        //code
        var number = enterNumber.text.toInt()
        
        if number != nil {
            
            var unwrappedNumber = number!
            var isPrime = true
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 {
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0 {
                        isPrime = false
                        
                        resultsField.text = "\(unwrappedNumber) is not a prime number."
                    } //if unwrappedNumber!
                } //for var i
                
                if isPrime == true {
                    resultsField.text = "\(unwrappedNumber) is a Prime Number!"
                }
                
            } // if unwrappedNumber !=
            if unwrappedNumber == 2 || unwrappedNumber == 1 {
                resultsField.text = "\(unwrappedNumber) is a Prime Number!"
            } // if unwrapped...==2
        
        } else {
            resultsField.text = "Please enter a whole number."
        }
    
    println(enterNumber.text)
        
    }
    
    
    //end code
    //tried on my own, but it was having too many errors
    //followed the tutorial
    //looks like I wasn't unwrapping properly -- created var that unwraps.
    //but my CODE was pretty good! I had a problem with the 
    //CONSTRAINTS! :-)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

