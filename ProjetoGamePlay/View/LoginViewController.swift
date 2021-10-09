//
//  LoginViewController.swift
//  ProjetoGamePlay
//
//  Created by Vitor Gledison Oliveira de Souza on 04/10/21.
//

import UIKit

class LoginViewController: UIViewController {

    private lazy var textView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        
        view.addSubview(textView)
    }
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setBackground()
    }
}
