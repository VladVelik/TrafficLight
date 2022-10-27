//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sosin Vladislav on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greenElement: UIView!
    @IBOutlet var yellowElement: UIView!
    @IBOutlet var redElement: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }
    
    private func createView() {
        startButton.layer.cornerRadius = 10

        greenElement.layer.cornerRadius = 100
        yellowElement.layer.cornerRadius = 100
        redElement.layer.cornerRadius = 100
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.setTitle("Next", for: .normal)
        changeLights()
    }
    
    private func changeLights() {
        
    }
}

