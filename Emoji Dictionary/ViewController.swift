//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Doug Frye on 3/11/17.
//  Copyright © 2017 Doug Frye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojis :  [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTable.dataSource = self
        emojiTable.delegate = self
        
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath , animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! definitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.definition = "Generic Smiley"
        emoji1.birthYear = 2001
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.category = "Smiley"
        emoji2.definition = "Angelic Smiley"
        emoji2.birthYear = 2002
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.category = "Smiley"
        emoji3.definition = "Poo Smiley"
        emoji3.birthYear = 2004
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐹"
        emoji4.category = "Animal"
        emoji4.definition = "A Cute Hamster"
        emoji4.birthYear = 2007
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😂"
        emoji5.category = "Smiley"
        emoji5.definition = "Rolling on the Floor Laughing Smiley"
        emoji5.birthYear = 2002
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "☹️"
        emoji6.category = "Smiley"
        emoji6.definition = "Frowning Smiley"
        emoji6.birthYear = 2001
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🦈"
        emoji7.category = "Animal"
        emoji7.definition = "Shark!! Smiley"
        emoji7.birthYear = 2011
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "⛪️"
        emoji8.category = "Building"
        emoji8.definition = "Christian Church"
        emoji8.birthYear = 2010

        let emoji9 = Emoji()
        emoji9.stringEmoji = "🚞"
        emoji9.category = "Transportation"
        emoji9.definition = "Train in front of Mountains"
        emoji9.birthYear = 2013
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]

    }

}

