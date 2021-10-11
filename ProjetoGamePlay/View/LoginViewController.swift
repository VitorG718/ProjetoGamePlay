//
//  LoginViewController.swift
//  ProjetoGamePlay
//
//  Created by Vitor Gledison Oliveira de Souza on 04/10/21.
//

import UIKit

class LoginViewController: UIViewController {

    private lazy var textView: UIView = {
        let text = UIView(frame: .zero)
        let title = UILabel()
        let subtitle = UILabel()
        
        title.text = "Conecte-se\ne organize suas\njogatinas"
        title.textColor = .white
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 60.0)
        title.adjustsFontSizeToFitWidth = true
        title.numberOfLines = 3
        text.addSubview(title)
        
        subtitle.text = "Crie grupos para jogar seus games\nfavoritos com seus amigos"
        subtitle.textColor = .white
        subtitle.textAlignment = .center
        subtitle.numberOfLines = 2
        subtitle.font = subtitle.font.withSize(30.0)
        subtitle.adjustsFontSizeToFitWidth = true
        text.addSubview(subtitle)
        
        title.addConstraints(
            leading: text.leadingAnchor,
            trailing: text.trailingAnchor,
            top: text.topAnchor
        )
        title.heightAnchor.constraint(equalTo: text.heightAnchor, multiplier: 0.7).isActive = true
        
        subtitle.addConstraints(
            leading: text.leadingAnchor,
            trailing: text.trailingAnchor,
            top: title.bottomAnchor,
            bottom: text.bottomAnchor
        )
        
        return text
    }()
    
    private lazy var discordButton: DiscordButton = {
        let button = DiscordButton(text: "Entrar com Discord")
        return button
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "login_image")
        return image
    }()
    
    private lazy var imageBackground: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "login_image_background")
        return image
    }()
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        
        view.addSubview(discordButton)
        view.addSubview(imageBackground)
        view.addSubview(image)
        view.addSubview(textView)
        
        addConstraints()
        
        discordButton.addTarget(self, action: #selector(discordButtonAction), for: .touchUpInside)
    }
    
    @objc private func discordButtonAction() {
        
    }
    
    private func addConstraints() {
        textView.addConstraints(
            leading: view.leadingAnchor,
            paddingLeading: 61.0,
            trailing: view.trailingAnchor,
            paddingTrailing: -55.0,
            bottom: discordButton.topAnchor,
            paddingBottom: -48.0
        )
        
        discordButton.addConstraints(
            leading: view.leadingAnchor,
            paddingLeading: 50.0,
            trailing: view.trailingAnchor,
            paddingTrailing: -50.0,
            heightConstant: 56.0,
            bottom: view.bottomAnchor,
            paddingBottom: -48.0
        )
        
        image.addConstraints(
            top: view.safeAreaLayoutGuide.topAnchor,
            paddingTop: 40.0,
            centerX: view.centerXAnchor
        )
        image.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.47).isActive = true
        image.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        
        imageBackground.addConstraints(
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            top: image.topAnchor
        )
        imageBackground.heightAnchor.constraint(equalTo: image.heightAnchor, multiplier: 0.9).isActive = true
    }
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setBackground()
        textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.5).isActive = true
    }
}

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
