//
//  OnboardingWhereViewController.swift
//  RS_iOS
//
//  Created by 황찬미 on 2023/05/08.
//

import UIKit

final class OnboardingWhereViewController: ViewController {
    
    // MARK: - Property
    
    // MARK: - UI Property
    
    private let whereLabel: UILabel = {
        let label = UILabel()
        label.text = "어디에서 일하시나요?"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let jobNameLabel: UILabel = {
        let label = UILabel()
        label.text = "근무지명"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let jobNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "카페"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let payDayLabel: UILabel = {
        let label = UILabel()
        label.text = "월급일"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let payDayTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "한 달 동안"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "근무한 돈을"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let jobDayTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "10일"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView3: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "에 받아요"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("다음", for: .normal)
        return button
    }()
    
    private let laterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("나중에 하기", for: .normal)
        return button
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setLayout()
    }
    
    private func setLayout() {
        view.addSubviews(whereLabel, jobNameLabel, jobNameTextField, lineView)
        view.addSubviews(payDayLabel, payDayTextField, lineView2, label2)
        view.addSubviews(jobDayTextField, lineView3, label3)
        view.addSubviews(nextButton, laterButton)
        
        whereLabel.translatesAutoresizingMaskIntoConstraints = false
        whereLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        whereLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 71).isActive = true
        
        jobNameLabel.translatesAutoresizingMaskIntoConstraints = false
        jobNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        jobNameLabel.topAnchor.constraint(equalTo: whereLabel.bottomAnchor, constant: 51).isActive = true
        
        jobNameTextField.translatesAutoresizingMaskIntoConstraints = false
        jobNameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        jobNameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35).isActive = true
        jobNameTextField.topAnchor.constraint(equalTo: jobNameLabel.bottomAnchor, constant: 10).isActive = true
        
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35).isActive = true
        lineView.topAnchor.constraint(equalTo: jobNameTextField.bottomAnchor).isActive = true
        
        payDayLabel.translatesAutoresizingMaskIntoConstraints = false
        payDayLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        payDayLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 34).isActive = true
 
        payDayTextField.translatesAutoresizingMaskIntoConstraints = false
        payDayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        payDayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35).isActive = true
        payDayTextField.topAnchor.constraint(equalTo: payDayLabel.bottomAnchor, constant: 15).isActive = true
        
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        lineView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView2.widthAnchor.constraint(equalToConstant: 203).isActive = true
        lineView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView2.topAnchor.constraint(equalTo: payDayTextField.bottomAnchor).isActive = true
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.leadingAnchor.constraint(equalTo: lineView2.trailingAnchor, constant: 20).isActive = true
        label2.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 70).isActive = true
        
        jobDayTextField.translatesAutoresizingMaskIntoConstraints = false
        jobDayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        jobDayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35).isActive = true
        jobDayTextField.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 20).isActive = true
        
        lineView3.translatesAutoresizingMaskIntoConstraints = false
        lineView3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView3.widthAnchor.constraint(equalToConstant: 203).isActive = true
        lineView3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView3.topAnchor.constraint(equalTo: jobDayTextField.bottomAnchor).isActive = true
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.leadingAnchor.constraint(equalTo: lineView3.trailingAnchor, constant: 20).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 20).isActive = true
        
        laterButton.translatesAutoresizingMaskIntoConstraints = false
        laterButton.heightAnchor.constraint(equalToConstant: 41).isActive = true
        laterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        laterButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        laterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.heightAnchor.constraint(equalToConstant: 41).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: laterButton.topAnchor, constant: -10).isActive = true
    }
    
    // MARK: - @objc
    
    // MARK: - Custom Method

}
