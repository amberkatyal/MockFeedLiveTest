//
//  FeedTVCell.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import UIKit

final class FeedTVCell: UITableViewCell, Reusable {
    
    // MARK: - Subviews
    let headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let subheadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    // MARK: - Inits
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        // headingLabel
        contentView.addSubview(headingLabel)
        NSLayoutConstraint.activate([
            headingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            headingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            headingLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            headingLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        // subheadingLabel
        contentView.addSubview(subheadingLabel)
        NSLayoutConstraint.activate([
            subheadingLabel.topAnchor.constraint(equalTo: headingLabel.topAnchor, constant: 16),
            subheadingLabel.leadingAnchor.constraint(equalTo: headingLabel.trailingAnchor, constant: 16),
            subheadingLabel.bottomAnchor.constraint(equalTo: headingLabel.bottomAnchor),
            subheadingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
}
