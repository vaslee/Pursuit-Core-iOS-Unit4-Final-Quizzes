//
//  ProfileView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {
  
    lazy var myLabel: UILabel = {
       let label = UILabel()
        label.text = "Edit Photo"
        label.backgroundColor = .white
        
        return label
    }()
    
    lazy var myImage: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "placeholder-image"), for: .normal)
      
        
        return button
    }()
    
   
    
    lazy var myUserName: UIButton = {
       let button = UIButton()
        button.setTitle("@UserName", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1), for: .normal)
       button.backgroundColor = .white
        
        return button
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
        setupProfile()
    }
    
}
extension ProfileView {
    private func setupProfile() {
        setLabelConstraints()
        setupProfileTableView()
        setUserNameButtonConstraints()
    }
    
    func setLabelConstraints() {
        addSubview(myLabel)
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 115).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    
    
    func setupProfileTableView() {
        addSubview(myImage)
        
        myImage.translatesAutoresizingMaskIntoConstraints = false

        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        myImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
        myImage.widthAnchor.constraint(equalToConstant: 150).isActive = true

    }
    func setUserNameButtonConstraints() {
       addSubview(myUserName)

        myUserName.translatesAutoresizingMaskIntoConstraints = false
        myUserName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myUserName.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 15).isActive = true
        myUserName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        myUserName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
    }
    
}
