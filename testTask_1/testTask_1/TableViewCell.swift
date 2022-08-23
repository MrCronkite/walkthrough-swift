//
//  TableViewCell.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let avatar = UIImageView()
    let nameLable: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupCell() {
        [avatar, nameLable].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
        
            avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            avatar.heightAnchor.constraint(equalToConstant: 32),
            avatar.widthAnchor.constraint(equalToConstant: 32),
            
            nameLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLable.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 8),
            nameLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
            
        ])
    }
    
    func config(content: Content) {
        avatar.image = UIImage(systemName: "image")
        nameLable.text = content.name
    }

}
