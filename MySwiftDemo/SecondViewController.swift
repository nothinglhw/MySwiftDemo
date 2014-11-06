//
//  SecondViewController.swift
//  MySwiftDemo
//
//  Created by nothinglhw on 14-11-5.
//  Copyright (c) 2014年 nothinglhw. All rights reserved.
//

import UIKit
//import MyTableViewController


class SecondViewController: UIViewController,UIAlertViewDelegate {

    @IBOutlet weak var Mylabel: UILabel!
override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated);
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func ClickButton(sender: AnyObject) {
        var alert:UIAlertView=UIAlertView(title: "Hello world", message: "您好", delegate: self, cancelButtonTitle: "cancel", otherButtonTitles: "push")
        alert.show();
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        switch buttonIndex
        {
        case 0:
            Mylabel.text="cancel";
            break;
        case 1:
//            Mylabel.text="push"
            let nextCtr:MyTableViewController=MyTableViewController();
            
            self.navigationController?.pushViewController(nextCtr, animated: true);
                break;
        default:
            break;
        }
        

    }
  

}
