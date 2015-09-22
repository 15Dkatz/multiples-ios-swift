//
//  ViewController.swift
//  Multiples
//
//  Created by David Katz on 9/22/15.
//  Copyright © 2015 davidkatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var currentTaps = 0
    var maxTaps = 0
    var multiple = 0
    var total = 1
    
    //Properties
    @IBOutlet weak var playDisplay: UIButton!
    @IBOutlet weak var multiplesInput: UITextField!
    @IBOutlet weak var multiplesInput2: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var multiplesTitle: UIImageView!
    @IBOutlet weak var addDisplay: UIButton!
    @IBOutlet weak var textLabel2: UILabel!
    
    

    //Actions
    @IBAction func playButton(sender: UIButton) {
        
        // var textDisplay = Int(textLabel.text!)!
        
        
        if multiplesInput.text != nil && multiplesInput.text != "" {
            multiple = Int(multiplesInput.text!)!
            total = multiple
            maxTaps = Int(multiplesInput2.text!)!
            
            playDisplay.hidden = true
            multiplesTitle.hidden = true
            multiplesInput.hidden = true
            multiplesInput2.hidden = true
            
            addDisplay.hidden = false
            textLabel.hidden = false
            textLabel2.hidden = false
        
            currentTaps = 0
        }
        
    }
    
    @IBAction func addButton(sender: UIButton) {
        tapCount()
        if currentTaps >= maxTaps {
            gameRestart()
        }
        textDisplay()
    }

    func tapCount() {
        currentTaps += 1
        total += multiple
    }
    
    func gameRestart() {
        playDisplay.hidden = false
        multiplesTitle.hidden = false
        multiplesInput.hidden = false
        multiplesInput2.hidden = false
        
        addDisplay.hidden = true
        textLabel.hidden = true
        textLabel2.hidden = true
        
    }
    
    func textDisplay() {
        textLabel.text = "\(currentTaps*multiple) + \(multiple) = \(total)"
        textLabel2.text = "Multiple \(currentTaps+1):"
    }
    
}

