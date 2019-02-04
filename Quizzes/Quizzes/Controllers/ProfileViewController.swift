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
    
     private var PhotoPickerViewController: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        view.addSubview(profileView)
        
    self.profileView.myImage.addTarget(self, action: #selector(imagePressed), for: .touchUpInside)
        self.profileView.myUserName.addTarget(self, action: #selector(userNamePressed), for: .touchUpInside)
        setupImagePickerViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if profileView.myUserName.currentTitle == "@UserName" {
        setupAlertController()
        }
    }
    
    private func setupImagePickerViewController() {
        PhotoPickerViewController = UIImagePickerController()
        PhotoPickerViewController.delegate = self
        
    }
    
    private func showPhotoJournalController() {
        
        present(PhotoPickerViewController, animated: true, completion: nil)
        
    }
    
    @objc func imagePressed() {
        PhotoPickerViewController.sourceType = .photoLibrary
        showPhotoJournalController()
    }
    
    func setupAlertController() {
        let alertController = UIAlertController(title: "SetUp Profile", message: "Please enter your UserName to start.", preferredStyle: .alert)
        alertController.addTextField { (textfield) in
            textfield.font = UIFont.boldSystemFont(ofSize: 20)
            textfield.layer.cornerRadius = 7.0
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        let submit = UIAlertAction(title: "Submit", style: .default) { (alert) in
            guard let userName = alertController.textFields?.first?.text
                else {
                    return
            }
            self.profileView.myUserName.setTitle("@\(userName)", for: .normal)
            
        }
        alertController.addAction(cancel)
        alertController.addAction(submit)
        present(alertController, animated: true, completion: nil)
    }
    @objc func userNamePressed() {
        setupAlertController()
    }
}



extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
           profileView.myImage.setImage(image, for: .normal)
            // photoSelected = image
        } else {
            print("original image is nil")
        }
        dismiss(animated: true, completion: nil)
    }
}
