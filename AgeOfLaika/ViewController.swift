//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Eric Wilson on 2/24/15.
//  Copyright (c) 2015 Eric Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* Each human year equals 10.5 dog years for the first two years, and then 4 dog years for each human year after. 
    */
    
    @IBAction func convertToHumanYearsPressed(sender: UIButton) {
        dogYearsLabel.text = "Laika is " + "\(7 * enterHumanYearsTextField.text.toInt()!) in dog years"
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
    }
    
    
    @IBAction func convertToRealDogYearsPressed(sender: UIButton) {
        let humanYearsInt = enterHumanYearsTextField.text.toInt()!
        let firstTwoDogYearsConst = 21
        
        if humanYearsInt <= 2 {
            dogYearsLabel.text = "Laika is " + "\(10.5 * Double(humanYearsInt)) in real dog years"
        }
        else {
            dogYearsLabel.text = "Laika is " + "\(firstTwoDogYearsConst + 4 * (humanYearsInt - 2)) in real dog years"
        }
        dogYearsLabel.hidden = false
    }
    

}

