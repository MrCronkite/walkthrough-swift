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
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .darkText
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupCell() {
        self.backgroundColor = .clear
        
        [avatar, nameLable].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        
        NSLayoutConstraint.activate([
        
            avatar.topAnchor.constraint(equalTo: contentView.topAnchor),
            avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            avatar.heightAnchor.constraint(equalToConstant: 44),
            avatar.widthAnchor.constraint(equalToConstant: 44),
            
            nameLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLable.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 18),
            nameLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 18)
            
        ])
    }
    
    func config(content: Content) {
        nameLable.text = content.name ?? ""
        
        DispatchQueue.global().async {
            guard let imageUrl = URL(string: content.image ?? "") else { return }
            guard let imageData = try? Data(contentsOf: imageUrl) else { return }
            
            DispatchQueue.main.async {
                self.avatar.image = UIImage(data: imageData)
            }
        }
    }

}
