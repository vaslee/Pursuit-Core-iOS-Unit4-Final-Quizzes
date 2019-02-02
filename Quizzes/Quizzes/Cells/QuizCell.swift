//
//  QuizCell.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit


class QuizCell: UICollectionViewCell {
    
 
    

    
    
//    lazy var myButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
//        button.setTitle("Title", for: .normal)
//        button.addTarget(self, action: #selector(myButtonPressed), for: .touchUpInside)
//        button.titleLabel?.numberOfLines = 0
//        button.titleLabel?.lineBreakMode = .byWordWrapping
//        button.titleLabel?.textAlignment = .center
//
//
//        return button
//    }()
//
   // @objc func myButtonPressed() {
        
        //navigationController?.pushViewController(DetailViewController(), animated: true)
      //  delegate?.seguePressed(title: quizData.quizTitle)
        
//        UIView.transition(with: myButton, duration: 1.0, options: [.transitionFlipFromRight], animations: {
//            self.myButton.setTitle("Fact #1", for: .normal)
//
//        })
//    }

    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Title"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    
    lazy var alertButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        button.setTitle("•••", for: .normal)
        
        
        return button
    }()
    
    
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        updateQuiz()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        updateQuiz()
    }
    
    private func updateQuiz() {
        backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        setupCells()
    }
}

extension QuizCell {
    private func setupCells() {
      // setLeftButtonConstraints()
      setLabelConstraints()
        setAlertButtonConstraint()
    }
    func setLabelConstraints() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
    }
    
    func setAlertButtonConstraint() {
        addSubview(alertButton)
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        alertButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
//
//    func setLeftButtonConstraints() {
//        addSubview(myButton)
//        myButton.translatesAutoresizingMaskIntoConstraints = false
//        myButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
//        myButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
//        myButton.heightAnchor.constraint(equalToConstant: 280).isActive = true
//        myButton.widthAnchor.constraint(equalToConstant: 160).isActive = true
//    }

}
