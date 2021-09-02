//
//  CategoryTableViewCell.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/09/01.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    static let identifier = "CategoryTableViewCell"
    
    let categories = ["과일.채소", "음료", "두부.계란", "유제품", "요리.반찬", "곡류.전분", "빵.떡.과자", "소스.장류", "냉동.가공", "정육", "수산", "기타"]
    
    let inventoryName = UILabel()
    let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .vertical
        
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
        
        collectionViewSetting()
    }
    
    func collectionViewSetting(){
        self.collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func layout(){
        inventoryName.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
//        inventoryName.backgroundColor = .blue
        collectionView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            inventoryName.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            inventoryName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            collectionView.topAnchor.constraint(equalTo: self.inventoryName.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
    
    }

}

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.backgroundColor = .white
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        
        cell.categoryIcon.image = UIImage(named: "food_icon_oval")
        cell.categoryTitle.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 11)
        
        cell.categoryTitle.text = categories[indexPath.item]
//        cell.categoryTitle.text = "test"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let sectionInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = CGFloat(76)
        let cellHeight = CGFloat(94)
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
}
