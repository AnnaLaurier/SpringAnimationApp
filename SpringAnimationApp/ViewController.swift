//
//  ViewController.swift
//  Spring Animation App
//
//  Created by Anna Lavrova on 05.03.2024.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!

    @IBOutlet weak var runCoreAnimationButton: UIButton!

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springAnimationButton: SpringButton!

    private var animationStarted = false

    override func viewDidLoad() {
        super.viewDidLoad()

        coreAnimationView.layer.cornerRadius = 10
        runCoreAnimationButton.layer.cornerRadius = 10
        springAnimationView.layer.cornerRadius = 10
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

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeIn"
//        springAnimationView.force = 2
        springAnimationView.duration = 1

        springAnimationView.animate()

        sender.animation = "wobble"
        sender.animate()
    }
}

