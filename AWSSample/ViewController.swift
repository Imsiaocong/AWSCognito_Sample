//
//  ViewController.swift
//  AWSSample
//
//  Created by Di Wang on 2016/12/24.
//  Copyright © 2016年 Di Wang. All rights reserved.
//

import UIKit
import TextFieldEffects
import AWSCore
import AWSCognitoIdentityProvider


class ViewController: UIViewController, AWSCognitoIdentityPasswordAuthentication {
    
    @IBOutlet weak var usernameField: YokoTextField!
    @IBOutlet weak var passwordField: YokoTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // completion routine returned by getPasswordAuthenticationDetails
    //var passwordAuthenticationCompletion: AWSTaskCompletionSource = AWSTaskCompletionSource.init()
    
    func getDetails(_ authenticationInput: AWSCognitoIdentityPasswordAuthenticationInput, passwordAuthenticationCompletionSource: AWSTaskCompletionSource<AWSCognitoIdentityPasswordAuthenticationDetails>) {
        
    }
    
    @IBAction func upload(_ sender: UIButton) {
        
    }
    
    func didCompleteStepWithError(_ error: Error?) {
        
    }
    
}

