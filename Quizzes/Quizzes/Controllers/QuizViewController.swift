//
//  ViewController.swift
//  Quizzes
//
//  Created by Alex Paul on 1/31/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var titleLabel = String()
    var saveQuiz = QuizModel.getQuiz(){
        didSet {
            DispatchQueue.main.async {
                self.quizView.quizCollectionView.reloadData()

            }
        }
    }
   
    var detailView = DetailView()
    let quizView = QuizView()
    
  override func viewDidLoad() {
    super.viewDidLoad()

    quizView.quizCollectionView.dataSource = self
    quizView.quizCollectionView.delegate = self
    
    view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    view.addSubview(quizView)
     self.quizView.quizCollectionView.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
        saveQuiz = QuizModel.getQuiz()
  
    
    
    }
    override func viewWillAppear(_ animated: Bool) {
        saveQuiz = QuizModel.getQuiz()
    }
    
}

extension QuizViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return saveQuiz.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else {
            return UICollectionViewCell()
        }
        let quizes = saveQuiz[indexPath.row]
       
        cell.titleLabel.text = quizes.quizTitle
    cell.alertButton.addTarget(self, action: #selector(alertAction), for: .touchUpInside)
        return cell
    }
        @objc func alertAction(_ sender: UIButton) {
        
 
        let alert = UIAlertController(title: "What do you need?", message: "Please Select an Option", preferredStyle: .actionSheet)
        let deleteButton = UIAlertAction(title: "Delete", style: .destructive, handler: { (action) in
            QuizModel.deleteQuiz(atIndex: sender.tag)
            self.saveQuiz = QuizModel.getQuiz()
            self.detailView.detailCollectionView.reloadData()
        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (_) in })
        
        alert.addAction(deleteButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

extension QuizViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let quizes = saveQuiz[indexPath.row]
        let detailVC = DetailViewController()
        detailVC.quiz = quizes

        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}


