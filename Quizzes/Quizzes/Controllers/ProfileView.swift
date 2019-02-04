//
//  ProfileView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    lazy var myView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    
    lazy var myImage: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "placeholder-image"), for: .normal)
        button.addTarget(self, action: #selector(imagePressed), for: .touchUpInside)
        
        return button
    }()
    
    @objc func imagePressed() {
        
    }
    
    lazy var myUserName: UIButton = {
       let button = UIButton()
        button.setTitle("UserName", for: .normal)
        button.addTarget(self, action: #selector(userNamePressed), for: .touchUpInside)
        
        return button
    }()
    
    @objc func userNamePressed() {
        
    }
    
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
        setupProfileTableView()
    }
    
    func setupProfileTableView() {
        addSubview(myView)
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        myView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)
    }
}
