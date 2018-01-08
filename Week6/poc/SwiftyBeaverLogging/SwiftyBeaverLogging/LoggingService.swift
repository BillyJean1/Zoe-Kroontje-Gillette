//
//  LoggingService.swift
//  SwiftyBeaverLogging
//
//  Created by mac on 08-01-18.
//  Copyright © 2018 Personal. All rights reserved.
//

import Foundation
import SwiftyBeaver

class LoggingService {
    
    init (dateFormat: String){
        let console = ConsoleDestination()  // log to Xcode Console
        let file = FileDestination()  // log to default swiftybeaver.log file
        file.logFileURL = URL(fileURLWithPath: "/tmp/app_info.log")
        // use custom format and set console output to short time, log level & message
        console.format = dateFormat
        // or use this for JSON output: console.format = "$J"
        
        // add the destinations to SwiftyBeaver
        log.addDestination(console)
        log.addDestination(file)
    }
    
    
    func logVerbose(message: String) {
        log.verbose("💜 : [\(message)]")
    }
    
    func logError(message: String){
        log.error("❤️ : [\(message)]")
    }
    
    func logDebug(message: String){
        log.debug("💚 : [\(message)]")
    }
    
    func logInfo(message: String){
         log.info("💙 : [\(message)]")
    }
    
    func logWarning(message: String){
          log.warning("💛 : [\(message)]")
    }
}
