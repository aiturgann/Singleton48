//
//  GreenViewController.swift
//  Singleton48
//
//  Created by Aiturgan Kurmanbekova on 9/3/24.
//

import UIKit

class GreenViewController: UIViewController {
    
    private let image = MakerView.shared.uiImageMaker(image: UIImage(named: "porsche"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(image)
        NSLayoutConstraint.activate(
            [image.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
             image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
             image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
             image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
            ])
        
    }
    
}
