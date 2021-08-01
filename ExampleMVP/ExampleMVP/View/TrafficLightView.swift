//
//  TrafficLightView.swift
//  ExampleMVP
//
//  Created by Samuel Sales on 01/08/21.
//

import UIKit

class TrafficLightView: UIView {
    
    lazy var redButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var yellowButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var greenButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var selectorColorLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        view.textAlignment = .center
        view.layer.cornerRadius = 20
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray2
        addViews()
        viewConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        addSubview(redButton)
        addSubview(yellowButton)
        addSubview(greenButton)
        addSubview(selectorColorLabel)
    }
    
    func viewConstraints() {
        redButtonConstraints()
        yellowButtonConstraints()
        greenButtonConstraints()
        selectorColorLabelConstraints()
    }

}

extension TrafficLightView {
    
    func redButtonConstraints() {
        NSLayoutConstraint.activate([
            redButton.widthAnchor.constraint(equalToConstant: 50),
            redButton.heightAnchor.constraint(equalToConstant: 50),
            redButton.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            redButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func yellowButtonConstraints() {
        NSLayoutConstraint.activate([
            yellowButton.widthAnchor.constraint(equalToConstant: 50),
            yellowButton.heightAnchor.constraint(equalToConstant: 50),
            yellowButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 20),
            yellowButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func greenButtonConstraints() {
        NSLayoutConstraint.activate([
            greenButton.widthAnchor.constraint(equalToConstant: 50),
            greenButton.heightAnchor.constraint(equalToConstant: 50),
            greenButton.topAnchor.constraint(equalTo: yellowButton.bottomAnchor, constant: 20),
            greenButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func selectorColorLabelConstraints() {
        NSLayoutConstraint.activate([
            selectorColorLabel.widthAnchor.constraint(equalToConstant: 250),
            selectorColorLabel.heightAnchor.constraint(equalToConstant: 50),
            selectorColorLabel.topAnchor.constraint(equalTo: greenButton.bottomAnchor, constant: 20),
            selectorColorLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
}
