//
//  ContentView.swift
//  project
//
//  Created by Zicheng on 20/7/24.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myTextField = UITextField()
        myTextField.placeholder = "Enter text here"
        myTextField.borderStyle = .roundedRect
        myTextField.textColor = .black
        myTextField.font = UIFont.systemFont(ofSize: 16)

        view.addSubview(myTextField)

        myTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
