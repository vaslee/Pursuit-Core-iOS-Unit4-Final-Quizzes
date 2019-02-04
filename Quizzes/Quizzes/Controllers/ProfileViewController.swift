//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileView = ProfileView()
    override func viewDidLoad() {
        super.viewDidLoad()

        profileView.myTableView.dataSource = self
        profileView.myTableView.delegate = self
        
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        view.addSubview(profileView)
        self.profileView.myTableView.register(ProfileCell.self, forCellReuseIdentifier: "ProfileCell")
    
    }
    

    
}
extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as? ProfileCell else { return UITableViewCell() }
      
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
