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
        text.backgroundColor = .green
        return text
    }()
    
    private lazy var discordButton: UIView = {
        let button = UIView(frame: .zero)
        button.backgroundColor = .init(red: 0.6, green: 0.12, blue: 0.21, alpha: 1.0)
        button.layer.cornerRadius = 10.0
        button.layer.masksToBounds = true
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
    }
    
    private func addConstraints() {
        textView.addConstraints(
            leading: view.leadingAnchor,
            paddingLeading: 61.0,
            trailing: view.trailingAnchor,
            paddingTrailing: -55.0,
            heightConstant: 260.0,
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
            heightConstant: 407.0,
            widthConstant: 375,
            top: view.safeAreaLayoutGuide.topAnchor,
            paddingTop: 40.0,
            centerX: view.centerXAnchor
        )
        
        imageBackground.addConstraints(
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            heightConstant: 360.0,
            top: image.topAnchor
        )
    }
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setBackground()
    }
}
