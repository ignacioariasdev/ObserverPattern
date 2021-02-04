//
//  ViewController.swift
//  ObserverPattern
//
//  Created by Ignacio Arias on 2021-02-03.
//

import UIKit

//Super global (available to other classes) [It could be done in the app delegate as well and all the classes will be able to access it]
//Where magic happens
let notificationCtr = NotificationCenter.default

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var myLabel: UILabel!
    
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Who is the observer? self
        notificationCtr.addObserver(self, selector: #selector(notifyObservers), name: NSNotification.Name(rawValue: MyNotifications.broadcast), object: nil)
    }
    
    // MARK: - Observer Selector Functions
    @objc func notifyObservers() {
        myLabel.text = "I got Notified"
    }
    

    // MARK: - IBActions
    @IBAction func doBroadcast(_ sender: Any) {
        notificationCtr.post(name: NSNotification.Name(rawValue: MyNotifications.broadcast), object: self)
    }

}

