//
//  CodeUIViewController.swift
//  Lession3_LoginView
//
//  Created by khuc.d.m.nguyen on 3/30/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class CodeUIViewController: UIViewController {
    var superView: UIView! = {
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
        view.backgroundColor = UIColor.red
        return view
    }()
    
    var imgViewBackground: UIImageView! = {
        let imgView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
        imgView.image = UIImage(named: "backgroundImg")
        return imgView
    }()

    var blurView: UIView! = {
        let blurView = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/2))
        blurView.backgroundColor = UIColor.black
    //    blurView.alpha = 0.4
        blurView.layer.cornerRadius = 17
        return blurView
    }()
    
    var loginView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUIWithCode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBlurView() {
        self.superView.addSubview(blurView)
        let top = NSLayoutConstraint(item: blurView, attribute: .top, relatedBy: .equal, toItem: superView, attribute: .top, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: blurView, attribute: .left, relatedBy: .equal, toItem: superView, attribute: .left, multiplier: 1, constant: 40)
//        let right = NSLayoutConstraint(item: blurView, attribute: .right, relatedBy: .equal, toItem: superView, attribute: .right, multiplier: 1, constant: 40)
////        let height = NSLayoutConstraint(item: blurView, attribute: .height, relatedBy: .equal, toItem: loginView,  attribute: .height, multiplier: 1, constant: 0)
        blurView.autoresizesSubviews = false
        blurView.translatesAutoresizingMaskIntoConstraints = false
//        superView.addConstraints([top,left,right])
        superView.addConstraints([top])
    }
    
    func initUIWithCode() {
        // Init view content
        self.view.addSubview(superView)
        
        // Add img background
        self.superView.addSubview(imgViewBackground)
        
        //Add blur view
        addBlurView()
        
    }

}
