//
//  HomeViewController.swift
//  Helthy Food
//
//  Created by Nadiranga on 2/2/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    var name = ["Chicken Deval", "Tuna Fish Deval", "Orange", "Hoppers", "Fried Rice", "Noodles", "Vegetables"]
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
        configureNavbar()
        tableView.dataSource = self
        tableView.delegate = self
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        
        
        view.addSubview(tableView)
       
            tableView.tableHeaderView = headerView
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
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
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
        let con = DetailsFoodViewController()
        con.setData(namer: images[indexPath.row])
        self.navigationController?.pushViewController(con, animated: true)
        
    }
}
