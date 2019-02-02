//
//  DetailView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var detailCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 180, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        
        
        layout.scrollDirection = .vertical
        
        let CV = UICollectionView.init(frame: bounds, collectionViewLayout: layout)
        CV.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        
        return CV
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        detailSetup()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        detailSetup()
    }
    
    private func detailSetup() {
        setupDetail()
    }
    

}
extension DetailView {
    private func setupDetail() {
        setupDetailCollectionView()
    }
    
    func setupDetailCollectionView() {
        addSubview(detailCollectionView)
        detailCollectionView.translatesAutoresizingMaskIntoConstraints = false
        

        detailCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9).isActive = true
        detailCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        detailCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        
    }
}
