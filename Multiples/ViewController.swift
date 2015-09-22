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
    var total = 5
    
    //Properties
    @IBOutlet weak var playDisplay: UIButton!
    @IBOutlet weak var multiplesInput: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var multiplesTitle: UIImageView!
    @IBOutlet weak var addDisplay: UIButton!
    
    

    //Actions
    @IBAction func playButton(sender: UIButton) {
        
        // var textDisplay = Int(textLabel.text!)!
        
        
        if multiplesInput.text != nil && multiplesInput.text != "" {
            multiple = Int(multiplesInput.text!)!
            maxTaps = Int(multiplesInput.text!)!
            
            playDisplay.hidden = true
            multiplesTitle.hidden = true
            multiplesInput.hidden = true
            
            addDisplay.hidden = false
            textLabel.hidden = false
        
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
        
        addDisplay.hidden = true
        textLabel.hidden = true

    }
    
    func textDisplay() {
        textLabel.text = "\(currentTaps*multiple) + 5 = \(total)"
    }
    
}

