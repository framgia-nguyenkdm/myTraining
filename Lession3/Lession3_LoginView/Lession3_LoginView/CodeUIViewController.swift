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
        
        return view
    }()
    
    var imgViewBackground: UIImageView! = {
        let imgView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
        imgView.image = UIImage(named: "backgroundImg")
        return imgView
    }()
    
    var blurView: UIView! = {
        let blurView = UIView()
        blurView.backgroundColor = UIColor.black
        blurView.alpha = 0.4
        blurView.layer.cornerRadius = 17
        return blurView
    }()
    
    var loginView: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        view.layer.cornerRadius = 17
        return view
    }()
    
    var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Email"
        textfield.backgroundColor = UIColor.white
        textfield.borderStyle = .roundedRect
        return textfield
    }()
    
    var emailImg: UIImageView = {
        let emailImg = UIImageView()
        emailImg.image = UIImage(named: "icon_email")
        emailImg.translatesAutoresizingMaskIntoConstraints = false
        return emailImg
    }()
    
    var passImg: UIImageView = {
        let passImg = UIImageView()
        passImg.image = UIImage(named: "icon_pass")
        passImg.translatesAutoresizingMaskIntoConstraints = false
        return passImg
    }()
    
    var passTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.backgroundColor = UIColor.white
        textfield.borderStyle = .roundedRect
        return textfield
    }()
    
    var buttonView: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var registerButton: UIButton! = {
        let registerBtn = UIButton()
        registerBtn.backgroundColor = UIColor.clear
        registerBtn.setTitle("Register", for: .normal)
        registerBtn.layer.cornerRadius = 5
        registerBtn.borderColor = UIColor.white
        registerBtn.layer.borderWidth = 1
        registerBtn.translatesAutoresizingMaskIntoConstraints = false
        return registerBtn
    }()
    
    var loginButton: UIButton! = {
        let loginBtn = UIButton()
        loginBtn.backgroundColor = UIColor.clear
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.layer.cornerRadius = 5
        loginBtn.tintColor = UIColor.black
        loginBtn.borderColor = UIColor.white
        loginBtn.layer.borderWidth = 1
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        return loginBtn
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
    
    func addBlurView() {
        self.superView.addSubview(blurView)
        
        blurView.topAnchor.constraint(equalTo: self.superView.topAnchor, constant: 150).isActive = true
        blurView.leftAnchor.constraint(equalTo: self.superView.leftAnchor, constant: 40).isActive = true
        blurView.rightAnchor.constraint(equalTo: self.superView.rightAnchor, constant: -40).isActive = true
        
        blurView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSuperView() {
        self.view.addSubview(superView)
        
        superView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        superView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        superView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        superView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        superView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func addLoginView() {
        self.superView.addSubview(loginView)
        
        loginView.topAnchor.constraint(equalTo: self.superView.topAnchor, constant: 150).isActive = true
        loginView.leftAnchor.constraint(equalTo: self.superView.leftAnchor, constant: 40).isActive = true
        loginView.rightAnchor.constraint(equalTo: self.superView.rightAnchor, constant: -40).isActive = true
        
        loginView.heightAnchor.constraint(equalTo: self.blurView.heightAnchor, multiplier: 1).isActive = true
        loginView.translatesAutoresizingMaskIntoConstraints = false
    }
    func addImgBackground() {
        self.superView.addSubview(imgViewBackground)
        imgViewBackground.topAnchor.constraint(equalTo: self.superView.topAnchor, constant: 0).isActive = true
        imgViewBackground.leftAnchor.constraint(equalTo: self.superView.leftAnchor, constant: 0).isActive = true
        imgViewBackground.rightAnchor.constraint(equalTo: self.superView.rightAnchor, constant: 0).isActive = true
        imgViewBackground.bottomAnchor.constraint(equalTo: self.superView.bottomAnchor, constant: 0).isActive = true
        
        imgViewBackground.translatesAutoresizingMaskIntoConstraints = false
    }
    func addEmailAndPassTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passTextField.translatesAutoresizingMaskIntoConstraints = false
        self.loginView.addSubview(emailTextField)
        self.loginView.addSubview(passTextField)
        
        // Email
        emailTextField.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 20).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 30).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let paddingViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.emailTextField.frame.height))
        emailTextField.leftView = paddingViewEmail
        emailTextField.leftViewMode = UITextFieldViewMode.always
        
        // Password
        passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passTextField.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 30).isActive = true
        passTextField.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -30).isActive = true
        passTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor, multiplier: 1).isActive = true
        
        let paddingViewPass = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.passTextField.frame.height))
        passTextField.leftView = paddingViewPass
        passTextField.leftViewMode = UITextFieldViewMode.always
        
        addImgForEmailAndPassText()
    }
    func addImgForEmailAndPassText() {
        self.loginView.addSubview(emailImg)
        self.loginView.addSubview(passImg)
        
        // Email img
        emailImg.centerYAnchor.constraint(equalTo: emailTextField.centerYAnchor, constant: 0).isActive = true
        emailImg.leftAnchor.constraint(equalTo: emailTextField.leftAnchor, constant: 10).isActive = true
        emailImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        emailImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // Pass img
        passImg.centerYAnchor.constraint(equalTo: passTextField.centerYAnchor, constant: 0).isActive = true
        passImg.leftAnchor.constraint(equalTo: passTextField.leftAnchor, constant: 10).isActive = true
        passImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        passImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    func addButtonView() {
        self.loginView.addSubview(buttonView)
        
        buttonView.topAnchor.constraint(equalTo: passTextField.bottomAnchor, constant: 20).isActive = true
        buttonView.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 30).isActive = true
        buttonView.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -30).isActive = true
        buttonView.heightAnchor.constraint(equalTo: emailTextField.heightAnchor, multiplier: 1).isActive = true
        buttonView.bottomAnchor.constraint(equalTo: loginView.bottomAnchor, constant: -20).isActive = true
        
        addButtonLoginAndRegister()
    }
    
    func addButtonLoginAndRegister() {
        self.buttonView.addSubview(loginButton)
        self.buttonView.addSubview(registerButton)
        
        //Login
        loginButton.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 0).isActive = true
        loginButton.leftAnchor.constraint(equalTo: buttonView.leftAnchor, constant: 0).isActive = true
        loginButton.rightAnchor.constraint(equalTo: registerButton.leftAnchor, constant: -30).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor, constant: 0).isActive = true
        
        //Register
        registerButton.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 0).isActive = true
        registerButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 1).isActive = true
        registerButton.rightAnchor.constraint(equalTo: buttonView.rightAnchor, constant: 0).isActive = true
        registerButton.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor, constant: 0).isActive = true
    }
    func initUIWithCode() {
        // Init view content
        addSuperView()
        
        // Add img background
        addImgBackground()
        //Add blur view
        addBlurView()
        
        // Add login view
        addLoginView()
        
        // Add Textfields
        addEmailAndPassTextField()
        
        //Add button view
        addButtonView()
    }
    
}
