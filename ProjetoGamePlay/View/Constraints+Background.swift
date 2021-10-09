//
//  Constraints+Background.swift
//  ProjetoGamePlay
//
//  Created by Vitor Gledison Oliveira de Souza on 09/10/21.
//

import UIKit

extension UIViewController {
    
    public func setBackground() {
        let colorTop = UIColor(red: 0.06, green: 0.09, blue: 0.28, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.04, green: 0.06, blue: 0.2, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UIView {
    
    func addConstraints(
        leading: NSLayoutXAxisAnchor? = nil,
        paddingLeading: CGFloat? = 0,
        trailing: NSLayoutXAxisAnchor? = nil,
        paddingTrailing: CGFloat? = 0,
        left: NSLayoutXAxisAnchor? = nil,
        paddingLeft: CGFloat? = 0,
        right: NSLayoutXAxisAnchor? = nil,
        paddingRight: CGFloat? = 0,
        height: NSLayoutDimension? = nil,
        heightConstant: CGFloat? = nil,
        width: NSLayoutDimension? = nil,
        widthConstant: CGFloat? = nil,
        top: NSLayoutYAxisAnchor? = nil,
        paddingTop: CGFloat? = 0,
        bottom: NSLayoutYAxisAnchor? = nil,
        paddingBottom: CGFloat? = 0,
        centerX: NSLayoutXAxisAnchor? = nil,
        centerY: NSLayoutYAxisAnchor? = nil
    ) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            if let paddingTop = paddingTop {
                topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
            } else {
                topAnchor.constraint(equalTo: top).isActive = true
            }
        }
        
        if let bottom = bottom {
            if let paddingBottom = paddingBottom {
                bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
            } else {
                bottomAnchor.constraint(equalTo: bottom).isActive = true
            }
        }
        
        if let leading = leading {
            if let paddingLeading = paddingLeading {
                leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
            } else {
                leadingAnchor.constraint(equalTo: leading).isActive = true
            }
        }

        if let trailing = trailing {
            if let paddingTrailing = paddingTrailing {
                trailingAnchor.constraint(equalTo: trailing, constant: paddingTrailing).isActive = true
            } else {
                trailingAnchor.constraint(equalTo: trailing).isActive = true
            }
        }
        
        if let left = left {
            if let paddingLeft = paddingLeft {
                leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
            } else {
                leftAnchor.constraint(equalTo: left).isActive = true
            }
        }

        if let right = right {
            if let paddingRight = paddingRight {
                rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
            } else {
                rightAnchor.constraint(equalTo: right).isActive = true
            }
        }
        
        if let width = width {
            widthAnchor.constraint(equalTo: width).isActive = true
        } else if let widthConstant = widthConstant {
            widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalTo: height).isActive = true
        } else if let heightConstant = heightConstant {
            heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
        }
        
        if let centerX = centerX {
            centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        
        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
    }
}
