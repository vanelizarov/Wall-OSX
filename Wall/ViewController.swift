//
//  ViewController.swift
//  Wall
//
//  Created by vanelizarov on 07/12/15.
//  Copyright © 2015 vanelizarov. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {
    
    @IBOutlet var tableView: NSTableView!

    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<5 {
            
            let post = Post(id: Int64(i), title: "Post #\(i) title", text: "Post #\(i) text", date: "0\(i).12.2015")
            self.posts.append(post)
            
        }
        
        self.tableView.reloadData()
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return self.posts.count
    }

    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let cell = tableView.makeViewWithIdentifier("PostCell", owner: self) as! PostCell
        cell.titleLabel.stringValue = self.posts.reverse()[row].title
        cell.textView.stringValue = self.posts.reverse()[row].text
        cell.dateLabel.stringValue = self.posts.reverse()[row].date
        
        return cell
        
    }
    
}

