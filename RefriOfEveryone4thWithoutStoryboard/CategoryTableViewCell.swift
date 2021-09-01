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
        
        inventoryName.backgroundColor = .blue
        collectionView.backgroundColor = .yellow
        
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

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.backgroundColor = .red
        
        return cell
    }
}
