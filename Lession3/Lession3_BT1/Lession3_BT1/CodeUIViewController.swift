//
//  CodeUIViewController.swift
//  Lession3_BT1
//
//  Created by khuc.d.m.nguyen on 3/30/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class CodeUIViewController: UIViewController {
    var viewRed: UIView! = {
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/2))
        view.backgroundColor = UIColor.red
        return view
    }()
    var viewBlue: UIView! = {
        let view = UIView.init(frame: CGRect(x: 0, y: ScreenSize.height/2, width: ScreenSize.width/2, height: ScreenSize.height/2))
        view.backgroundColor = UIColor.blue
        return view
    }()
    var viewOrange: UIView! = {
        let view = UIView.init(frame: CGRect(x: ScreenSize.width/2, y: ScreenSize.height/2, width: ScreenSize.width/2, height: ScreenSize.height/4))
        view.backgroundColor = UIColor.orange
        return view
    }()
    var viewGreen: UIView! = {
        let view = UIView.init(frame: CGRect(x: ScreenSize.width/2, y: ScreenSize.height*3/4, width: ScreenSize.width/4, height: ScreenSize.height/4))
        view.backgroundColor = UIColor.green
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initUIWithCode()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initViewRed(){
        self.view.addSubview(viewRed)
        let top = NSLayoutConstraint(item: viewRed, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: viewRed, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let right = NSLayoutConstraint(item: viewRed, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: viewRed, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/2, constant: 0)
        
        viewRed.autoresizesSubviews = false
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraints([top,left,right,height])
    }
    
    func initViewBlue(){
        self.view.addSubview(viewBlue)
        let top = NSLayoutConstraint(item: viewBlue, attribute: .top, relatedBy: .equal, toItem: viewRed, attribute: .bottom, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: viewBlue, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: viewBlue, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: viewBlue, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1/2, constant: 0)
        
        viewBlue.autoresizesSubviews = false
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints([top,left,bottom,width])
    }
    
    func initViewOrange(){
        self.view.addSubview(viewOrange)
        let top = NSLayoutConstraint(item: viewOrange, attribute: .top, relatedBy: .equal, toItem: viewRed, attribute: .bottom, multiplier: 1, constant: 0)
        let right = NSLayoutConstraint(item: viewOrange, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: viewOrange, attribute: .leading, relatedBy: .equal, toItem: viewBlue, attribute: .trailing, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: viewOrange, attribute: .height, relatedBy: .equal, toItem: viewBlue, attribute: .height, multiplier: 1/2, constant: 0)
        
        viewOrange.autoresizesSubviews = false
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints([top,left,right,height])
    }
    
    func initViewGreen(){
        self.view.addSubview(viewGreen)
        let top = NSLayoutConstraint(item: viewGreen, attribute: .top, relatedBy: .equal, toItem: viewOrange, attribute: .bottom, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: viewGreen, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: viewGreen, attribute: .leading, relatedBy: .equal, toItem: viewBlue, attribute: .trailing, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: viewGreen, attribute: .width, relatedBy: .equal, toItem: viewBlue, attribute: .width, multiplier: 1/2, constant: 0)

        viewOrange.autoresizesSubviews = false
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints([top,left,bottom,width])
    }
    
    func initUIWithCode(){
        initViewRed()
        initViewBlue()
        initViewOrange()
        initViewGreen()
    }
}
