//
//  ViewController.swift
//  DemoTarget
//
//  Created by Rajdeep Arora on 26/05/16.
//  Copyright © 2016 Rajdeep Arora. All rights reserved.
//

import UIKit
protocol GetStringDelegate {
    func GetStringFunction(name : String)
}
class ViewController: UIViewController, GetStringDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("heelo")
        for family: String in UIFont.familyNames()
        {
            print("\(family)")
            for names: String in UIFont.fontNamesForFamilyName(family)
            {
                print("== \(names)")
            }
        }
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickEvenet(sender: AnyObject) {
        // Main
        let demoVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("demoID") as!  DemoViewController
           demoVC.demoDelegate = self
            self.navigationController?.pushViewController(demoVC, animated: true)
    }
    
    func GetStringFunction(name : String){
        print("Name---> \(name)")
    }
    
}

