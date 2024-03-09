//
//  ViewController.swift
//  Singleton48
//
//  Created by Aiturgan Kurmanbekova on 8/3/24.
//

import UIKit

class ViewController: UIViewController, ValidateProtocol {
    
    
        
    private let image = MakerView.shared.uiImageMaker(image: UIImage(named: "image"))
    
    private let questionLabel = MakerView.shared.uiLabelMaker(text: "Quess the car make?",
                                                              textColor: .white,
                                                              size: 24)
    
//    private let answerTF = MakerView.shared.uiTextFieldMaker(placeholder: "answer")
    
    private let horizontalStack = MakerView.shared.uiStackViewMaker(axis: .horizontal)
    
    private let vertical1Stack = MakerView.shared.uiStackViewMaker(axis: .vertical)
    
    private let vertical2Stack = MakerView.shared.uiStackViewMaker(axis: .vertical)
    
    private let firstButton = MakerView.shared.uiButtonMaker(title: "BMW",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    
    private let secondButton = MakerView.shared.uiButtonMaker(title: "Lamborghini",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    
    private let thirdButton = MakerView.shared.uiButtonMaker(title: "Porsche",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    
    private let fourthButton = MakerView.shared.uiButtonMaker(title: "Mersedes-Benz",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    
    private let fifthButton = MakerView.shared.uiButtonMaker(title: "Toyota",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    
    private let sixthButton = MakerView.shared.uiButtonMaker(title: "Audi",
                                                             titleColor: .white,
                                                             backgroundColor: .magenta)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupUI()
        setTarget()
        
    }
    
    private func setupUI() {
        view.addSubview(image)
        NSLayoutConstraint.activate(
            [image.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
             image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
             image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
             image.heightAnchor.constraint(equalToConstant: 300)
            ])
        
        
        view.addSubview(questionLabel)
        NSLayoutConstraint.activate(
            [questionLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
             questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             questionLabel.heightAnchor.constraint(equalToConstant: 60)
            ])
        
//        view.addSubview(answerTF)
//        NSLayoutConstraint.activate(
//            [answerTF.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 20),
//             answerTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
//             answerTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
//             answerTF.heightAnchor.constraint(equalToConstant: 60)
//            ])
        
        view.addSubview(horizontalStack)
        NSLayoutConstraint.activate(
            [horizontalStack.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 20),
             horizontalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             horizontalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             horizontalStack.heightAnchor.constraint(equalToConstant: 200)
            ])
        
        horizontalStack.addArrangedSubview(vertical1Stack)
        horizontalStack.addArrangedSubview(vertical2Stack)
        
        vertical1Stack.addArrangedSubview(firstButton)
        vertical1Stack.addArrangedSubview(secondButton)
        vertical1Stack.addArrangedSubview(thirdButton)
        vertical2Stack.addArrangedSubview(fourthButton)
        vertical2Stack.addArrangedSubview(fifthButton)
        vertical2Stack.addArrangedSubview(sixthButton)
        
        NSLayoutConstraint.activate(
            [firstButton.heightAnchor.constraint(equalToConstant: 50),
             secondButton.heightAnchor.constraint(equalToConstant: 50),
             thirdButton.heightAnchor.constraint(equalToConstant: 50),
             fourthButton.heightAnchor.constraint(equalToConstant: 50),
             fifthButton.heightAnchor.constraint(equalToConstant: 50),
             sixthButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
        firstButton.tag = 1
        secondButton.tag = 2
        thirdButton.tag = 3
        fourthButton.tag = 4
        fifthButton.tag = 5
        sixthButton.tag = 6
        
    }
    
    private func setTarget() {
        firstButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        fourthButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        fifthButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        sixthButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)

    }
    
//    @objc private func firstBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: firstButton)
//    }
//    
//    @objc private func secondBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: secondButton)
//    }
//    
//    @objc private func thirdBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: thirdButton)
//        
//        let vc = GreenViewController()
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    
//    @objc private func fourthBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: fourthButton)
//    }
//    
//    @objc private func fifthBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: fifthButton)
//    }
//    
//    @objc private func sixthBtnTppd(button: UIButton) {
//        guard let text = button.currentTitle else {return}
//        
//        validateButtton(brand: text, pressedButton: sixthButton)
//    }
    
    @objc private func checkButton(button: UIButton) {
        guard let text = button.currentTitle else {return}
        
        switch button.tag {
        case 1:
            validateButtton(brand: text, button: firstButton)
        case 2:
            validateButtton(brand: text, button: secondButton)
        case 3:
            validateButtton(brand: text, button: thirdButton)
            nextScreen()
        case 4:
            validateButtton(brand: text, button: fourthButton)
        case 5:
            validateButtton(brand: text, button: fifthButton)
        case 6:
            validateButtton(brand: text, button: sixthButton)
        default: print("default")
        }
        
    }
    
    
    private func nextScreen() {
        let vc = GreenViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}



