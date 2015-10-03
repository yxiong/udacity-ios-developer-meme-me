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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeCell")!
        let meme = memes[indexPath.row]
        
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topText + "|" + meme.bottomText
        return cell
    }
}