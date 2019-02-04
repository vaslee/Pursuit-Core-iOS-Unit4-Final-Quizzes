//
//  ProfileView.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    lazy var myTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
        return tableView
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
        setupProfileTableView()
    }
    
    func setupProfileTableView() {
        addSubview(myTableView)
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myTableView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    }
}
