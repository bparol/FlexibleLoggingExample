//
//  Log
//  FlexibleLoggingExample
//
//  Created by Boguslaw Parol on 14/09/2019.
//  Copyright © 2019 Boguslaw Parol. All rights reserved.
//

import Foundation

func logData(
    _ level: LogLevel,
    _ message: String = "",
    extra: Any? = nil,
    category: LogCategory = .general,
    file: String = #file,
    line: Int = #line,
    column: Int = #column,
    function: String = #function) {
    
    Logger.instance.log(
        level,
        message,
        extra: extra,
        category: category,
        file: file,
        line: line,
        column: column,
        function: function)
}
