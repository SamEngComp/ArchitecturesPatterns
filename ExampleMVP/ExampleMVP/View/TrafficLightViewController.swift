//
//  ViewController.swift
//  ExampleMVP
//
//  Created by Samuel Sales on 01/08/21.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {

    var trafficLightView = TrafficLightView()
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        view = trafficLightView
        trafficLightView.redButton.addTarget(self, action:  #selector(redButtonAction), for: .touchUpInside)
        trafficLightView.yellowButton.addTarget(self, action:  #selector(yellowButtonAction), for: .touchUpInside)
        trafficLightView.greenButton.addTarget(self, action: #selector(greenButtonAction), for: .touchUpInside)
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
    
    @objc
    func redButtonAction() {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @objc
    func yellowButtonAction() {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    
    @objc
    func greenButtonAction() {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
    
    func displayTrafficLight(description: (String)) {
        trafficLightView.selectorColorLabel.text = description
    }

}

