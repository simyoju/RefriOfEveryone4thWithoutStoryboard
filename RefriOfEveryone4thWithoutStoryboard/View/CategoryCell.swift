//
//  CategoryCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/08/27.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    let identifier = "categoryCell"
    
    let image = UIImageView()
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setting(){
        self.backgroundColor = .yellow
        self.addSubview(image)
        self.addSubview(title)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            image.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            image.heightAnchor.constraint(equalToConstant: 60),
            image.widthAnchor.constraint(equalToConstant: 60),
            
            title.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            title.topAnchor.constraint(equalTo: self.image.bottomAnchor, constant: 10)
 
        ])
    }
    
}
