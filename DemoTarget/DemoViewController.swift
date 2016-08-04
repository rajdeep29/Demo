//
//  DemoViewController.swift
//  DemoTarget
//
//  Created by Rajdeep Arora on 04/08/16.
//  Copyright © 2016 Rajdeep Arora. All rights reserved.
//

import Foundation
import UIKit

class DemoViewController: UIViewController {
    
    var delegate : GetNameStringDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
    }
    
    @IBAction func callBackMethod(sender: AnyObject) {
        delegate?.GetNameStringFunction("send")
        
    }
}