//
//  LogLevel.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import Foundation

enum LogLevel: Int, Comparable {
    
    static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    case fault = 0
    case error
    case warning
    case info
    case debug
    case verbose
    
    var description: String {
        switch self {
        case .fault:
            return "fault"
        case .error:
            return "error"
        case .warning:
            return "warning"
        case .info:
            return "info"
        case .debug:
            return "debug"
        case .verbose:
            return "verbose"
        }
    }
}
