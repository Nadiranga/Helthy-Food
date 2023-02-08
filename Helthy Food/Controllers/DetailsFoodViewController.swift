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
        configureNavbar()
        
        
    
    }
    
    
    private let logoImage: UIImageView = {
        let logoImage = UIImageView()
        
        logoImage.image = UIImage(named: "npp")
        logoImage.image?.withRenderingMode(.alwaysOriginal)
        return logoImage
    }()
    private let firstName: UILabel = {
        let userName = UILabel()
        
        userName.text = " TUNA FISH DEVIL "
        userName.font = userName.font.withSize(20)
        return userName
    }()
    private let titleIngrdient: UILabel = {
        let userName = UILabel()
     
        userName.text = " INGREDIENT "
        userName.font = userName.font.withSize(15)
        return userName
    }()
    private let ingrdients: UILabel = {
        let userName = UILabel()
      
        userName.text = " - SUGAR, MILK, TUNA FISH, NUTURAL FLAVORS "
        userName.font = userName.font.withSize(12)
        return userName
    }()
    private let titleNlevelas: UILabel = {
        let userName = UILabel()
        
        userName.text = " NUTRITION FACTS "
        userName.font = userName.font.withSize(15)
        return userName
    }()
    
    private let nlevels: UILabel = {
        let userName = UILabel()
        
//        userName.frame = CGRect(x: 10.0, y: 50.0, width: UIScreen.main.bounds.size.width - 20.0, height: 100.0)
//        userName.lineBreakMode = .byCharWrapping
      
        userName.text = " - Calories 110 "
        //userName.numberOfLines = 0
        userName.font = userName.font.withSize(12)
        return userName
    }()
    private let nlevels2: UILabel = {
        let userName = UILabel()
        userName.text = " - Total Fat 1g "
        userName.font = userName.font.withSize(12)
        return userName
    }()
    private let nlevels3: UILabel = {
        let userName = UILabel()
        userName.text = " - Cholesterol  0mg "
        userName.font = userName.font.withSize(12)
        return userName
    }()
    private let nlevels4: UILabel = {
        let userName = UILabel()
        userName.text = " - Total Carbohydrate  24g "
        userName.font = userName.font.withSize(12)
        return userName
    }()
    public func setData(namer : String, title : String){
        logoImage.image = UIImage(named: namer)
        firstName.text  = title
    }
    private func configureNavbar(){
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: #selector(abc))
        ]
        
        navigationController?.navigationBar.tintColor = .white
    }
    @objc   func abc(){
        let loader =  self.loader()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.stopLoade(loader: loader)
        }
    }
    func setUpConstraints(){
        view.addSubview(logoImage)
        view.addSubview(firstName)
        view.addSubview(titleIngrdient)
        view.addSubview(ingrdients)
        view.addSubview(titleNlevelas)
        view.addSubview(nlevels)
        view.addSubview(nlevels2)
        view.addSubview(nlevels3)
        view.addSubview(nlevels4)
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        firstName.translatesAutoresizingMaskIntoConstraints = false
        titleIngrdient.translatesAutoresizingMaskIntoConstraints = false
        ingrdients.translatesAutoresizingMaskIntoConstraints = false
        titleNlevelas.translatesAutoresizingMaskIntoConstraints = false
        nlevels.translatesAutoresizingMaskIntoConstraints = false
        nlevels2.translatesAutoresizingMaskIntoConstraints = false
        nlevels3.translatesAutoresizingMaskIntoConstraints = false
        nlevels4.translatesAutoresizingMaskIntoConstraints = false
        
        
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: firstName.topAnchor, constant: -20).isActive = true
       
        
        
        
        firstName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
        titleIngrdient.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        titleIngrdient.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: 20).isActive = true
        //titleIngrdient.widthAnchor.constraint(equalToConstant: view.frame.width-10).isActive = true
        //titleIngrdient.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        ingrdients.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        ingrdients.topAnchor.constraint(equalTo: titleIngrdient.bottomAnchor, constant: 10).isActive = true
        //ingrdients.widthAnchor.constraint(equalToConstant: view.frame.width-10).isActive = true
       // ingrdients.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        titleNlevelas.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        titleNlevelas.topAnchor.constraint(equalTo: ingrdients.bottomAnchor, constant: 20).isActive = true
        //titleNlevelas.widthAnchor.constraint(equalToConstant: view.frame.width-10).isActive = true
       // titleNlevelas.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        nlevels.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nlevels.topAnchor.constraint(equalTo: titleNlevelas.bottomAnchor, constant: 10).isActive = true
        
        
        
        nlevels2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nlevels2.topAnchor.constraint(equalTo: nlevels.bottomAnchor, constant: 10).isActive = true

        
        
        
        nlevels3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nlevels3.topAnchor.constraint(equalTo: nlevels2.bottomAnchor, constant: 10).isActive = true
        
        
        nlevels4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nlevels4.topAnchor.constraint(equalTo: nlevels3.bottomAnchor, constant: 10).isActive = true
        
    }
  
}

extension DetailsFoodViewController {
    func loader() -> UIAlertController {
        
        let alert = UIAlertController(title: nil, message: "Added to favourite!", preferredStyle: .alert)
        
//        let indicater = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
//        indicater.hidesWhenStopped = true
//
//        indicater.style = UIActivityIndicatorView.Style.large
//        indicater.startAnimating()
       // alert.view.addSubview(indicater)
        self.present(alert, animated: true, completion: nil)
        return alert
    }
    
    func stopLoade(loader : UIAlertController){
        DispatchQueue.main.async {
            loader.dismiss(animated: true, completion: nil)
        }
    }
}
