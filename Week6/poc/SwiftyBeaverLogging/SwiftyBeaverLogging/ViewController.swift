//
//  ViewController.swift
//  SwiftyBeaverLogging
//
//  Created by mac on 18-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let loggingService: LoggingService = LoggingService(dateFormat: "$DHH:mm:ss$d $L $M");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loggingService.logInfo(message: "Infomessage")
        loggingService.logError(message: "Errormessage")
        loggingService.logDebug(message: "Debugmessage")
        loggingService.logVerbose(message: "Verbosemessage")
        loggingService.logWarning(message: "Warningmessage")
    }

}

