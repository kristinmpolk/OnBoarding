//
//  LoggedInViewController.swift
//  OnBoarding
//
//  Created by Ingrid Polk on 5/31/16.
//  Copyright © 2016 KristinPolk. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        let userName = UserController.sharedInstance.logged_in_user
        if userName != nil {
        greetingLabel.text = "Welcome \(userName!.email)!"
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutButtonTapped(sender: UIButton) {
        UserController.sharedInstance.logged_in_user!.email = ""
        UserController.sharedInstance.logged_in_user!.password = ""
        appDelegate.navigateToLandingViewController()
        
    }

}
