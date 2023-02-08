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
        view.backgroundColor = .systemBackground
        setUpConstraints()
      
        
        
        
    }
    
   
    
    

    private let backgroundImage: UIImageView = {
        let backgound = UIImageView()
        backgound.image = UIImage(named: "bck")
        return backgound
    }()
    private let loginBtn: UIButton = {
        let loginBtn = UIButton()
        loginBtn.setTitle("Sign In", for: .normal)
        loginBtn.backgroundColor = .black
        //loginBtn.layer.borderColor = UIColor.white.cgColor
        //loginBtn.layer.borderWidth = 1
        loginBtn.layer.cornerRadius = 10
        
        return loginBtn
    }()
    private let signUpBtn: UIButton = {
        let signUpBtn = UIButton()
        signUpBtn.setTitle("New User? Create Account.", for: .normal)
        signUpBtn.layer.borderColor = nil
        signUpBtn.tintColor = .white
        //signUpBtn.layer.borderWidth = 1
        //signUpBtn.layer.cornerRadius = 10
        
        return signUpBtn
    }()
    
    private let userName: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
       userName.backgroundColor = .secondarySystemBackground
        //userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter User Password"
        return userName
    }()
    private let userPassword: UITextField = {
        let userPassword = UITextField()
    
        userPassword.layer.borderColor = UIColor.white.cgColor
        userPassword.backgroundColor = .secondarySystemBackground
        userPassword.layer.cornerRadius = 10
        userPassword.placeholder = "Enter User Name"
        
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
        
        userName.textAlignment = NSTextAlignment.center
        userPassword.textAlignment = NSTextAlignment.center
        
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
       
        
        
        loginBtn.addTarget(self, action: #selector(goToGome), for: .touchUpInside)
       
        loginBtn.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        loginBtn.centerYAnchor.constraint(equalTo: backgroundImage.centerYAnchor, constant: 100).isActive = true
        loginBtn.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
       
        loginBtn.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        
        
        signUpBtn.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        signUpBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 5).isActive = true
        signUpBtn.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc func goToSignUp() {
        let signUp = SignUpViewController()
        self.navigationController?.pushViewController(signUp, animated: true)
        //navigationController?.pushViewController(signUp, animated: true)
    }
    
    @objc private func goToGome() {
        let home = MainTabBarViewController()
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: false , completion: nil)
      
    }
    
    // self.show(home, sender: self)
     //self.hidesBottomBarWhenPushed(home, sender: self)
     //navigationController?.pushViewController(home, animated: true)
}



