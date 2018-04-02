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
        let view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    var viewBlue: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    var viewOrange: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    var viewGreen: UIView! = {
        let view = UIView()
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
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewRed)
        
        viewRed.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        viewRed.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewRed.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        viewRed.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/2).isActive = true
    }
    
    func initViewBlue(){
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewBlue)
        
        viewBlue.topAnchor.constraint(equalTo: viewRed.bottomAnchor, constant: 0).isActive = true
        viewBlue.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2).isActive = true
        viewBlue.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
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
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewGreen)
        
        viewGreen.topAnchor.constraint(equalTo: viewOrange.bottomAnchor, constant: 0).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewBlue.rightAnchor, constant: 0).isActive = true
        viewGreen.widthAnchor.constraint(equalTo: viewOrange.widthAnchor, multiplier: 1/2).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func initUIWithCode(){
        initViewRed()
        initViewBlue()
        initViewOrange()
        initViewGreen()
    }
}
