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
        let dogYearsConstant = 7 * enterHumanYearsTextField.text.toInt()!
        dogYearsLabel.text = "Laika is " + "\(dogYearsConstant) in dog years"
        dogYearsLabel.hidden = false
    }

}

