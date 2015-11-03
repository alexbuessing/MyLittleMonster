//
//  ViewController.swift
//  MyLittleMonster
//
//  Created by Alexander Buessing on 11/3/15.
//  Copyright © 2015 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImage!
    @IBOutlet weak var heartImg: DragImage!
    
    @IBOutlet var penalty1Img: UIImageView!
    
    @IBOutlet var penalty2Img: UIImageView!
    
    @IBOutlet var penalty3Img: UIImageView!
    
    let DIM_AlPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALTIES = 3
    
    var penalties = 0
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        penalty1Img.alpha = DIM_AlPHA
        penalty2Img.alpha = DIM_AlPHA
        penalty3Img.alpha = DIM_AlPHA
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
        startTimer()
        
    }

    func itemDroppedOnCharacter(notif: AnyObject) {
        
        print("Item dropped on character")
        
    }
    
    func startTimer() {
        
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
        
    }
    
    func changeGameState() {
        penalties++
        
        if penalties == 1 {
            penalty1Img.alpha = OPAQUE
            penalty2Img.alpha = DIM_AlPHA
        } else if penalties == 2 {
            penalty2Img.alpha = OPAQUE
            penalty3Img.alpha = DIM_AlPHA
        } else if penalties >= 3 {
            penalty3Img.alpha = OPAQUE
        } else {
            penalty1Img.alpha = DIM_AlPHA
            penalty2Img.alpha = DIM_AlPHA
            penalty3Img.alpha = DIM_AlPHA
        }
        
        if penalties >= MAX_PENALTIES {
            gameOver()
        }
        
    }
    
    func gameOver() {
        timer.invalidate()
        monsterImg.playDeathAnimation()
    }
    
}

