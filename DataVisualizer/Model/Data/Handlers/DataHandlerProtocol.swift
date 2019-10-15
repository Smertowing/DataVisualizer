//
//  DataHandlerProtocol.swift
//  DataVisualizer
//
//  Created by Kiryl Holubeu on 10/15/19.
//  Copyright © 2019 Kiryl Holubeu. All rights reserved.
//

protocol DataHandlerProtocol {
    func get(_ amount: Int, with indent: Int) -> [DataType]
}

enum DataHandlerEnum: Hashable {
    case test

    func hash(into hasher: inout Hasher) {
        switch self {
        case .test:
            return hasher.combine(0)
        }
    }

}
