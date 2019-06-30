//
//  ViewController.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/10/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import UIKit
import AWSAppSync

class ViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

