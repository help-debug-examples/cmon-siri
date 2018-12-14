//
//  MainViewController.swift
//  CmonSiri
//
//  Created by Derrick Showers on 12/14/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

import UIKit
import Intents

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Donate an intent
        let item = "Shampoo"
        let quantity = 5
        let intent = AmazonOrderIntent()
        intent.item = item
        intent.quantity = NSNumber(value: quantity)
        let interaction = INInteraction(intent: intent, response: nil)
        interaction.donate(completion: nil)
    }
}

