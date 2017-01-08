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
import AWSCognito

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: YokoTextField!
    @IBOutlet weak var passwordField: YokoTextField!
    var dataset: AWSCognitoDataset!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let datasetName = "datasetName"
        let datasetKey = "datasetKey"
        //Initialize the Amazon Cognito Sync client:
        let client = AWSCognito.default()
        //Then, create a dataset, add a record, and synchronize it with the server:
        dataset = client?.openOrCreateDataset(datasetName)
        dataset.setString("test string", forKey: datasetKey)
        dataset.synchronize().continue(successBlock: {(task: AWSTask!) -> AnyObject! in
            //Your handler code here
            return nil
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func upload(_ sender: UIButton) {
        dataset.synchronize().continue({ (task: AWSTask!) -> AnyObject in
            
            if task.isCancelled {
                //how to cancel?
            } else if task.error != nil {
                //NSLog("Error: %@", taskError)
            } else {
                //NSLog("Success")
            }
            
            return task
        })
    }
    
}

