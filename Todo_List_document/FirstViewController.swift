//
//  FirstViewController.swift
//  Todo_List_document
//
//  Created by TelTT on 2015/05/05.
//  Copyright (c) 2015年 Teruyuki Tomokane. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//ストリーボードとコードをつなぐ
    
    @IBOutlet var tableView: UITableView!
    
//    アプリが起動したときに再読み込み
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//    Delete 処理
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            TaskMg.tasks.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
        
    }
//   TableViewの位置の処理
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return TaskMg.tasks.count
    }
    
//TableViewのレイアウトの処理
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "text")
        cell.textLabel?.text = TaskMg.tasks[indexPath.row].name
        cell.textLabel?.textColor = UIColor.redColor()
        cell.detailTextLabel?.text = TaskMg.tasks[indexPath.row].disc
        return cell
        
    }


}

