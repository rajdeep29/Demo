//
//  DemoViewController.swift
//  DemoTarget
//
//  Created by Rajdeep Arora on 04/08/16.
//  Copyright © 2016 Rajdeep Arora. All rights reserved.
//



import UIKit



class DemoViewController: UIViewController {

    
     var demoDelegate : GetStringDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("heelo")
        demoDelegate?.GetStringFunction("raju")
        
    }
    
    
}