//
//  DataManager.swift
//  DataVisualizer
//
//  Created by Kiryl Holubeu on 10/15/19.
//  Copyright © 2019 Kiryl Holubeu. All rights reserved.
//

class DataManager {
    
    private init() {}
    
    static private let currentSource = DataHandlerEnum.test
    static private let sources: [DataHandlerEnum : DataHandlerProtocol] = [
        .test : TestDataHandler()
    ]
    
    static func get(amount: Int, indent: Int) -> [Int] {
        if let dataArray = sources[currentSource]?.get(amount, with: indent) {
            return dataArray.map { (data) -> Int in
                return data.number
            }
        } else {
            return []
        }
    }
}

