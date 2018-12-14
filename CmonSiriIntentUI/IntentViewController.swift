//
//  IntentViewController.swift
//  CmonSiriIntentUI
//
//  Created by Derrick Showers on 12/14/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

import IntentsUI

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {

        if interaction.intentHandlingStatus == .ready {
            // TODO: Setup view for confirm
        } else if interaction.intentHandlingStatus == .success {
            // TODO: Setup view for success
        }

        // TODO: Change to `true` once view is setup.
        completion(false, parameters, self.desiredSize)
    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
    
}
