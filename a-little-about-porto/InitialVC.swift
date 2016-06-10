//
//  ViewController.swift
//  a-little-about-porto
//
//  Created by Amadeu Andrade on 09/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class InitialVC: UIViewController {

    var aboutVC: AboutVC!
    var photosVC: PhotosVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutVC = AboutVC(nibName: "AboutVC", bundle: nil)
        photosVC = PhotosVC(nibName: "PhotosVC", bundle: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationController?.hidesBarsOnTap = false
    }
    
    @IBAction func loadAbout(sender: AnyObject) {
        navigationController?.pushViewController(aboutVC, animated: true)
    }
    
    @IBAction func loadPhotos(sender: AnyObject) {
        navigationController?.pushViewController(photosVC, animated: true)
    }
    
    
}

