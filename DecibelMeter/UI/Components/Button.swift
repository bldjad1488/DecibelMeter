//
//  Button.swift
//  DecibelMeter
//
//  Created by Polina Prokopenko on 11/20/21.
//

import UIKit


class Button: UIButton {
    
    let gradient = Gradient()
    
    enum ButtonStyle {
        case _continue
        case link
        case record
        case close
    }
    
    init(style: ButtonStyle, _ text: String?) {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        sizeToFit()
        
        switch style {
        case ._continue:
            setTitle(text, for: .normal)
            setTitleColor(.white, for: .normal)
            titleLabel?.font = UIFont(name: "OpenSans-Bold", size: 22)!
            heightAnchor.constraint(equalToConstant: 60).isActive = true
            layer.cornerRadius = 12
            gradient.setGradientBackground(view: self)
            layer.masksToBounds = true
        case .link:
            setTitle(text, for: .normal)
            setTitleColor(.white, for: .normal)
            titleLabel?.font = UIFont(name: "OpenSans-Regular", size: 12)!
        case .record:
            setImage(UIImage(named: "Microphone"), for: .normal)
        case .close:
            setImage(UIImage(named: "Exit"), for: .normal)
            heightAnchor.constraint(equalToConstant: 25).isActive = true
            widthAnchor.constraint(equalToConstant: 25).isActive = true
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}