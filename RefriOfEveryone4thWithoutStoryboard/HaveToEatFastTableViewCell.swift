//
//  HaveToEatFastTableViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/09/01.
//

import UIKit

class HaveToEatFastTableViewCell: UITableViewCell {
    static let identifier = "HaveToEatFastTableViewCell"
    
    let items = ["","","",""]
    
    let title = UILabel()
    let tableView = UITableView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        setting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setting(){
        addSubview(title)
        addSubview(tableView)
        
        tableView.register(HaveToEatFastTableViewCell.self, forCellReuseIdentifier: HaveToEatFastTableViewCell.identifier)
        
        layout()
    }
    
    func layout(){
        title.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        title.backgroundColor = .blue
        tableView.backgroundColor = .red
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            tableView.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 32),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        
    }
}

extension HaveToEatFastTableViewCell : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemListTableViewCell.identifier, for: indexPath)
        return cell
    }
}
