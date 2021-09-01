//
//  CategoriesCollectionViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/08/30.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoriesCollectionViewCell"
    
    let categoryIconImage = UIImageView()
    let categoryTitle = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(categoryIconImage)
        addSubview(categoryTitle)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func layout(){
        categoryIconImage.translatesAutoresizingMaskIntoConstraints = false
        categoryTitle.translatesAutoresizingMaskIntoConstraints = false
        
        //test
        categoryIconImage.backgroundColor = .yellow
        categoryTitle.backgroundColor = .green
        
       
        
        
        
        
    }
    

}
