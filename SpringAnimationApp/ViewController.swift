//
//  ViewController.swift
//  Spring Animation App
//
//  Created by Anna Lavrova on 05.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!

    @IBOutlet weak var runCoreAnimationButton: UIButton!
    @IBOutlet weak var springAnimationLabel: UILabel!
    
    @IBOutlet weak var springAnimationButton: UIButton!

    private var animationStarted = false

    override func viewDidLoad() {
        super.viewDidLoad()

        coreAnimationView.layer.cornerRadius = 10
        runCoreAnimationButton.layer.cornerRadius = 10
        springAnimationLabel.layer.cornerRadius = 10
        springAnimationButton.layer.cornerRadius = 10
    }

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()

        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {

                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
    }

    @IBAction func runSpringAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
                
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
    }

}

