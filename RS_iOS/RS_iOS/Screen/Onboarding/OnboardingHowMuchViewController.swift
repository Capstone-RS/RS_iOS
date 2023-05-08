//
//  OnboardingHowMuch.swift
//  RS_iOS
//
//  Created by 황찬미 on 2023/05/08.
//

import UIKit

final class OnboardingHowMuchViewController: UIViewController {
    
    // MARK: - Property
    
    // MARK: - UI Property
    
    private let howMuchLabel: UILabel = {
        let label = UILabel()
        label.text = "언제 얼마나 일하시나요?"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let payLabel: UILabel = {
        let label = UILabel()
        label.text = "급여"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let hourPayTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "시급"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let totalMoneyTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "0원"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let workingDateLabel: UILabel = {
        let label = UILabel()
        label.text = "근무 날짜(복수 선택 가능)"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let wordkingDateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "날짜"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView3: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let workingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "근무 시간"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let workingTimeStart: UITextField = {
        let textField = UITextField()
        textField.placeholder = "09:00"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView4: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let workingTimeEnd: UITextField = {
        let textField = UITextField()
        textField.placeholder = "18:00"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView5: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let restTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "휴게시간"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let restTimeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "0분"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 16, weight: .medium)
        return textField
    }()
    
    private let lineView6: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let nightWorkingLabel: UILabel = {
        let label = UILabel()
        label.text = "야간 수당"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let nightWorkingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "22:00 ~ 06:00"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13, weight: .regular)
        return label
    }()
    
    private let nightWorkingToggle: UISwitch = {
        let swtich = UISwitch()
        swtich.isOn = true
        return swtich
    }()
    
    private let relayWorkingLabel: UILabel = {
        let label = UILabel()
        label.text = "연장 수당"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let relayWorkingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "하루 08:00 이상"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13, weight: .regular)
        return label
    }()
    
    private let relayWorkingToggle: UISwitch = {
        let swtich = UISwitch()
        swtich.isOn = true
        return swtich
    }()
    
    private let offWorkingLabel: UILabel = {
        let label = UILabel()
        label.text = "휴일 수당"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let offWorkingToggle: UISwitch = {
        let swtich = UISwitch()
        swtich.isOn = false
        return swtich
    }()
    
    private let calculateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("계산하기", for: .normal)
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
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    // MARK: - @objc
    
    // MARK: - Custom Method
    
    private func setLayout() {
        view.addSubviews(howMuchLabel, payLabel, hourPayTextField, lineView)
        view.addSubviews(totalMoneyTextField, lineView2)
        view.addSubviews(workingDateLabel, wordkingDateTextField, lineView3)
        
        howMuchLabel.translatesAutoresizingMaskIntoConstraints = false
        howMuchLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        howMuchLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        
        payLabel.translatesAutoresizingMaskIntoConstraints = false
        payLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        payLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 110).isActive = true

        hourPayTextField.translatesAutoresizingMaskIntoConstraints = false
        hourPayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        hourPayTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 142).isActive = true
        hourPayTextField.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 149).isActive = true
        lineView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView.topAnchor.constraint(equalTo: hourPayTextField.bottomAnchor).isActive = true
        
