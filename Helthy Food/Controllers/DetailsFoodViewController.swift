//
//  DetailsFoodViewController.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/4/23.
//

import UIKit

class DetailsFoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpConstraints()
    
    }
    
    private let logoImage: UIImageView = {
        let logoImage = UIImageView()
        
        logoImage.image = UIImage(named: "npp")
        logoImage.image?.withRenderingMode(.alwaysOriginal)
        return logoImage
    }()
    private let firstName: UILabel = {
        let userName = UILabel()
        userName.layer.borderWidth = 1
        userName.layer.cornerRadius = 10
        userName.text = "NUTRITION INFORMATION"
        userName.font = userName.font.withSize(20)
        return userName
    }()
  
    
    public func setData
    (namer : String){
        logoImage.image = UIImage(named: namer)
    }

    func setUpConstraints(){
        view.addSubview(logoImage)
        view.addSubview(firstName)
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        firstName.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: firstName.topAnchor, constant: -20).isActive = true
       
        
        
        
        firstName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
