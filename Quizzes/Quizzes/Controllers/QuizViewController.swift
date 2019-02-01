//
//  ViewController.swift
//  Quizzes
//
//  Created by Alex Paul on 1/31/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    let quizView = QuizView()
    
  override func viewDidLoad() {
    super.viewDidLoad()

    quizView.quizCollectionView.dataSource = self
    //quizView.quizCollectionView.delegate = self
    //view.backgroundColor = .white
    view.addSubview(quizView)
    
     self.quizView.quizCollectionView.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
    }


}

extension QuizViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else {
            return UICollectionViewCell()
        }
        
        
        return cell
    }
    
}

//extension QuizViewController: UICollectionViewDelegate {
//
//}