        totalMoneyTextField.translatesAutoresizingMaskIntoConstraints = false
        totalMoneyTextField.widthAnchor.constraint(equalToConstant: 104).isActive = true
        totalMoneyTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 210).isActive = true
        totalMoneyTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 142).isActive = true
        
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        lineView2.widthAnchor.constraint(equalToConstant: 140).isActive = true
        lineView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 208).isActive = true
        lineView2.topAnchor.constraint(equalTo: totalMoneyTextField.bottomAnchor, constant: 0).isActive = true
        
        workingDateLabel.translatesAutoresizingMaskIntoConstraints = false
        workingDateLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        workingDateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 197).isActive = true
        
        wordkingDateTextField.translatesAutoresizingMaskIntoConstraints = false
        wordkingDateTextField.widthAnchor.constraint(equalToConstant: 104).isActive = true
        wordkingDateTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        wordkingDateTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 233).isActive = true
        
        lineView3.translatesAutoresizingMaskIntoConstraints = false
        lineView3.widthAnchor.constraint(equalToConstant: 298.01).isActive = true
        lineView3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView3.topAnchor.constraint(equalTo: wordkingDateTextField.bottomAnchor, constant: 0).isActive = true
        
        view.addSubviews(workingTimeLabel, workingTimeStart, lineView4, workingTimeEnd, lineView5)
        
        workingTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        workingTimeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 34).isActive = true
        workingTimeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 282).isActive = true
        
        workingTimeStart.translatesAutoresizingMaskIntoConstraints = false
        workingTimeStart.widthAnchor.constraint(equalToConstant: 140).isActive = true
        workingTimeStart.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 34).isActive = true
        workingTimeStart.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 321).isActive = true
        
        lineView4.translatesAutoresizingMaskIntoConstraints = false
        lineView4.widthAnchor.constraint(equalToConstant: 140).isActive = true
        lineView4.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 34).isActive = true
        lineView4.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 346).isActive = true
        
        workingTimeEnd.translatesAutoresizingMaskIntoConstraints = false
        workingTimeEnd.widthAnchor.constraint(equalToConstant: 140).isActive = true
        workingTimeEnd.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 209).isActive = true
        workingTimeEnd.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 323).isActive = true
        
        lineView5.translatesAutoresizingMaskIntoConstraints = false
        lineView5.widthAnchor.constraint(equalToConstant: 140).isActive = true
        lineView5.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView5.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 207).isActive = true
        lineView5.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 346).isActive = true
        
        view.addSubviews(restTimeLabel, restTimeTextField, lineView6)
        
        restTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        restTimeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        restTimeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 365).isActive = true
        
        restTimeTextField.translatesAutoresizingMaskIntoConstraints = false
        restTimeTextField.widthAnchor.constraint(equalToConstant: 298.01).isActive = true
        restTimeTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        restTimeTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 396).isActive = true
        
        lineView6.translatesAutoresizingMaskIntoConstraints = false
        lineView6.widthAnchor.constraint(equalToConstant: 298.01).isActive = true
        lineView6.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView6.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        lineView6.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 422.01).isActive = true
        
        view.addSubviews(nightWorkingLabel, nightWorkingTimeLabel, nightWorkingToggle)
        
        nightWorkingLabel.translatesAutoresizingMaskIntoConstraints = false
        nightWorkingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        nightWorkingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 449).isActive = true
        
        nightWorkingTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        nightWorkingTimeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        nightWorkingTimeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 468).isActive = true
        
        nightWorkingToggle.translatesAutoresizingMaskIntoConstraints = false
        nightWorkingToggle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 299).isActive = true
        nightWorkingToggle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 449).isActive = true
        
        view.addSubviews(relayWorkingLabel, relayWorkingTimeLabel, relayWorkingToggle)
        
        relayWorkingLabel.translatesAutoresizingMaskIntoConstraints = false
        relayWorkingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        relayWorkingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 508).isActive = true
        
        relayWorkingTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        relayWorkingTimeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        relayWorkingTimeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 527).isActive = true
        
        relayWorkingToggle.translatesAutoresizingMaskIntoConstraints = false
        relayWorkingToggle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 299).isActive = true
        relayWorkingToggle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 510).isActive = true
        
        view.addSubviews(offWorkingLabel, offWorkingToggle)
        
        offWorkingLabel.translatesAutoresizingMaskIntoConstraints = false
        offWorkingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 27).isActive = true
        offWorkingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 577).isActive = true
        
        offWorkingToggle.translatesAutoresizingMaskIntoConstraints = false
        offWorkingToggle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 299).isActive = true
        offWorkingToggle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 571).isActive = true
        
        view.addSubviews(calculateButton, laterButton)
        
        laterButton.translatesAutoresizingMaskIntoConstraints = false
        laterButton.heightAnchor.constraint(equalToConstant: 41).isActive = true
        laterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        laterButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        laterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.heightAnchor.constraint(equalToConstant: 41).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        calculateButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        calculateButton.bottomAnchor.constraint(equalTo: laterButton.topAnchor, constant: -10).isActive = true
    }

    
}
