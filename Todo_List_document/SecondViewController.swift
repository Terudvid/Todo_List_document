//
//  SecondViewController.swift
//  Todo_List_document
//
//  Created by TelTT on 2015/05/05.
//  Copyright (c) 2015年 Teruyuki Tomokane. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textTask: UITextField?
    @IBOutlet var txtDescr: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask(sender:UIButton){
        TaskMg.addTask(textTask!.text, disc: textTask!.text)
        self.view.endEditing(true)
        textTask!.text = ""
        txtDescr!.text = ""
        self.tabBarController!.selectedIndex = 0
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }

}

