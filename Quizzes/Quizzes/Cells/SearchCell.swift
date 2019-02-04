//
//  SearchCell.swift
//  Quizzes
//
//  Created by TingxinLi on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
    lazy var searchLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button.setTitle(" ✔︎ ", for: .normal)
        
        
        return button
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        updateSearch()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        updateSearch()
    }
    
    private func updateSearch() {
        backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        setupSearchCells()
    }
}

extension SearchCell {
    private func setupSearchCells() {
       
        setSearchLabelConstraints()
        setAddButtonConstraint()
    }
    func setSearchLabelConstraints() {
        addSubview(searchLabel)
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        searchLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        searchLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        searchLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
    }
    
    func setAddButtonConstraint() {
        addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
}
