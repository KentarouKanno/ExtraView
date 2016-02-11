//
//  ViewController.swift
//  ExtraView
//
//  Created by KentarOu on 2016/02/11.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bannerView: BannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func pushBanner(sender: UIButton) {
        
        bannerView.showBanner(self)
        // bannerView.showBanner(self, 0.2, 1.0)
    }
}

