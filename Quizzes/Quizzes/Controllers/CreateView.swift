
//
//  CreateView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {

     var textFieldPlaceholder = "Title"
     var firstTexTViewPlaceholder = "Enter first quiz fact"
     var secondTexTViewPlaceholder = "Enter second quiz fact"
    
    lazy var myTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        textField.text = textFieldPlaceholder
        textField.textColor = .gray
        
        return textField
    }()
    
    lazy var myFirstTextView: UITextView = {
        let tv = UITextView()
        tv.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        tv.text = firstTexTViewPlaceholder
        tv.textColor = .gray
        tv.font = UIFont.systemFont(ofSize: 25)
        return tv
    }()
    
    lazy var mySecondTextView: UITextView = {
       let tv2 = UITextView()
        tv2.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        tv2.text = secondTexTViewPlaceholder
        tv2.textColor = .gray
        tv2.font = UIFont.systemFont(ofSize: 25)
        
        return tv2
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        profileSetup()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        profileSetup()
    }
    
    private func profileSetup() {
        setupUser()
    }
    
    
}
extension CreateView {
    private func setupUser() {
        setupTextFieldConstraints()
        setupTextViewConstraints()
        setupSecondTextViewConstraints()
    }
    
    func setupTextFieldConstraints() {
        addSubview(myTextField)
        
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        myTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true

        myTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true

        myTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -750).isActive = true

    }
    
    func setupTextViewConstraints() {
        addSubview(myFirstTextView)
        myFirstTextView.translatesAutoresizingMaskIntoConstraints = false
        myFirstTextView.topAnchor.constraint(equalTo: myTextField.bottomAnchor, constant: 15).isActive = true
        myFirstTextView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
      
        myFirstTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        myFirstTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        myFirstTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -500).isActive = true
    }
    
    func setupSecondTextViewConstraints() {
        addSubview(mySecondTextView)
        mySecondTextView.translatesAutoresizingMaskIntoConstraints = false
        mySecondTextView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    
        mySecondTextView.topAnchor.constraint(equalTo: myFirstTextView.bottomAnchor, constant: 10).isActive = true
        mySecondTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        mySecondTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        mySecondTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -200).isActive = true
    }
    
}
