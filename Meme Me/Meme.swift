//
//  Meme.swift
//  Meme Me
//
//  Created by Ying Xiong on 9/28/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import Foundation
import UIKit

class Meme {
    let topText: String
    let bottomText: String
    let image: UIImage
    let memedImage: UIImage
    
    init(topText: String, bottomText: String, image: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
    }
}