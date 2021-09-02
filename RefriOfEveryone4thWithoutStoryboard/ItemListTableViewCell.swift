//
//  ItemListTableViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/09/01.
//

import UIKit

class ItemListTableViewCell: UITableViewCell {
    static let identifier = "ItemListTableViewCell"
    
    let itemImage = UIImageView()
    let categroy = UILabel()
    let itemTitle = UILabel()
    let period = UILabel()
    let dDay = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        setting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setting(){
        addSubview(itemImage)
        addSubview(categroy)
        addSubview(itemTitle)
        addSubview(period)
        addSubview(dDay)
        
        layout()
    }
    
    func layout(){
        itemImage.translatesAutoresizingMaskIntoConstraints = false
        categroy.translatesAutoresizingMaskIntoConstraints = false
        itemTitle.translatesAutoresizingMaskIntoConstraints = false
        period.translatesAutoresizingMaskIntoConstraints = false
        dDay.translatesAutoresizingMaskIntoConstraints = false

        itemImage.backgroundColor = .blue
        categroy.backgroundColor = .yellow
        itemTitle.backgroundColor = .yellow
        period.backgroundColor = .yellow
        
        categroy.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 14)
        itemTitle.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 17)
        period.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 13)
        dDay.textColor = .red
        dDay.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        
        NSLayoutConstraint.activate([
            itemImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            itemImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            itemImage.widthAnchor.constraint(equalToConstant: 56),
            itemImage.heightAnchor.constraint(equalToConstant: 56),
            
            categroy.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            categroy.leadingAnchor.constraint(equalTo: self.itemImage.trailingAnchor, constant: 12),
            
            itemTitle.topAnchor.constraint(equalTo: self.categroy.bottomAnchor, constant: 6),
            itemTitle.leadingAnchor.constraint(equalTo: self.itemImage.trailingAnchor, constant: 12),
            
            period.topAnchor.constraint(equalTo: self.itemTitle.bottomAnchor, constant: 6),
            period.leadingAnchor.constraint(equalTo: self.itemImage.trailingAnchor, constant: 12),
            
            dDay.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            dDay.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16)
            
        ])
    }
    
}

