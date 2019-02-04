//
//  SearchView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchView: UIView {

    lazy var searchCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 180, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        
        
        layout.scrollDirection = .vertical
        
        let CV = UICollectionView.init(frame: bounds, collectionViewLayout: layout)
        CV.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        
        return CV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        searchSetup()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        searchSetup()
    }
    
    private func searchSetup() {
        setupSearch()
    }
}

extension SearchView {
    private func setupSearch() {
        setupSearchCollectionView()
        
    }
    
    func setupSearchCollectionView() {
        addSubview(searchCollectionView)
        searchCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        
        searchCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9).isActive = true
        searchCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        searchCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    
}
