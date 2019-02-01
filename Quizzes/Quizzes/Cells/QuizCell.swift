//
//  QuizCell.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizCell: UICollectionViewCell {
    lazy var leftButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        button.setTitle("what is the name of you", for: .normal)
        button.addTarget(self, action: #selector(leftButtonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func leftButtonPressed() {
        UIView.transition(with: leftButton, duration: 1.0, options: [.transitionFlipFromRight], animations: {
            self.leftButton.setTitle("My name is awasome hahahahahaha", for: .normal)
            
        })
    }
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        updateQuiz()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        updateQuiz()
    }
    
    private func updateQuiz() {
        backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        setupCells()
    }
}

extension QuizCell {
    private func setupCells() {
       setLeftButtonConstraints()
        
    }
    
    func setLeftButtonConstraints() {
        addSubview(leftButton)
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        leftButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        leftButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        leftButton.widthAnchor.constraint(equalTo: widthAnchor, constant: 260).isActive = true
    }
}
