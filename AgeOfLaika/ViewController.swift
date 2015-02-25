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

    @IBAction func convertToHumanYearsPressed(sender: UIButton) {
        dogYearsLabel.text = "Laika is " + "\(7 * enterHumanYearsTextField.text.toInt()!) in dog years"
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
    }

}

