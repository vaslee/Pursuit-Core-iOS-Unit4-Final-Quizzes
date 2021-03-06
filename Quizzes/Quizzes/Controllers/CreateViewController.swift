//
//  CreateViewController.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    let createView = CreateView()
    var quizs: Quiz!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: .plain, target: self, action: #selector(createPressed))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        view.addSubview(createView)
    
        createView.myTextField.delegate = self
        createView.myFirstTextView.delegate = self
        createView.mySecondTextView.delegate = self
    }
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { alert in }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
    @objc func createPressed(){
        if (createView.myTextField.text?.isEmpty == false && createView.myTextField.text != "Title") && (createView.myFirstTextView.text != "" && createView.myFirstTextView.text != "Enter first quiz fact") && (createView.mySecondTextView.text != "" && createView.mySecondTextView.text != "Enter second quiz fact") {
            let id = UUID().uuidString
            let createTitle = createView.myTextField.text!
            let fact = [createView.myFirstTextView.text!, createView.mySecondTextView.text!]
            let create = Create.init(id: id, quizTitle: createTitle, facts: fact)
            QuizModel.addQuiz(quiz: create)
            
            showAlert(title: "Card Completed", message: "Card is now in the Quiz")
           let quizVC = QuizViewController()
            navigationController?.popToViewController(quizVC, animated: true)
            
        } else {
            showAlert(title: "Create not complete", message: "Please complete all the missing parts before you create.")
        }

    }

    @objc func cancelPressed() {
        tabBarController?.selectedIndex = 1
        dismiss(animated: true, completion: nil)
    }
    

}

extension CreateViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if createView.myTextField.text == createView.textFieldPlaceholder {
            textField.text = ""
            textField.textColor = .black
        }
    }
}


extension CreateViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
     
        if createView.myFirstTextView.text == createView.firstTexTViewPlaceholder {
            textView.text = ""
            textView.textColor = .black
        }
        if createView.mySecondTextView.text == createView.secondTexTViewPlaceholder {
            textView.text = ""
            textView.textColor = .black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        
    }
}
