//
//  OpenViewController.swift
//  MyLittleMonster
//
//  Created by Alexander Buessing on 11/4/15.
//  Copyright © 2015 AppFish. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation

    var chosenCharacter = 2

class OpenViewController: UIViewController {
    
    @IBAction func rockmanPressed(sender: AnyObject) {
        chosenCharacter = 2
    }
    
    @IBAction func heroPressed(sender: AnyObject) {
        chosenCharacter = 1
    }
    
}