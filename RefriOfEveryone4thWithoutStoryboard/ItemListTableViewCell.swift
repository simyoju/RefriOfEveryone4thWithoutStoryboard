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
    let period = UIlabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
    }

}
