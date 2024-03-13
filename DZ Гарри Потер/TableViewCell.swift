//
//  TableViewCell.swift
//  DZ Гарри Потер
//
//  Created by BK on 08.03.2024.
//

import UIKit

/*class CharacterTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
*/
class CharacterTableViewCell: UITableViewCell {
    let nameLabel = UILabel()
    let houseLabel = UILabel()
    let wandLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        houseLabel.translatesAutoresizingMaskIntoConstraints = false
        wandLabel.translatesAutoresizingMaskIntoConstraints = false

        addSubview(nameLabel)
        addSubview(houseLabel)
        addSubview(wandLabel)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            houseLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            houseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            houseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            wandLabel.topAnchor.constraint(equalTo: houseLabel.bottomAnchor, constant: 8),
            wandLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            wandLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            wandLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

