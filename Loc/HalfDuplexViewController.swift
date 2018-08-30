//
//  HalfDuplexViewController.swift
//  Loc
//
//  Created by Wikipedia Brown on 8/29/18.
//  Copyright © 2018 IamGoodBad. All rights reserved.
//

import UIKit

class HalfDuplexViewController: UIViewController {
    
    let halfDuplexButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(halfDuplexButton)
        
        NSLayoutConstraint.activate([
            halfDuplexButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            halfDuplexButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            halfDuplexButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            halfDuplexButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    

}
