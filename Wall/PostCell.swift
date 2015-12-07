//
//  PostCell.swift
//  Wall
//
//  Created by vanelizarov on 08/12/15.
//  Copyright © 2015 vanelizarov. All rights reserved.
//

import Cocoa

class PostCell: NSTableCellView {

    @IBOutlet var titleLabel: NSTextField!
    @IBOutlet var textView: NSTextField!
    @IBOutlet var dateLabel: NSTextField!
    
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
}
