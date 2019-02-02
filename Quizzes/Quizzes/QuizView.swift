//
//  QuizView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizView: UIView {

    lazy var quizCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 180, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)

        
        layout.scrollDirection = .vertical
        
        let CV = UICollectionView.init(frame: bounds, collectionViewLayout: layout)
        CV.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        return CV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        quizSetup()
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        quizSetup()
    }
    
    private func quizSetup() {
        setupQuiz()
    }
}

extension QuizView {
    private func setupQuiz() {
     setupQuizCollectionView()
        
    }
    
    func setupQuizCollectionView() {
        addSubview(quizCollectionView)
        quizCollectionView.translatesAutoresizingMaskIntoConstraints = false

        
        quizCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9).isActive = true
        quizCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        quizCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        
    }
    
    
    
}
