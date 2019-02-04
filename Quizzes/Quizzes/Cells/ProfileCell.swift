//
//  ProfileCell.swift
//  Quizzes
//
//  Created by TingxinLi on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    lazy var myImage: UIImageView = {
      let iv = UIImageView(image: UIImage(named: "placeholder-image"))
        
        return iv
        
    }()
    
    lazy var myButton: UIButton = {
       let button = UIButton()
        button.setTitle("UserName", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()
    
    @objc func buttonPressed() {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) { //init the cell
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(myImage)
        
        setImageConstraints()
        setButtonConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImageConstraints() {
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        myImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setButtonConstraints() {
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myButton.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 5).isActive = true
        myButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        myButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
