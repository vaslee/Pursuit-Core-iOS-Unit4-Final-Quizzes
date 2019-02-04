//
//  SearchViewController.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    let searchView = SearchView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        view.addSubview(searchView)
    }
    

    
}
