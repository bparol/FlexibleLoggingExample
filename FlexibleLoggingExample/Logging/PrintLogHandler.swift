//
//  PrintLogHandler.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import Foundation


class PrintLogHandler: LogHandler {

    func handle(
        _ level: LogLevel,
        _ message: String,
        extra: Any?,
        category: LogCategory,
        file: String,
        line: Int,
        column: Int,
        function: String) {
        
    }
    
    var supportedLevel: LogLevel {
        return .debug
    }
}
