//
//  DiscordButton.swift
//  ProjetoGamePlay
//
//  Created by Vitor Gledison Oliveira de Souza on 11/10/21.
//

import UIKit

public class DiscordButton: UIButton {

    private let image = UIImageView()
    private let imageShape = UIView()
    private let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        image.image = .init(named: "Discord-Logo-White")
        
        label.text = ""
        label.textColor = .white
        label.textAlignment = .center
        
        backgroundColor = .init(red: 0.9, green: 0.11, blue: 0.27, alpha: 1.0)
        layer.cornerRadius = 10.0
        layer.masksToBounds = true
        layer.borderWidth = 2.0
        layer.borderColor = .init(red: 0.6, green: 0.12, blue: 0.21, alpha: 1.0)
        addSubview(label)
        addSubview(imageShape)
        
        imageShape.layer.borderColor = layer.borderColor
        imageShape.layer.cornerRadius = 10.0
        imageShape.layer.masksToBounds = true
        imageShape.layer.borderWidth = 2.0
        imageShape.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        imageShape.addSubview(image)
        
        label.addConstraints(
            leading: image.trailingAnchor,
            trailing: trailingAnchor,
            top: topAnchor,
            bottom: bottomAnchor
        )
        
        imageShape.addConstraints(
            leading: leadingAnchor,
            top: topAnchor,
            bottom: bottomAnchor
        )
        
        imageShape.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.2).isActive = true
        
        image.addConstraints(
            heightConstant: 18.0,
            widthConstant: 24.0,
            centerX: imageShape.centerXAnchor,
            centerY: imageShape.centerYAnchor
        )
    }
    
    convenience init(text: String) {
        self.init(frame: .zero)
        label.text = text
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
