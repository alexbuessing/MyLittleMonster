//
//  MonsterImg.swift
//  MyLittleMonster
//
//  Created by Alexander Buessing on 11/3/15.
//  Copyright © 2015 AppFish. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imageArray = [UIImage]()
        
        for (var x = 1; x <= 4; x++) {
            let img = UIImage(named: "idle\(x).png")
            imageArray.append(img!)
            
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.9
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imageArray = [UIImage]()
        
        for (var i = 1; i <= 5; i++) {
            let img = UIImage(named: "dead\(i)")
            imageArray.append(img!)
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.9
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
    
}