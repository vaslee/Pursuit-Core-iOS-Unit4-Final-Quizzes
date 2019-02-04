//
//  DetailViewController.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  var detailLabel: String?
    
    let detailView = DetailView()
    
   public var quiz: Quiz!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailView.detailCollectionView.dataSource = self
        detailView.detailCollectionView.delegate = self
        view.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        view.addSubview(detailView)
      
       
        self.detailView.detailCollectionView.register(DetailCell.self, forCellWithReuseIdentifier: "DetailCell")
       
        
    }
    func setupData() {
       // if let title = quiz.quizTitle {
            //quiz.quizTitle = title
       // }
//
//        if let images = imageOfBooks {
//            detailView.detailBookImage.image = images
//        }
//
//        if let descriptions = descriptionOfBooks {
//            detailView.detailDescriptionOfBook.text = descriptions
//        }
        
    }
    
  

}

//
extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quiz.facts.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailCell", for: indexPath) as? DetailCell else {
            return UICollectionViewCell()
        }

        cell.detailTitleLabel.text = quiz.quizTitle

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = self.detailView.detailCollectionView.cellForItem(at: indexPath) as? DetailCell else {return}
        if cell.detailTitleLabel.text == quiz.quizTitle {
            UIView.transition(with: cell, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                
                cell.detailTitleLabel.text = self.quiz.facts[indexPath.row]
            })
        } else {
            UIView.transition(with: cell, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                
                cell.detailTitleLabel.text = self.quiz.quizTitle
            })
        }

    }
}
