//
//  HeroHeaderUIView.swift
//  My Recepe
//
//  Created by Nadiranga on 1/1/23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    

//    private let discriptionLable: UILabel = {
//        let label = UILabel()
//        label.text = "WELCOME"
//        label.font = label.font.withSize(50)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        
        return imageView
    }()
    
    
    private func addGradient(){
        let radientLayer = CAGradientLayer()
         radientLayer.colors = [UIColor.clear.cgColor, UIColor.systemBackground.cgColor]
        radientLayer.frame = bounds
        layer.addSublayer(radientLayer)
    }

    private func applyingConstraint(){
//        let moreConstraints = [
//            discriptionLable.centerXAnchor.constraint(equalTo: centerXAnchor),
//            discriptionLable.centerYAnchor.constraint(equalTo: centerYAnchor),
//
//        ]
        

        
        
       // NSLayoutConstraint.activate(moreConstraints)
     
        }
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
       // addSubview(discriptionLable)
        applyingConstraint()
        
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
