//
//  MemeCollectionViewController.swift
//  Meme Me
//
//  Created by Ying Xiong on 10/2/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import Foundation
import UIKit


class MemeCollectionViewController: UICollectionViewController {
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MemeItem", forIndexPath: indexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.row]
        
        cell.imageView?.image = meme.memedImage
        return cell
    }
}