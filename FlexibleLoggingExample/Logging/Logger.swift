//
//  Logger.swift
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import Foundation

class Logger {
    
    static let instance = Logger()
    
    private var handlers = [LogHandler]()
    
    func addHandlers(_ handlers: [LogHandler]) {
        self.handlers.append(contentsOf: handlers)
    }
    
    func log(
        _ level: LogLevel,
        _ message: String,
        extra: Any?,
        category: LogCategory,
        file: String,
        line: Int,
        column: Int,
        function: String) {
        
        let file = file.components(separatedBy: "/").last ?? file
        
        handlers
            .filter { $0.supportedLevel >= level }
            .forEach {
                $0.handle(
                    level,
                    message,
                    extra: extra,
                    category: category,
                    file: file,
                    line: line,
                    column: column,
                    function: function)
        }
    }
}
