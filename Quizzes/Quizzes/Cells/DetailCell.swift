//
//  DetailCell.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailCell: UICollectionViewCell {
    
    lazy var detailTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        updateDetail()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        updateDetail()
    }
    
    private func updateDetail() {
        backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        setupDetailCells()
    }
}



extension DetailCell {
    private func setupDetailCells() {
        
        setDetailTitleLabelConstraints()
    }
    
    func setDetailTitleLabelConstraints() {
        addSubview(detailTitleLabel)
        detailTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        detailTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        detailTitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        detailTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        detailTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    
    
    
}
