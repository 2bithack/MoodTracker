//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by enzobot on 11/11/16.
//  Copyright © 2016 enzobot. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
  
  var friend: Friend? // stores the friend that is displayed in this cell
  
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    switch sender.currentTitle! {
    case "😄":
        moodButton.setTitle(Mood.medium.rawValue, for: .normal)
        moodLabel.text = "One Error.."
        
    //moodButton.setTitle(friendArray[3].mood.rawValue, for: UIControlState.normal)
    case "😐" :
        moodButton.setTitle(Mood.bad.rawValue, for: .normal)
        moodLabel.text = "Running Multiple Errors.."
    //moodButton.setTitle(friendArray[0].mood.rawValue, for: UIControlState.normal)
    case "😫" :
        moodButton.setTitle(Mood.happy.rawValue, for: .normal)
        moodLabel.text = "Compiled!"
    //moodButton.setTitle(friendArray[1].mood.rawValue, for: UIControlState.normal)
    default:
        break
    }
    print(#line, #function)
  }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!

  

  
  
}
