//
//  ViewController.swift
//  DemoTarget
//
//  Created by Rajdeep Arora on 26/05/16.
//  Copyright © 2016 Rajdeep Arora. All rights reserved.
//

import UIKit
protocol GetNameStringDelegate {
    func GetNameStringFunction(customerStr : String)
}
class ViewController: UIViewController,GetNameStringDelegate {
    
   

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
        //hot fixed fixed testtttt
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func eventClicked(sender: AnyObject) {
        let ccRTVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Demo") as! DemoViewController
       ccRTVC.delegate = self
        self.navigationController?.pushViewController(ccRTVC, animated: true)
    }
    func GetNameStringFunction(customerStr : String){
        print(customerStr)
    }
}

