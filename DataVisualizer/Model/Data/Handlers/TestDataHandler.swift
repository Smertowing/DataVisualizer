//
//  TestDataHandler.swift
//  DataVisualizer
//
//  Created by Kiryl Holubeu on 10/15/19.
//  Copyright © 2019 Kiryl Holubeu. All rights reserved.
//

import Foundation

class TestDataHandler: DataHandlerProtocol {
    
    var data = [DataType]()
    
    func get(_ amount: Int, with indent: Int) -> [DataType] {
        let dataType = DataType(date: Date(timeIntervalSinceReferenceDate: data.last?.date.timeIntervalSince1970 ?? Date(timeIntervalSinceNow: 0).timeIntervalSince1970 + 1), number: Int.random(in: 0...200))
        data.insert(dataType, at: 0)
        var result = [DataType]()
        for i in 0..<amount {
            guard i < data.count else {
                break
            }
            result.append(data[i])
        }
        return result
    }
}
