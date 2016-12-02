//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by enzobot on 11/11/16.
//  Copyright © 2016 enzobot. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
  
  // MARK: View Controller Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  // MARK: Actions
  
  @IBAction func saveButtonPressed(_ sender: AnyObject) {
    // TODO: save the added friend here
    var moodButton = "😄"
    
    switch moodSelect.selectedSegmentIndex {
    case 0:
        moodButton = "😄"
    case 1:
        moodButton = "😐"
    case 2:
        moodButton = "😫"
    default:
        break
    }

    dismissViewController()
  }
  
  @IBAction func cancelButtonPressed(_ sender: AnyObject) {
    dismissViewController()
  }
  
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var moodSelect: UISegmentedControl!
  
  // MARK: Helpers
  
  func dismissViewController() {
    presentingViewController?.dismiss(animated: true)
  }
  
}
