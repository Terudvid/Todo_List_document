//
//  FirstViewController.swift
//  Todo_List_document
//
//  Created by TelTT on 2015/05/05.
//  Copyright (c) 2015年 Teruyuki Tomokane. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            TaskMg.tasks.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return TaskMg.tasks.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "text")
        cell.textLabel?.text = TaskMg.tasks[indexPath.row].name
        cell.detailTextLabel?.text = TaskMg.tasks[indexPath.row].disc
        return cell
        
    }


}

