//
//  ValidateProtocol.swift
//  Singleton48
//
//  Created by Aiturgan Kurmanbekova on 9/3/24.
//

import Foundation
import UIKit

protocol ValidateProtocol {
    
    func validateButtton(brand: String, button: UIButton)
}

extension ValidateProtocol {
    
    func validateButtton(brand: String, button: UIButton) {
        
        if brand == "Porsche" {
            button.backgroundColor = .systemGreen
        } else {
            button.backgroundColor = .red
            
        }
    }
    
}
