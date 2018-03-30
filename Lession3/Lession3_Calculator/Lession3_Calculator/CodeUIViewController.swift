//
//  CodeUIViewController.swift
//  Lession3_Calculator
//
//  Created by khuc.d.m.nguyen on 3/30/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class CodeUIViewController: UIViewController {
    
    
    var superView: UIView!
    var superVerticalStackView: UIStackView!
    var view1: UIView = UIView()
    var view2: UIView = UIView()
    var view3: UIView = UIView()
    var view4: UIView = UIView()
    var view5: UIView = UIView()
    var view6: UIView = UIView()
   

    var resultLabel: UILabel! = {
        let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
        label.backgroundColor = UIColor.gray
        label.text = "0"
        label.textColor = UIColor.white
        label.textAlignment = .right
        label.font = UIFont.labelFont
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    //Line 1
    var horizontalStackView1: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
       
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var resetBtn: UIButton = UIButton()
    var addOrSubBtn: UIButton = UIButton()
    var modBtn: UIButton = UIButton()
    var devideBtn: UIButton = UIButton()
    
    //Line 2
    var horizontalStackView2: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var sevenBtn: UIButton = UIButton()
    var eightBtn: UIButton = UIButton()
    var nineBtn: UIButton = UIButton()
    var multiplyBtn: UIButton = UIButton()
    
    //Line 3
    var horizontalStackView3: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var fourBtn: UIButton = UIButton()
    var fiveBtn: UIButton = UIButton()
    var sixBtn: UIButton = UIButton()
    var minusBtn: UIButton = UIButton()
    
    //Line 4
    var horizontalStackView4: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var oneBtn: UIButton = UIButton()
    var twoBtn: UIButton = UIButton()
    var threeBtn: UIButton = UIButton()
    var plusBtn: UIButton = UIButton()
    
    //Line 5
    var horizontalStackView5: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height/6))
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var horizontalStackView6: UIStackView! = {
        let stackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width/2, height: ScreenSize.height/6))
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        return stackView
    }()
    var view7: UIView = UIView()
    var zeroBtn: UIButton = UIButton()
    var dotBtn: UIButton = UIButton()
    var equalBtn: UIButton = UIButton()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.initUIWithCode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initUIWithCode() {
        // Init for the super views
        superView = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
        superView.backgroundColor = UIColor.black
        
        self.view.addSubview(superView)
        
        superVerticalStackView = UIStackView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
        superVerticalStackView.axis = .vertical
        superVerticalStackView.alignment = .fill
        superVerticalStackView.distribution = .fillEqually
        superVerticalStackView.spacing = 6
        
        superVerticalStackView.addArrangedSubview(view1)
        superVerticalStackView.addArrangedSubview(view2)
        superVerticalStackView.addArrangedSubview(view3)
        superVerticalStackView.addArrangedSubview(view4)
        superVerticalStackView.addArrangedSubview(view5)
        superVerticalStackView.addArrangedSubview(view6)
        
        self.superView.addSubview(superVerticalStackView)
        
        //Init label result
        self.view1.addSubview(resultLabel)
        
        //---------Init line 1: AC, +/-, %, /
        self.setUIForButton(button: resetBtn, title: "AC", isGrayBtn: true)
        self.setUIForButton(button: addOrSubBtn, title: "+/-", isGrayBtn: true)
        self.setUIForButton(button: modBtn, title: "%", isGrayBtn: true)
        self.setUIForButton(button: devideBtn, title: "/", isGrayBtn: false)
        
        horizontalStackView1.addArrangedSubview(resetBtn)
        horizontalStackView1.addArrangedSubview(addOrSubBtn)
        horizontalStackView1.addArrangedSubview(modBtn)
        horizontalStackView1.addArrangedSubview(devideBtn)
        self.view2.addSubview(horizontalStackView1)
        
        
        //---------Init line 2: 7, 8, 9, *
        self.setUIForButton(button: sevenBtn, title: "7", isGrayBtn: true)
        self.setUIForButton(button: eightBtn, title: "8", isGrayBtn: true)
        self.setUIForButton(button: nineBtn, title: "9", isGrayBtn: true)
        self.setUIForButton(button: multiplyBtn, title: "x", isGrayBtn: false)
        
        horizontalStackView2.addArrangedSubview(sevenBtn)
        horizontalStackView2.addArrangedSubview(eightBtn)
        horizontalStackView2.addArrangedSubview(nineBtn)
        horizontalStackView2.addArrangedSubview(multiplyBtn)
        self.view3.addSubview(horizontalStackView2)
        
        
        //---------Init line 2: 4,5,6,+

        self.setUIForButton(button: fourBtn, title: "4", isGrayBtn: true)
        self.setUIForButton(button: fiveBtn, title: "5", isGrayBtn: true)
        self.setUIForButton(button: sixBtn, title: "6", isGrayBtn: true)
        self.setUIForButton(button: minusBtn, title: "-", isGrayBtn: false)
        
        horizontalStackView3.addArrangedSubview(fourBtn)
        horizontalStackView3.addArrangedSubview(fiveBtn)
        horizontalStackView3.addArrangedSubview(sixBtn)
        horizontalStackView3.addArrangedSubview(minusBtn)
        self.view4.addSubview(horizontalStackView3)
        
        
        //---------Init line 2: 1,2,3,-
        
        self.setUIForButton(button: oneBtn, title: "1", isGrayBtn: true)
        self.setUIForButton(button: twoBtn, title: "2", isGrayBtn: true)
        self.setUIForButton(button: threeBtn, title: "3", isGrayBtn: true)
        self.setUIForButton(button: plusBtn, title: "+", isGrayBtn: false)
        
        horizontalStackView4.addArrangedSubview(oneBtn)
        horizontalStackView4.addArrangedSubview(twoBtn)
        horizontalStackView4.addArrangedSubview(threeBtn)
        horizontalStackView4.addArrangedSubview(plusBtn)
        self.view5.addSubview(horizontalStackView4)
        
        //---------Init line 1: 0,.,=
        self.setUIForButton(button: zeroBtn, title: "0", isGrayBtn: true)
        horizontalStackView5.addArrangedSubview(zeroBtn)
        horizontalStackView5.addArrangedSubview(view7)
        self.view6.addSubview(horizontalStackView5)
        
        
        self.setUIForButton(button: dotBtn, title: ".", isGrayBtn: true)
        self.setUIForButton(button: equalBtn, title: "=", isGrayBtn: false)
        
        horizontalStackView6.addArrangedSubview(dotBtn)
        horizontalStackView6.addArrangedSubview(equalBtn)

        self.view7.addSubview(horizontalStackView6)
    }

    func setUIForButton(button: UIButton,title: String, isGrayBtn: Bool) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.buttonFont
        
        if isGrayBtn {
            button.backgroundColor = UIColor.grayBtnColor
            button.setTitleColor(UIColor.black, for: .normal)
        } else {
            button.backgroundColor = UIColor.orange
            button.setTitleColor(UIColor.white, for: .normal)
        }
        
    }
}

