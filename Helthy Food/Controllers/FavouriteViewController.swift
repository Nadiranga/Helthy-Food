//
//  FavouriteViewController.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/2/23.
//

import UIKit

class FavouriteViewController: UIViewController {

    
    var name = ["Chicken Deval", "Apple", "Orange", "Hoppers", "Fried Rice", "Noodles", "Vegetables"]
    var sub = ["Fat , Protein , Minerals", "Vitamins", "Fat", "Minerals", "Minerals", "Minerals", "Minerals"]
    var images = ["ff1","ff2", "ff3","ff4", "ff5", "ff6", "ff7"]
    
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        
        
        return tableView
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Favourite Foods"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    
    
    private func configureNavbar(){
        var image = UIImage(named: "npp")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: nil)
        ]
        
        navigationController?.navigationBar.tintColor = .white
    }


  
}
extension FavouriteViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as?  CustomTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(text: name[indexPath.row], imageName: images[indexPath.row], sub: sub[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let controller = CustomTableViewCell.init(name: "sssa", bundle: nil).instantiateViewController(withIdentifier: "PreviewViewController") as! PreviewViewController; controller.strSelectedItem = "\(name[indexPath.row])"
//        self.navigationController?.pushViewController(controller, animated:true)
    }
}
