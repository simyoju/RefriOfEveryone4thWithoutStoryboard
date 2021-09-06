//
//  CategoryCollectionViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/09/01.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "CategoryCollectionViewCell"
    
    let categoryIcon = UIImageView()
    let categoryTitle = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setting(){
        addSubview(categoryIcon)
        addSubview(categoryTitle)
        
        layout()
    }
    
    func layout(){
        categoryIcon.translatesAutoresizingMaskIntoConstraints = false
        categoryTitle.translatesAutoresizingMaskIntoConstraints = false
        
//        categoryIcon.backgroundColor = .purple
//        categoryTitle.backgroundColor = .green
        
        NSLayoutConstraint.activate([
            categoryIcon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 17),
            
            categoryIcon.heightAnchor.constraint(equalToConstant: 40),
            categoryIcon.widthAnchor.constraint(equalToConstant: 40),
            
            categoryTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryTitle.topAnchor.constraint(equalTo: self.categoryIcon.bottomAnchor, constant: 16),
            
        ])
        
        
    }
    
    
    
}

