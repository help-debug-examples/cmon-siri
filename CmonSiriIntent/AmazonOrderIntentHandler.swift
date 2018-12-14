//
//  AmazonOrderIntentHandler.swift
//  CmonSiriIntent
//
//  Created by Derrick Showers on 12/14/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

import Intents

class AmazonOrderIntentHandler: NSObject, AmazonOrderIntentHandling {

    func handle(intent: AmazonOrderIntent, completion: @escaping (AmazonOrderIntentResponse) -> Void) {
        print("handling...")
        completion(AmazonOrderIntentResponse.success(item: "Shampoo"))
    }

    func confirm(intent: AmazonOrderIntent, completion: @escaping (AmazonOrderIntentResponse) -> Void) {
        print("confirming...")
        completion(AmazonOrderIntentResponse(code: .ready, userActivity: nil))
    }


}
