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
        layout.itemSize = CGSize.init(width: 190, height: 250)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        layout.scrollDirection = .horizontal
        
        let CV = UICollectionView.init(frame: bounds, collectionViewLayout: layout)
        CV.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
        
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
        quizCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        quizCollectionView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    
    
}
