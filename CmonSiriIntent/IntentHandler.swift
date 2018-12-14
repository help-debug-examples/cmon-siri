//
//  IntentHandler.swift
//  CmonSiriIntent
//
//  Created by Derrick Showers on 12/14/18.
//  Copyright © 2018 Derrick Showers. All rights reserved.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        if intent is AmazonOrderIntent {
            return AmazonOrderIntentHandler()
        }
        
        return self
    }
    
}
