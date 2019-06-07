//
//  ViewController.swift
//  Calculator
//
//  Created by user151057 on 6/7/19.
//  Copyright © 2019 Jes Klittum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var resultLabel = UILabel()
    var calculatorButtons = [UIButton()]
    var buttonsArray = [String]()
    var xSpacing = Int()
    var ySpacing = [Int]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .black
        
        buttonsArray = ["7", "8", "9", "4", "5", "6", "1", "2", "3", "0", "/", "X", "-", "+", "="]
        
        let calculatorView = UIView()
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        calculatorView.backgroundColor = .black
        view.addSubview(calculatorView)
        
        resultLabel = UILabel()
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.textAlignment = .right
        resultLabel.layer.borderWidth = 2
        resultLabel.layer.borderColor = UIColor.yellow.cgColor
        resultLabel.backgroundColor = .white
        resultLabel.textColor = .black
        resultLabel.font = UIFont.systemFont(ofSize: 48)
        resultLabel.text = "0"
        view.addSubview(resultLabel)
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.layer.borderWidth = 1
        buttonsView.backgroundColor = .lightGray
        buttonsView.layer.borderColor = UIColor.lightGray.cgColor
        buttonsView.layer.cornerRadius = 10
        view.addSubview(buttonsView)
        
        let button0 = UIButton(type: .system)
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button0.setTitle("0", for: .normal)
        button0.layer.borderWidth = 1
        button0.layer.borderColor = UIColor.black.cgColor
        button0.layer.backgroundColor = UIColor.orange.cgColor
        button0.titleLabel?.textColor = UIColor.white
        button0.layer.cornerRadius = 10
        buttonsView.addSubview(button0)
        
        let button1 = UIButton(type: .system)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button1.setTitle("1", for: .normal)
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.black.cgColor
        button1.layer.backgroundColor = UIColor.orange.cgColor
        button1.titleLabel?.textColor = UIColor.white
        button1.layer.cornerRadius = 10
        buttonsView.addSubview(button1)
        
        let button2 = UIButton(type: .system)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button2.setTitle("2", for: .normal)
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.black.cgColor
        button2.layer.backgroundColor = UIColor.orange.cgColor
        button2.titleLabel?.textColor = UIColor.white
        button2.layer.cornerRadius = 10
        buttonsView.addSubview(button2)
        
        let button3 = UIButton(type: .system)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button3.setTitle("3", for: .normal)
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.black.cgColor
        button3.layer.backgroundColor = UIColor.orange.cgColor
        button3.titleLabel?.textColor = UIColor.white
        button3.layer.cornerRadius = 10
        buttonsView.addSubview(button3)
        
        let button4 = UIButton(type: .system)
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button4.setTitle("4", for: .normal)
        button4.layer.borderWidth = 1
        button4.layer.borderColor = UIColor.black.cgColor
        button4.layer.backgroundColor = UIColor.orange.cgColor
        button4.titleLabel?.textColor = UIColor.white
        button4.layer.cornerRadius = 10
        buttonsView.addSubview(button4)
        
        let button5 = UIButton(type: .system)
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button5.setTitle("5", for: .normal)
        button5.layer.borderWidth = 1
        button5.layer.borderColor = UIColor.black.cgColor
        button5.layer.backgroundColor = UIColor.orange.cgColor
        button5.titleLabel?.textColor = UIColor.white
        button5.layer.cornerRadius = 10
        buttonsView.addSubview(button5)
        
        let button6 = UIButton(type: .system)
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button6.setTitle("6", for: .normal)
        button6.layer.borderWidth = 1
        button6.layer.borderColor = UIColor.black.cgColor
        button6.layer.backgroundColor = UIColor.orange.cgColor
        button6.titleLabel?.textColor = UIColor.white
        button6.layer.cornerRadius = 10
        buttonsView.addSubview(button6)
        
        let button7 = UIButton(type: .system)
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button7.setTitle("7", for: .normal)
        button7.layer.borderWidth = 1
        button7.layer.borderColor = UIColor.black.cgColor
        button7.layer.backgroundColor = UIColor.orange.cgColor
        button7.titleLabel?.textColor = UIColor.white
        button7.layer.cornerRadius = 10
        buttonsView.addSubview(button7)
        
        let button8 = UIButton(type: .system)
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button8.setTitle("8", for: .normal)
        button8.layer.borderWidth = 1
        button8.layer.borderColor = UIColor.black.cgColor
        button8.layer.backgroundColor = UIColor.orange.cgColor
        button8.titleLabel?.textColor = UIColor.white
        button8.layer.cornerRadius = 10
        buttonsView.addSubview(button8)
        
        let button9 = UIButton(type: .system)
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        button9.setTitle("9", for: .normal)
        button9.layer.borderWidth = 1
        button9.layer.borderColor = UIColor.black.cgColor
        button9.layer.backgroundColor = UIColor.orange.cgColor
        button9.titleLabel?.textColor = UIColor.white
        button9.layer.cornerRadius = 10
        buttonsView.addSubview(button9)
        
        let buttonDivision = UIButton(type: .system)
        buttonDivision.translatesAutoresizingMaskIntoConstraints = false
        buttonDivision.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        buttonDivision.setTitle("/", for: .normal)
        buttonDivision.layer.borderWidth = 1
        buttonDivision.layer.borderColor = UIColor.black.cgColor
        buttonDivision.layer.backgroundColor = UIColor.green.cgColor
        buttonDivision.titleLabel?.textColor = UIColor.white
        buttonDivision.layer.cornerRadius = 10
        buttonsView.addSubview(buttonDivision)
        
        let buttonMultiplication = UIButton(type: .system)
        buttonMultiplication.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiplication.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        buttonMultiplication.setTitle("X", for: .normal)
        buttonMultiplication.layer.borderWidth = 1
        buttonMultiplication.layer.borderColor = UIColor.black.cgColor
        buttonMultiplication.layer.backgroundColor = UIColor.green.cgColor
        buttonMultiplication.titleLabel?.textColor = UIColor.white
        buttonMultiplication.layer.cornerRadius = 10
        buttonsView.addSubview(buttonMultiplication)
        
        let buttonMinus = UIButton(type: .system)
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        buttonMinus.setTitle("-", for: .normal)
        buttonMinus.layer.borderWidth = 1
        buttonMinus.layer.borderColor = UIColor.black.cgColor
        buttonMinus.layer.backgroundColor = UIColor.green.cgColor
        buttonMinus.titleLabel?.textColor = UIColor.white
        buttonMinus.layer.cornerRadius = 10
        buttonsView.addSubview(buttonMinus)
        
        let buttonPlus = UIButton(type: .system)
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.layer.borderWidth = 1
        buttonPlus.layer.borderColor = UIColor.black.cgColor
        buttonPlus.layer.backgroundColor = UIColor.green.cgColor
        buttonPlus.titleLabel?.textColor = UIColor.white
        buttonPlus.layer.cornerRadius = 10
        buttonsView.addSubview(buttonPlus)
        
        let buttonEqual = UIButton(type: .system)
        buttonEqual.translatesAutoresizingMaskIntoConstraints = false
        buttonEqual.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        buttonEqual.setTitle("=", for: .normal)
        buttonEqual.layer.borderWidth = 1
        buttonEqual.layer.borderColor = UIColor.black.cgColor
        buttonEqual.layer.backgroundColor = UIColor.green.cgColor
        buttonEqual.titleLabel?.textColor = UIColor.white
        buttonEqual.layer.cornerRadius = 10
        buttonsView.addSubview(buttonEqual)
        
        
        NSLayoutConstraint.activate([
            calculatorView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calculatorView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            calculatorView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            calculatorView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            calculatorView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            calculatorView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            
            resultLabel.topAnchor.constraint(equalTo: calculatorView.topAnchor, constant: 40),
            resultLabel.leftAnchor.constraint(equalTo: calculatorView.leftAnchor, constant: 30),
            resultLabel.rightAnchor.constraint(equalTo: calculatorView.rightAnchor, constant: -30),
            resultLabel.widthAnchor.constraint(equalToConstant: 160),
            resultLabel.heightAnchor.constraint(equalToConstant: 40),
            
            buttonsView.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 10),
            buttonsView.leftAnchor.constraint(equalTo: calculatorView.leftAnchor, constant: 30),
            buttonsView.rightAnchor.constraint(equalTo: calculatorView.rightAnchor, constant: -30),
            buttonsView.bottomAnchor.constraint(equalTo: calculatorView.bottomAnchor, constant: -20),
            //buttonsView.widthAnchor.constraint(equalToConstant: 160),
            //buttonsView.heightAnchor.constraint(equalToConstant: 220),
            
            button7.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 10),
            button7.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 10),
            button7.widthAnchor.constraint(equalTo: buttonsView.widthAnchor, multiplier: 1/3, constant: -40/3),
            button7.heightAnchor.constraint(equalTo: button7.widthAnchor),
            button8.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 10),
            button8.leftAnchor.constraint(equalTo: button7.rightAnchor, constant: 10),
            button8.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button8.heightAnchor.constraint(equalTo: button7.heightAnchor),
            button9.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 10),
            button9.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -10),
            button9.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button9.heightAnchor.constraint(equalTo: button7.heightAnchor),
            
            button4.topAnchor.constraint(equalTo: button7.bottomAnchor, constant: 5),
            button4.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 10),
            button4.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button4.heightAnchor.constraint(equalTo: button7.heightAnchor),
            button5.topAnchor.constraint(equalTo: button8.bottomAnchor, constant: 5),
            button5.leftAnchor.constraint(equalTo: button4.rightAnchor, constant: 10),
            button5.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button5.heightAnchor.constraint(equalTo: button7.heightAnchor),
            button6.topAnchor.constraint(equalTo: button9.bottomAnchor, constant: 5),
            button6.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -10),
            button6.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button6.heightAnchor.constraint(equalTo: button7.heightAnchor),
            
            button1.topAnchor.constraint(equalTo: button4.bottomAnchor, constant: 5),
            button1.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 10),
            button1.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button1.heightAnchor.constraint(equalTo: button7.heightAnchor),
            button2.topAnchor.constraint(equalTo: button5.bottomAnchor, constant: 5),
            button2.leftAnchor.constraint(equalTo: button1.rightAnchor, constant: 10),
            button2.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button2.heightAnchor.constraint(equalTo: button7.heightAnchor),
            button3.topAnchor.constraint(equalTo: button6.bottomAnchor, constant: 5),
            button3.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -10),
            button3.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button3.heightAnchor.constraint(equalTo: button7.heightAnchor),
            
            button0.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 5),
            button0.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 10),
            button0.widthAnchor.constraint(equalTo: button7.widthAnchor),
            button0.heightAnchor.constraint(equalTo: button7.heightAnchor),
            buttonDivision.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 5),
            buttonDivision.leftAnchor.constraint(equalTo: button0.rightAnchor, constant: 10),
            buttonDivision.widthAnchor.constraint(equalTo: button7.widthAnchor),
            buttonDivision.heightAnchor.constraint(equalTo: button7.heightAnchor),
            buttonMultiplication.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 5),
            buttonMultiplication.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -10),
            buttonMultiplication.widthAnchor.constraint(equalTo: button7.widthAnchor),
            buttonMultiplication.heightAnchor.constraint(equalTo: button7.heightAnchor),
            
            buttonMinus.topAnchor.constraint(equalTo: button0.bottomAnchor, constant: 5),
            buttonMinus.leftAnchor.constraint(equalTo: buttonsView.leftAnchor, constant: 10),
            buttonMinus.widthAnchor.constraint(equalTo: button7.widthAnchor),
            buttonMinus.heightAnchor.constraint(equalTo: button7.heightAnchor),
            buttonPlus.topAnchor.constraint(equalTo: buttonDivision.bottomAnchor, constant: 5),
            buttonPlus.leftAnchor.constraint(equalTo: buttonMinus.rightAnchor, constant: 10),
            buttonPlus.widthAnchor.constraint(equalTo: button7.widthAnchor),
            buttonPlus.heightAnchor.constraint(equalTo: button7.heightAnchor),
            buttonEqual.topAnchor.constraint(equalTo: buttonMultiplication.bottomAnchor, constant: 5),
            buttonEqual.rightAnchor.constraint(equalTo: buttonsView.rightAnchor, constant: -10),
            buttonEqual.widthAnchor.constraint(equalTo: button7.widthAnchor),
            buttonEqual.heightAnchor.constraint(equalTo: button7.heightAnchor),
            
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

