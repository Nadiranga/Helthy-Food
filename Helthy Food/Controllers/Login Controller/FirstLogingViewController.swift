//
//  FirstLogingViewController.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/2/23.
//

import UIKit

class FirstLogingViewController: UIViewController {

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpConstraints()
      
    }
    
   
    
    

    private let backgroundImage: UIImageView = {
        let backgound = UIImageView()
        backgound.image = UIImage(named: "bck")
        return backgound
    }()
    private let loginBtn: UIButton = {
        let loginBtn = UIButton()
        loginBtn.setTitle("LOGIN", for: .normal)
        loginBtn.layer.borderColor = UIColor.white.cgColor
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.cornerRadius = 10
        
        return loginBtn
    }()
    private let signUpBtn: UIButton = {
        let signUpBtn = UIButton()
        signUpBtn.setTitle("SIGN UP", for: .normal)
        signUpBtn.layer.borderColor = UIColor.white.cgColor
        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.cornerRadius = 10
        
        return signUpBtn
    }()
    
    private let userName: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = " Type User Name"
        return userName
    }()
    private let userPassword: UITextField = {
        let userPassword = UITextField()
        userPassword.layer.borderColor = UIColor.white.cgColor
        userPassword.layer.borderWidth = 1
        userPassword.layer.cornerRadius = 10
        userPassword.placeholder = " Type User Name"
        return userPassword
    }()
    private let logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "npp")
        logoImage.image?.withRenderingMode(.alwaysOriginal)
        return logoImage
    }()
    
    func setUpConstraints(){
        view.addSubview(backgroundImage)
        view.addSubview(loginBtn)
        view.addSubview(signUpBtn)
        view.addSubview(userName)
        view.addSubview(userPassword)
        view.addSubview(logoImage)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        userName.translatesAutoresizingMaskIntoConstraints = false
        userPassword.translatesAutoresizingMaskIntoConstraints = false
        logoImage.translatesAutoresizingMaskIntoConstraints = false
    
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
        
        logoImage.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: userPassword.topAnchor, constant: -20).isActive = true

        
        
        userPassword.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        userPassword.bottomAnchor.constraint(equalTo: userName.topAnchor, constant: -20).isActive = true
        userPassword.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        userPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        
        userName.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        userName.bottomAnchor.constraint(equalTo: loginBtn.topAnchor, constant: -20).isActive = true
        userName.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        userName.heightAnchor.constraint(equalToConstant: 50).isActive = true
       
        
        
        loginBtn.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
       
        loginBtn.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        loginBtn.centerYAnchor.constraint(equalTo: backgroundImage.centerYAnchor, constant: 100).isActive = true
        loginBtn.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
       
        loginBtn.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        
        
        
        signUpBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 20).isActive = true
        signUpBtn.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc func goToSignUp() {
        let signUp = MainTabBarViewController()
        navigationController?.pushViewController(signUp, animated: true)
    }
}
