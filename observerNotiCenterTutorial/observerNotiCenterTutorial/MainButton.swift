//
//  MainButton.swift
//  observerNotiCenterTutorial
//
//  Created by 김광준 on 2020/10/13.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class MainButton: UIView {
    
    var mainButton: UIButton = {
        let mainButton: UIButton = UIButton()
        mainButton.backgroundColor = .blue
        mainButton.layer.cornerRadius = 8.0
        mainButton.layer.borderWidth = 1.0
        mainButton.layer.borderColor = UIColor.white.cgColor
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.setTitle("choose your team", for: .normal)
        return mainButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        setupButton()
    }
    
    private func setupButton() {
        let guide = self.safeAreaLayoutGuide
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(mainButton)
        
        NSLayoutConstraint.activate([
            mainButton.topAnchor.constraint(equalTo: guide.topAnchor),
            mainButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -30),
        ])
        
        
    }
    
    

}

