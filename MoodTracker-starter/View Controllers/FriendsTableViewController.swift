//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by enzobot on 11/11/16.
//  Copyright © 2016 enzobot. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
  
    var friendArray = [
        Friend.init(name: "C-3P0", mood: .bad),
        Friend.init(name: "R2D2", mood: .happy),
        Friend.init(name: "Chewie", mood: .happy),
        Friend.init(name: "Han Solo", mood: .medium)
    ]
    
    @IBAction func addFriend(_ sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        let friend = friendArray[indexPath.row]
        cell.nameLabel.text = friend.name
        switch friend.mood {
        case .happy:
            cell.moodLabel.text = "Compiled!"
        case .medium:
            cell.moodLabel.text = "One Error.."
        case .bad:
            cell.moodLabel.text = "Running Multiple Errors.."
        }
        cell.moodButton.setTitle(friend.mood.rawValue, for: UIControlState.normal)
        return cell
    }

}
