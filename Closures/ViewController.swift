//
//  ViewController.swift
//  Closures
//
//  Created by Matthias on 30/01/2018.
//  Copyright © 2018 Matthias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() {
        title = "Initial"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
    }
    
    @objc private func didTapAddButton() {
        // ->
        
        let buttonViewController = ButtonViewController()
        buttonViewController.completion = { [weak self] message in
            self?.dismiss(animated: true, completion: {
                print(message)
            })
        }
        present(buttonViewController, animated: true, completion: nil)
    }
}

