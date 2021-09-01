//
//  HomeVC.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/08/22.
//

import UIKit

enum CellType {
    case category
    case list
    case list2
}

class HomeVC: UIViewController {
    
    let categories = CategoriesData()
    let sectionTitles = [" ","hi"," "]
    
    let layout:[CellType] = [.category, .list]
    
    let tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewLayout()
        
        
        
        self.title = "home"
        
        let tableViewCategoryNib = UINib(nibName: "CategoriesTableViewCell", bundle: nil)
        tableView.register(tableViewCategoryNib, forCellReuseIdentifier: "CategoriesTableViewCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    private func tableViewLayout(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
}

extension HomeVC : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoriesTableViewCell.identifier) as! CategoriesTableViewCell 
//        cell.setCell()
        cell.backgroundColor = .blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     
        
        switch indexPath.row {
        case 0 : return CGFloat(360)
        default: return CGFloat(100)
        }
        
    }
}
