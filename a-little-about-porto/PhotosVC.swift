//
//  PhotosVC.swift
//  a-little-about-porto
//
//  Created by Amadeu Andrade on 09/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class PhotosVC: UIViewController {

    let photosArray = ["imagem1", "imagem2", "imagem3", "imagem4", "imagem5", "imagem6"]
    var bulletsArray = [UIImageView]()
    var imageIndex = 0
    let DIM_ALPHA: CGFloat = 0.45
    let OPAQUE: CGFloat = 1.0
 
    @IBOutlet weak var photoImg: UIImageView!
    @IBOutlet weak var bullet1Img: UIImageView!
    @IBOutlet weak var bullet2Img: UIImageView!
    @IBOutlet weak var bullet3Img: UIImageView!
    @IBOutlet weak var bullet4Img: UIImageView!
    @IBOutlet weak var bullet5Img: UIImageView!
    @IBOutlet weak var bullet6Img: UIImageView!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Porto In Photos"
        setupImages()
        updateBulletImg()
        setupSwipe()
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.hidesBarsOnTap = true
        navigationController?.navigationBar.tintColor = UIColor(red: 12.0/255.0, green: 107.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor(red: 12.0/255.0, green: 107.0/255.0, blue: 155.0/255.0, alpha: 1.0)]
    }

}
