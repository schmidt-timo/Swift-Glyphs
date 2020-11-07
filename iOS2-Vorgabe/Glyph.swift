//
//  Glyph.swift
//  iOS2-Vorgabe
//
//  Created by Marie Lencer, Timo Schmidt on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Glyph: Drawing {
    
    init() {
        size = 0.0
        center = Point(x: 0, y: 0)
        color = UIColor.black
        showDescription = false
    }
    
    init(size : Double, center : Point, color : UIColor) {
        self.size = size
        self.center = center
        self.color = color
        showDescription = false
    }
    
    var size: Double
    
    var color: UIColor
    
    var center: Point
    
    var showDescription: Bool
    
    func showGlyphNumber(index: Int) {
        let x = center.x
        let y = center.y
        DrawHelper.drawGlyphNumber(index: index, atX: x, y: y)
    }
    
    func paint() {
        if showDescription {
            let x = center.x
            let y = center.y - (size/2) - 15.0
            DrawHelper.drawDescription(area: area, circumferrence: circumference, atX: x, y: y)
        }
    }
    
    var area: Double {
        return 0
    }
    
    var circumference: Double {
        return 0
    }
    
}
