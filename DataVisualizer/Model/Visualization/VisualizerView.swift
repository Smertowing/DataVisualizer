//
//  VisualizerView.swift
//  DataVisualizer
//
//  Created by Kiryl Holubeu on 10/15/19.
//  Copyright © 2019 Kiryl Holubeu. All rights reserved.
//

import UIKit

@IBDesignable
class VisualizerView: UIView {

    let timeLineWidth: CGFloat = 5
    var zoom: Int = 100
    var scroll: Int = 0
    
    override func draw(_ rect: CGRect) {
        let color = UIColor.black
        color.setFill()
        
        let timeLineRect = CGRect(x: 0, y: rect.height/2-timeLineWidth/2, width: rect.width, height: timeLineWidth)
        let timeLine = UIBezierPath(rect: timeLineRect)
        timeLine.fill()
        
        let data = DataManager.get(amount: zoom, indent: scroll)
        var i = 0
        let unitWidth = rect.width/CGFloat(zoom)
        for unit in data {
            let unitRect = CGRect(x: unitWidth*CGFloat(i), y: rect.height/2-timeLineWidth/2, width: unitWidth, height: CGFloat(unit))
            let unitLine = UIBezierPath(rect: unitRect)
            unitLine.fill()
            i += 1
        }
    }
    
}

