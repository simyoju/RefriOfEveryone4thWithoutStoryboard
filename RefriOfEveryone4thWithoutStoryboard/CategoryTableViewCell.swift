//
//  CategoryTableViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/09/01.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    static let identifier = "CategoryTableViewCell"
    
    let inventoryName = UILabel()
    let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
                
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        setting()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setting(){
        addSubview(inventoryName)
        addSubview(collectionView)
    }
    
    private func layout(){
        inventoryName.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        inventoryName.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            inventoryName.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            inventoryName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            collectionView.topAnchor.constraint(equalTo: self.inventoryName.topAnchor, constant: 16),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 32),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16)
            
            
        ])
    }

}
