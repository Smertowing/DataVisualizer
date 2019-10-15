//
//  DataManager.swift
//  DataVisualizer
//
//  Created by Kiryl Holubeu on 10/15/19.
//  Copyright © 2019 Kiryl Holubeu. All rights reserved.
//

class DataManager {
    
    private init() {}
    
    static private let sources: [DataHandlerEnum : DataHandlerProtocol] = [
        .test : TestDataHandler()
    ]
    
    static func get(amount: Int, indent: Int) -> [Int] {
        if let dataArray = sources[DataHandlerEnum.test]?.get(amount, with: indent) {
            return dataArray.sorted { (lhs, rhs) -> Bool in
                return lhs.date > rhs.date
            }.map { (data) -> Int in
                return data.number
            }
        } else {
            return []
        }
    }
}

