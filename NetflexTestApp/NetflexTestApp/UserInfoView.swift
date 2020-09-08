//
//  UserInfoView.swift
//  NetflexTestApp
//
//  Created by 김광준 on 2020/09/07.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class UserInfoView: UIView {
    
    lazy var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.text = "Netflix Taste Test."
        titleLabel.textColor = .systemRed
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .clear
        return titleLabel
    }()
    
    lazy var nameTextField: UITextField = {
        let nameTextField: UITextField = UITextField()
        // placeholder 의 color 바꾸기.
        nameTextField.attributedPlaceholder = NSAttributedString.init(string: " 이름을 입력해 주세요.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        nameTextField.backgroundColor = .white
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.white.cgColor
        nameTextField.layer.cornerRadius = 8
        nameTextField.textColor = UIColor.white
        nameTextField.backgroundColor = .clear
        return nameTextField
    }()
    
    lazy var foodTextField: UITextField = {
        let foodTextField: UITextField = UITextField()
        // placeholder 의 color 바꾸기.
        foodTextField.attributedPlaceholder = NSAttributedString.init(string: " 좋아하는 음식을 입력해 주세요.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        foodTextField.backgroundColor = .white
        foodTextField.layer.borderWidth = 1
        foodTextField.layer.borderColor = UIColor.white.cgColor
        foodTextField.layer.cornerRadius = 8
        foodTextField.textColor = UIColor.white
        foodTextField.backgroundColor = .clear
        return foodTextField
    }()
    
    lazy var numberTextField: UITextField = {
        let numberTextField: UITextField = UITextField()
        // placeholder 의 color 바꾸기.
        numberTextField.attributedPlaceholder = NSAttributedString.init(string: " 좋아하는 숫자를 입력해 주세요.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        numberTextField.backgroundColor = .white
        numberTextField.layer.borderWidth = 1
        numberTextField.layer.borderColor = UIColor.white.cgColor
        numberTextField.layer.cornerRadius = 8
        numberTextField.textColor = UIColor.white
        numberTextField.backgroundColor = .clear
        return numberTextField
    }()

    
    lazy var confirmButton: UIButton = {
        let confirmButton: UIButton = UIButton()
        confirmButton.setTitle("확 인", for: .normal)
        confirmButton.setTitleColor(UIColor.white, for: .normal)
        confirmButton.titleLabel?.textAlignment = .center
        confirmButton.titleLabel?.font = UIFont.init(name: "Avenir Next", size: 20)
        confirmButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        confirmButton.layer.borderWidth = 1
        confirmButton.layer.borderColor = UIColor.white.cgColor
        confirmButton.layer.cornerRadius = 8
        confirmButton.backgroundColor = .clear
        return confirmButton
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        addDelegates()
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addDelegates() {
        nameTextField.delegate = self
        foodTextField.delegate = self
        numberTextField.delegate = self
    }
    
    private func addViews() {
        setupTitleLabel()
        setupNameTextField()
        setupFoodTextField()
        setupNumberTextField()
        setupConfirmButton()
    }
    
    private func setupTitleLabel() {
        let guide = self.safeAreaLayoutGuide
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -15),
            titleLabel.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupNameTextField() {
        let guide = self.safeAreaLayoutGuide
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 70),
            nameTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupFoodTextField() {
        let guide = self.safeAreaLayoutGuide
        
        foodTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(foodTextField)
        
        NSLayoutConstraint.activate([
            foodTextField.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            foodTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 50),
            foodTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            foodTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            foodTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupNumberTextField() {
        let guide = self.safeAreaLayoutGuide
        
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(numberTextField)
        
        NSLayoutConstraint.activate([
            numberTextField.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            numberTextField.topAnchor.constraint(equalTo: foodTextField.bottomAnchor, constant: 50),
            numberTextField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            numberTextField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            numberTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setupConfirmButton() {
        let guide = self.safeAreaLayoutGuide
        
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(confirmButton)
        
        NSLayoutConstraint.activate([
            confirmButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            confirmButton.widthAnchor.constraint(equalToConstant: 260),
            confirmButton.heightAnchor.constraint(equalToConstant: 50),
            confirmButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -67)
        ])
    }
}

extension UserInfoView: UITextFieldDelegate {
    
}