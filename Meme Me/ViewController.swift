//
//  ViewController.swift
//  Meme Me
//
//  Created by Ying Xiong on 9/27/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pickAnImage(sender: AnyObject) {
        let pickerController = UIImagePickerController()
        self.presentViewController(pickerController, animated: true, completion: nil)
    }

}

