//
//  ScheduleController.swift
//  redArmyApp
//
//  Created by Howard Zhao on 4/12/19.
//  Copyright © 2019 RedArmyApp. All rights reserved.
//

import UIKit

class ScheduleController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///////////////////////////////////////////////////////////////////////
        //////////////////SWIPE LEFT AND SWIPE RIGHT GESTURES//////////////////
        ///////////////////////////////////////////////////////////////////////
        // LEFT SWIPE
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(receiveAndDoThis))
        leftSwipeGesture.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(leftSwipeGesture)
        // RIGHT SWIPE
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(receiveAndDoThis))
        rightSwipeGesture.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(rightSwipeGesture)
        
    }
    
    // Take the swipe gesture input and perform an action
    @objc func receiveAndDoThis(_ gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizer.Direction.left {
            print("segue to next view, swiped left")
            performSegue(withIdentifier: "News", sender: self)
            
        } else if gesture.direction == UISwipeGestureRecognizer.Direction.right {
            print("segue to previous view, swiped right")
            performSegue(withIdentifier: "Stats", sender: self)
        }
        
    }

///////////////////////////////////////////////////////////////////////
//////////////////////////////BUTTON INPUT/////////////////////////////
///////////////////////////////////////////////////////////////////////

    
    @IBAction func NewsButton(_ sender: Any) {
        print("News4")
        performSegue(withIdentifier: "News", sender: self)
    }
    @IBAction func StandingsButton(_ sender: Any) {
        print("Standings4")
        performSegue(withIdentifier: "Standings", sender: self)
    }
    @IBAction func StatsButton(_ sender: Any) {
        print("Stats4")
        performSegue(withIdentifier: "Stats", sender: self)
    }
}
