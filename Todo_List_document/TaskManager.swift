//
//  TaskManager.swift
//  Todo_List_document
//
//  Created by TelTT on 2015/05/08.
//  Copyright (c) 2015年 Teruyuki Tomokane. All rights reserved.
//

import UIKit

var TaskMg: TaskManager = TaskManager()

struct task {
    var name = "Non-Name"
    var disc = "Non-Disc"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String,disc: String){
        tasks.append(task(name:name,disc:disc))
    }
}
