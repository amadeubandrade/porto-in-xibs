//
//  PhotosVC+Swipe.swift
//  a-little-about-porto
//
//  Created by Amadeu Andrade on 10/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import Foundation
import UIKit

extension PhotosVC {
    
    func setupSwipe() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(PhotosVC.swiped(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(PhotosVC.swiped(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    func setupImages() {
        photoImg.image = UIImage(named:photosArray[imageIndex])
        bulletsArray = [bullet1Img, bullet2Img, bullet3Img, bullet4Img, bullet5Img, bullet6Img]
    }
    
    func updateBulletImg() {
        for index in 0...5 {
            if index == imageIndex {
                bulletsArray[index].alpha = OPAQUE
            } else {
                bulletsArray[index].alpha = DIM_ALPHA
            }
        }
    }
    
    func swiped(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                imageIndex -= 1
                if imageIndex < 0 {
                    imageIndex += photosArray.count
                }
                photoImg.image = UIImage(named: photosArray[imageIndex])
                updateBulletImg()
                
            case UISwipeGestureRecognizerDirection.Left:
                if imageIndex >= photosArray.count {
                    imageIndex = 0
                }
                photoImg.image = UIImage(named: photosArray[imageIndex])
                updateBulletImg()
                imageIndex += 1
                
            default:
                break
            }
        }
    }
    
}