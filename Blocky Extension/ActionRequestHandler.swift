//
//  ActionRequestHandler.swift
//  Blocky
//
//  Created by Simone Manganelli on 28/05/16.
//  Copyright © 2016 Simone Manganelli. All rights reserved.
//

import UIKit
import MobileCoreServices

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOf: Bundle.main.url(forResource: "blockerList", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [attachment]
    
        context.completeRequest(returningItems: [item], completionHandler: nil);
    }
    
}
