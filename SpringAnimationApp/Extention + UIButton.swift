//
//  Extention + UIButton.swift
//  Spring Animation App
//
//  Created by Anna Lavrova on 05.03.2024.
//

import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1

        layer.add(pulse, forKey: nil)
    }
}
