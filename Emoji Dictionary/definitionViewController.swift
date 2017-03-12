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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearlLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearlLabel.text = "Birthyear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        emojiDefinition.text = "\(emoji.definition)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
