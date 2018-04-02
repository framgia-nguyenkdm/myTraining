//
//  CodeUIViewController.swift
//  Lession3_BT3
//
//  Created by khuc.d.m.nguyen on 4/2/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class CodeUIViewController: UIViewController {
    
    var viewContent: UIView! = {
        let viewContent = UIView()
        viewContent.backgroundColor = UIColor.red
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        return viewContent
    }()

    var view1: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var view2: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var view3: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var view4: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var view5: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addUIWithCode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addUIWithCode() {
        addViewContent()
        
        addFiveViews()
    }
    
    fileprivate func addFiveViews() {
        self.viewContent.addSubview(view1)
        self.viewContent.addSubview(view2)
        self.viewContent.addSubview(view3)
        self.viewContent.addSubview(view4)
        self.viewContent.addSubview(view5)
        //1
        
        view1.heightAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 3/5).isActive = true
        view1.leftAnchor.constraint(equalTo: viewContent.leftAnchor, constant: 8).isActive = true
        view1.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 50).isActive = true
        view1.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -50).isActive = true
        
        //2
        view2.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 1).isActive = true
        view2.leftAnchor.constraint(equalTo: view1.rightAnchor, constant: 8).isActive = true
        view2.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 50).isActive = true
        view2.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -50).isActive = true
        
        //3
        view3.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1).isActive = true
        view3.leftAnchor.constraint(equalTo: view2.rightAnchor, constant: 8).isActive = true
        view3.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 50).isActive = true
        view3.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -50).isActive = true
        
        //4
        view4.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 1).isActive = true
        view4.leftAnchor.constraint(equalTo: view3.rightAnchor, constant: 8).isActive = true
        view4.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 50).isActive = true
        view4.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -50).isActive = true
        
        //5
        view5.widthAnchor.constraint(equalTo: view4.widthAnchor, multiplier: 1).isActive = true
        view5.leftAnchor.constraint(equalTo: view4.rightAnchor, constant: 8).isActive = true
        view5.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 50).isActive = true
        view5.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -50).isActive = true
        view5.rightAnchor.constraint(equalTo: viewContent.rightAnchor, constant: -8).isActive = true
    }

    fileprivate func addViewContent() {
        self.view.addSubview(viewContent)
        viewContent.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        viewContent.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        viewContent.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        viewContent.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
    }

}
