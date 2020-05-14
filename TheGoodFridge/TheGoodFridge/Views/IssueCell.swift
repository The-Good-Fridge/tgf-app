//
//  IssueCollectionViewCell.swift
//  TheGoodFridge
//
//  Created by Eugene Lo on 5/11/20.
//  Copyright © 2020 Eugene Lo. All rights reserved.
//

import UIKit

class IssueCell: UICollectionViewCell {
    
    let goalButton: ValueGoalButton
    let envSelectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let envUnselectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
    let animalSelectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let animalUnselectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
    let humanSelectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let humanUnselectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
    
    override init(frame: CGRect) {
        goalButton = ValueGoalButton()
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(goalButton)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func text() -> String? {
        return goalButton.titleLabel?.text
    }
    
    func setText(to text: String) {
        goalButton.setTitle(text, for: .normal)
    }
    
    func setImages() {
        let selectedImage = UIImage(named: "IssueButtonHighlighted")
        let unselectedImage = UIImage(named: "IssueButtonNormal")
        goalButton.setImages(selected: selectedImage, unselected: unselectedImage)
    }
    
    private func setupLayout() {
        let constraints = [
            goalButton.topAnchor.constraint(equalTo: topAnchor),
            goalButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            goalButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            goalButton.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
