//
//  CustomTableViewCell.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/2/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   static let identifier = "CustomTableViewCell"
    
   
    
    private let foodImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ff1")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let foodMainTitle: UILabel = {
        let foodTitle = UILabel()
        foodTitle.textColor = .white
        foodTitle.text = "Pizza hut"
        foodTitle.font = .systemFont(ofSize: 17, weight: .bold)
        return foodTitle
    }()
    
    private let subTitle: UILabel = {
        let subTitle = UILabel()
        subTitle.textColor = .white
        subTitle.text = "Pizza hut"
        subTitle.font = .systemFont(ofSize: 15, weight: .thin)
        return subTitle
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        
        contentView.addSubview(foodMainTitle)
        contentView.addSubview(subTitle)
        contentView.addSubview(foodImageView)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func  configure(text: String, imageName: String, sub: String){
        foodMainTitle.text = text
        foodImageView.image = UIImage(named: imageName)
        subTitle.text = sub
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        foodMainTitle.text = nil
        foodImageView.image = nil
        subTitle.text = nil
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        let imageSize = contentView.frame.size.height-6
        
        foodMainTitle.frame = CGRect(x: 116, y: 8, width: frame.width - 116, height: 30)
        
        subTitle.frame = CGRect(x: 116, y: 42, width: frame.width - 116, height: 30)
        
        foodImageView.frame = CGRect(x: 4, y: 3, width: imageSize, height: imageSize)
    }
}
