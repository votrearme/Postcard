//
//  ViewController.swift
//  Postcard
//
//  Created by mac book pro on 27/05/2015.
//  Copyright (c) 2015 Votre Arme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Show the labels (that was hidden when set up)
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        // Update the labels with the input from text field
        messageLabel.text = enterNameTextField.text
        nameLabel.text = enterMessageTextField.text
        
        // Hide keyboard
        enterNameTextField.resignFirstResponder()
        
        // Change Text Color
        //enterNameTextField.textColor = UIColor.redColor();
        
        // Change the button after press
        sendButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
        // Test - the video does the same!!
        
    }


}

