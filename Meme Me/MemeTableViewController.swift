//
//  MemeTableViewController.swift
//  Meme Me
//
//  Created by Ying Xiong on 10/2/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import Foundation
import UIKit


class MemeTableViewController: UITableViewController {
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
}