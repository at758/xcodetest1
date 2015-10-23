//
//  ViewController.swift
//  BullsEye
//
//  Created by Akshay Tata on 10/22/15.
//  Copyright © 2015 Akshay Tata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
    @IBOutlet weak var sender: UISlider!
    var targetValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentValue = lroundf(sender.value)
        targetValue = 1 + Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        
        let newVal = "The current value of slider is \(currentValue) \n The target value is \(targetValue)"
        
        let alert = UIAlertController(title: "Hello world", message: newVal, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
        
        alert.addAction(action)
    
        
        presentViewController(alert, animated: true, completion: nil)
        
        
        
        
        
    }
    
   
    @IBAction func slideMe(sender: UISlider) {
        
        currentValue = lroundf(sender.value)
        
    }

}

