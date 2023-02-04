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
    
    private let userName: UITextField = {
        let userName = UITextField()
        userName.borderStyle = .roundedRect
        userName.layer.cornerRadius = 5
        userName.textColor = .white
        userName.font = UIFont.systemFont(ofSize: 17)
        userName.autocorrectionType = .no
        userName.placeholder = "Email"
        
        return userName
    }()
    
    
    func setUpConstraints(){
        view.addSubview(backgroundImage)
        view.addSubview(userName)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        userName.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        userName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        userName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        
    }

}
