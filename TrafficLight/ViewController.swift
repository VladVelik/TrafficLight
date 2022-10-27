//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sosin Vladislav on 27.10.2022.
//

import UIKit

extension UIColor {
   convenience init(_ red: Int, _ green: Int, _ blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: 1.0
       )
   }
}

class ViewController: UIViewController {
    @IBOutlet var greenElement: UIView!
    @IBOutlet var yellowElement: UIView!
    @IBOutlet var redElement: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentElement: UIColor = .red
    
    private let colors = [UIColor(128, 40, 40), UIColor(128, 128, 0), UIColor(0, 128, 0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.setTitle("Next", for: .normal)
        changeLights()
    }
    
    private func createView() {
        startButton.layer.cornerRadius = 10

        greenElement.layer.cornerRadius = 100
        yellowElement.layer.cornerRadius = 100
        redElement.layer.cornerRadius = 100
    }
    
    private func changeLights() {
        switch currentElement {
        case .red:
            currentElement = UIColor.yellow
            redElement.backgroundColor = .red
            greenElement.backgroundColor = colors[2]
        case .yellow:
            currentElement = UIColor.green
            yellowElement.backgroundColor = .yellow
            redElement.backgroundColor = colors[0]
        case .green:
            currentElement = UIColor.red
            greenElement.backgroundColor = .green
            yellowElement.backgroundColor = colors[1]
        default:
            currentElement = UIColor.red
        }
    }
}
