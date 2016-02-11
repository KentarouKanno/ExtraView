//
//  BannerView.swift
//  ExtraView
//
//  Created by KentarOu on 2016/02/11.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class BannerView: UIView {
    
    var isShowBanner = false

    func showBanner(parentV: UIViewController,_ duration: NSTimeInterval = 0.6, _ delay: NSTimeInterval = 1.0) {
        
        if !isShowBanner {
            isShowBanner = true
            
            let width = UIScreen.mainScreen().bounds.width
            let height = self.frame.size.height
            
            self.frame = CGRectMake(0, 14, width, height)
            parentV.view.addSubview(self)
            
            UIView.animateWithDuration(duration, animations: { () -> Void in
                self.frame = CGRectMake(0, 64, width, height)
                }) { (finish) -> Void in
                    
                    UIView.animateWithDuration(duration, delay: delay, options: .CurveEaseInOut, animations: { () -> Void in
                        self.frame = CGRectMake(0, 14, width, height)
                        }) { (finish) -> Void in
                            
                            self.removeFromSuperview()
                            self.isShowBanner = false
                    }
            }
        }
    }
}