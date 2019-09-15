//
//  OsLogHandler.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import Foundation
import os.log

extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    static let general = OSLog(subsystem: subsystem, category: LogCategory.general.rawValue)
    static let viewCycle = OSLog(subsystem: subsystem, category: LogCategory.viewCycle.rawValue)
    static let memorymanagementCycle = OSLog(subsystem: subsystem, category: LogCategory.memoryManagement.rawValue)
}

extension LogLevel {
    var osLogType: OSLogType {
        switch self {
        case .info, .warning:
            return .info
        case .error:
            return .error
        case .fault:
            return .fault
        case .debug, .verbose:
            return .debug
        }
    }
}

extension LogCategory {
    var osLog: OSLog {
        switch self {
        case .general:
            return OSLog.general
        case .viewCycle:
            return OSLog.viewCycle
        case .memoryManagement:
            return OSLog.memorymanagementCycle
        }
    }
}

class OsLogHandler: LogHandler {
    
    func handle(
        _ level: LogLevel,
        _ message: String,
        extra: Any?,
        category: LogCategory,
        file: String,
        line: Int,
        column: Int,
        function: String) {
        
        os_log(level.osLogType,
               log: category.osLog ,
               "%@ %@:%@[%d:%d] %@",
               level.description.uppercased(),
               file,
               function,
               line,
               column,
               message)
    }
    
    var supportedLevel: LogLevel {
        return .debug
    }
}
