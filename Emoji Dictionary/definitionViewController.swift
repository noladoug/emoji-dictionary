//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Doug Frye on 3/11/17.
//  Copyright © 2017 Doug Frye. All rights reserved.
//

import UIKit
// "😀","😇","💩","🐹","😂","☹️","🦈","⛪️","🚞"
class definitionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinition.text = "Generic Smiley"
        }
        if emoji == "😇" {
            emojiDefinition.text = "Angelic Smiley"
        }
        if emoji == "💩" {
            emojiDefinition.text = "Poo Smiley"
        }
        if emoji == "🐹" {
            emojiDefinition.text = "Cute Hamster"
        }
        if emoji == "😂" {
            emojiDefinition.text = "Smiley Laughing Until He Cries"
        }
        if emoji == "☹️" {
            emojiDefinition.text = "Generic Frowny"
        }
        if emoji == "🦈" {
            emojiDefinition.text = "Shark! Smiley"
        }
        if emoji == "⛪️" {
            emojiDefinition.text = "Church"
        }
        if emoji == "🚞" {
            emojiDefinition.text = "Train in the Mountains"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
