//
//  MyTableViewController.swift
//  MySwiftDemo
//
//  Created by nothinglhw on 14-11-5.
//  Copyright (c) 2014年 nothinglhw. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 20;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId:String="cell";
        var cell:UITableViewCell?=tableView.dequeueReusableCellWithIdentifier(cellId) as? UITableViewCell
        
        if cell==nil
        {
            cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellId);
        }
        
        cell?.textLabel.text=String(indexPath.row);
        
        
//        cell?.textLabel.textColor=UIColor(CGColor: blueColor)
        return cell!;
        
        
        
    }

}
