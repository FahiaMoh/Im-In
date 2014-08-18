//
//  EventShowViewController2.swift
//  im-in-ios
//
//  Created by joel yawili on 8/17/14.
//  Copyright (c) 2014 joel yawili. All rights reserved.
//

import UIKit

class EventShowViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descTextField: UITextView!
    @IBOutlet var venueTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var startTextField: UITextField!
    @IBOutlet var endTextField: UITextField!
    @IBOutlet var creatorField: UITextField!
    @IBOutlet var eventIDField: UITextField!

    var eventData:NSDictionary = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.userInteractionEnabled = false
        descTextField.userInteractionEnabled = false
        venueTextField.userInteractionEnabled = false
        locationTextField.userInteractionEnabled = false
        startTextField.userInteractionEnabled = false
        endTextField.userInteractionEnabled = false
        creatorField.userInteractionEnabled = false
        eventIDField.userInteractionEnabled = false
        
        nameTextField.text = eventData.objectForKey("name") as String
        creatorField.text = eventData.objectForKey("username") as String
        descTextField.text = eventData.objectForKey("description") as String
        venueTextField.text = eventData.objectForKey("venue") as String
        locationTextField.text = eventData.objectForKey("location") as String
        startTextField.text = eventData.objectForKey("start_time") as String
        endTextField.text = eventData.objectForKey("end_time") as String
        eventIDField.text = eventData.objectForKey("id").stringValue as String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//        if (segue!.identifier == "showDetails"){
//            var eventDetailViewController:EventDetailViewController = segue!.destinationViewController as EventDetailViewController
//            eventDetailViewController.eventData = events.objectAtIndex(selectedIndexPath.row) as NSDictionary
        var friendsAttendingViewController:FriendsAttendingViewController = segue!.destinationViewController as FriendsAttendingViewController
        friendsAttendingViewController.eventID = eventIDField.text
        }
//    }
}
