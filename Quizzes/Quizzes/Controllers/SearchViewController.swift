//
//  SearchViewController.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    var saveSearch = QuizModel.getQuiz()
    let searchView = SearchView()
    var search = [Quiz]() {
        didSet {
            self.searchView.searchCollectionView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.searchCollectionView.dataSource = self
        searchView.searchCollectionView.delegate = self
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        view.addSubview(searchView)
        
        self.searchView.searchCollectionView.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")
        
        searchInfo()
    }
    private func searchInfo() {
        QuizAPIClient.searchQuiz() { (appError, quiz) in
            DispatchQueue.main.async {
                
                if let appError = appError {
                    print(appError.errorMessage())
                } else if let search = quiz {
                    self.search = search
                }
            }
        }
        
    }

    
}
extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return search.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCell else {
            return UICollectionViewCell()
        }
        let searches = search[indexPath.row]
        //cell.myButton.setTitle(quizes.quizTitle, for: .normal)
        cell.searchLabel.text = searches.quizTitle
        cell.addButton.tag = indexPath.row
        cell.addButton.addTarget(self, action: #selector(addButton), for: .touchUpInside)
        return cell
    }
    @objc func addButton(_ sender: UIButton) {
        //let quize = quizs[sender.tag]
        
        let alert = UIAlertController(title: "What do you need?", message: "Please Select an Option", preferredStyle: .actionSheet)
        let addButton = UIAlertAction(title: "Add", style: .default, handler: { (action) in
            QuizModel.addQuiz(quiz: self.search[sender.tag])
//            self.saveSearch = QuizModel.getQuiz()
//            self.searchView.searchCollectionView.reloadData()
        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (_) in })
        
        alert.addAction(addButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

extension SearchViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
////         guard let cell = self.detailView.detailCollectionView.cellForItem(at: indexPath) as? DetailCell else {return}
//        let searches = search[indexPath.row]
//        let quizVC = QuizViewController()
////        quizVC.quizs = [searches]
//        //        detailVC.detailLabel = quizes.quizTitle
//
//        navigationController?.pushViewController(quizVC, animated: true)
//    }
}


