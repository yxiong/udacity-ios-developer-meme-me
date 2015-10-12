//
//  MemeDetailViewController.swift
//  Meme Me
//
//  Created by Ying Xiong on 10/11/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController : UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var meme: Meme!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = meme.memedImage
    }
}