//
//  BotonPropio.swift
//  calcuAhoraSi
//
//  Created by mulder on 24/01/2020.
//  Copyright © 2020 mulder. All rights reserved.
//

import Foundation

import UIKit

extension UIButton {

    //redondeado
    func redondeo() {
        layer.cornerRadius = bounds.height / 6
        clipsToBounds = true
    }
    
    
    func jump() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: -10)
        }) { (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            })
        }
    }
    
    func borde(){
        
        let col = UIColor.darkGray
        
        layer.borderColor = col.cgColor
        layer.borderWidth = 2.0
    }
    
}
