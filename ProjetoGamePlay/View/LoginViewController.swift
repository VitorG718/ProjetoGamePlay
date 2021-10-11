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
        
        imageBackground.addConstraints(
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            top: image.topAnchor
        )
        imageBackground.heightAnchor.constraint(equalTo: image.heightAnchor, multiplier: 0.9).isActive = true
    }
  
    override func viewDidLayoutSubviews() {
        setBackground()
        textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.5).isActive = true
        
        let scaleFactor = view.bounds.width / 375.0
        image.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 407 * scaleFactor).isActive = true
        
        super.viewDidLayoutSubviews()
    }
}
