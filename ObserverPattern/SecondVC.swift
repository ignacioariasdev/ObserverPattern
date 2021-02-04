//
//  SecondVC.swift
//  ObserverPattern
//
//  Created by Ignacio Arias on 2021-02-03.
//

import UIKit

class SecondVC: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var mySecondLabel: UILabel!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Who is the observer? self, why the object here is nil?
        notificationCtr.addObserver(self, selector: #selector(notifyObserverstoo), name: NSNotification.Name(rawValue: MyNotifications.broadcast), object: nil)
    }
    
    // MARK: - Observer Selector Functions
    @objc func notifyObserverstoo() {
        mySecondLabel.text = "I got Notified too" //Bug only notifies one view controller
    }

}
