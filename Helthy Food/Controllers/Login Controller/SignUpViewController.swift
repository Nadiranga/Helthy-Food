//
//  SignUpViewController.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/2/23.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
        
    }
    
    private let backgroundImage: UIImageView = {
        let backgound = UIImageView()
        backgound.image = UIImage(named: "bck")
        return backgound
    }()
    
    private let registerBtn: UIButton = {
        let registerBtn = UIButton()
        registerBtn.setTitle("REGISTER", for: .normal)
        registerBtn.layer.borderColor = UIColor.white.cgColor
        registerBtn.layer.borderWidth = 1
        registerBtn.layer.cornerRadius = 10
        
        return registerBtn
    }()
    private let firstName: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter First Name"
        return userName
    }()
    private let lastName: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter Last Name"
        return userName
    }()
    private let birthOfDate: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter Birth Date"
        return userName
    }()
    private let address: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter Address"
        return userName
    }()
    private let email: UITextField = {
        let userName = UITextField()
        userName.layer.borderColor = UIColor.white.cgColor
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.placeholder = "Enter Email Address"
        return userName
    }()

   func setUpConstraints() {
    
    view.addSubview(backgroundImage)
    view.addSubview(registerBtn)
    view.addSubview(firstName)
    view.addSubview(lastName)
    view.addSubview(birthOfDate)
    view.addSubview(address)
    view.addSubview(email)
    
    firstName.textAlignment = NSTextAlignment.center
    lastName.textAlignment = NSTextAlignment.center
    birthOfDate.textAlignment = NSTextAlignment.center
    address.textAlignment = NSTextAlignment.center
    email.textAlignment = NSTextAlignment.center
    
    backgroundImage.translatesAutoresizingMaskIntoConstraints = false
    registerBtn.translatesAutoresizingMaskIntoConstraints = false
    firstName.translatesAutoresizingMaskIntoConstraints = false
    lastName.translatesAutoresizingMaskIntoConstraints = false
    birthOfDate.translatesAutoresizingMaskIntoConstraints = false
    address.translatesAutoresizingMaskIntoConstraints = false
    email.translatesAutoresizingMaskIntoConstraints = false
    
    
    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    
    
    firstName.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    firstName.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 150).isActive = true
    firstName.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    firstName.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    
    
    lastName.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    lastName.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 20).isActive = true
    lastName.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    lastName.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    
    
    birthOfDate.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    birthOfDate.topAnchor.constraint(equalTo: lastName.bottomAnchor, constant: 20).isActive = true
    birthOfDate.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    birthOfDate.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    
    
    address.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    address.topAnchor.constraint(equalTo: birthOfDate.bottomAnchor, constant: 20).isActive = true
    address.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    address.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    email.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    email.topAnchor.constraint(equalTo: address.bottomAnchor, constant: 20).isActive = true
    email.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    email.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    
    registerBtn.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
    registerBtn.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 20).isActive = true
    registerBtn.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
    registerBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    

    registerBtn.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
    
    
    
    
    }
    @objc func goToSignUp() {
        let signUp = FirstLogingViewController()
        navigationController?.pushViewController(signUp, animated: true)
    }

}
