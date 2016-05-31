//
//  RegistrationViewController.swift
//  OnBoarding
//
//  Created by Ingrid Polk on 5/31/16.
//  Copyright © 2016 KristinPolk. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Register"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButtonTapped(sender: UIButton) {
        let emailName = emailField.text
        let passwordName = passwordField.text
        let (failureMessage,user1) = UserController.sharedInstance.registerUser(emailName!, newPassword: passwordName!)
        if user1 != nil {
            print("User registered view registration view")
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.navigateToLoggedInNavigationController()
        } else if failureMessage != nil {
            print(failureMessage)
            let alertController = UIAlertController(title: "Error", message: failureMessage, preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
                // ...
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // ...
            }
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true) {
                // ...
            }
        }
        
    }
   

}
