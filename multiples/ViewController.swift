//
//  ViewController.swift
//  multiples
//
//  Created by ShadowZz on 4/8/16.
//  Copyright © 2016 ShadowZz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var addingLabel: UILabel!
    @IBOutlet weak var selectLabel: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var endButton: UIButton!
    
    var counter = 0
    var multiple = 0
    
    // function to present game to screen 
    @IBAction func playButtonClicked(sender: UIButton) {
        
        
    if selectLabel.text != nil && selectLabel.text != ""
        {
        
        logo.hidden = true
        selectLabel.hidden = true
        playButton.hidden = true
        
        addingLabel.hidden = false
        addButton.hidden = false
        endButton.hidden = false
        
        }
      else
        {
        
        }
        
    }
    
    //Adds textbox number and outputs to label
    @IBAction func clickToAdd(sender: UIButton) {
        
         multiple = Int(selectLabel.text!)!
        
        
        addingLabel.text = "\(counter) + \(multiple) = \(counter + multiple) "
        
        counter = counter + multiple
    }
    
    //Function to terminate game and reset
    @IBAction func endGame(sender: UIButton) {
        
        endButton.hidden = true
        addButton.hidden = true
        addingLabel.hidden = true
        
        logo.hidden = false
        selectLabel.hidden = false
        playButton.hidden = false
        
        counter = 0
        multiple = 0
        
        addingLabel.text = "Press Play to add!"
        
        
    }
    
    
    
    


}

