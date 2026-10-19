//
//  ViewController.swift
//  Sample GitHub Project
//
//  Created by Jerin Tan on 19/10/26.
//

import UIKit

class ViewController: UIViewController {

    var chloeLabel = UILabel() //chloe
    var label = UILabel()
    var anotherLabel = UILabel()
    var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupLayout()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        label.text = "HELLOOOO"
        chloeLabel.text = "im chloe" //chloe

        anotherLabel.text = "Yoooo"
        anotherLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 25
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(chloeLabel) //chloe
        stackView.addArrangedSubview(anotherLabel)
        
        view.addSubview(stackView)
        
        
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            //stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            
        ])
    }
}


#Preview {
    ViewController()
}

