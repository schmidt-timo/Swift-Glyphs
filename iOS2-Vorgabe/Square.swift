//
//  Square.swift
//  iOS2-Vorgabe
//
//  Created by Marie Lencer, Timo Schmidt on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Square: Glyph {
    
    override init() {
        super.init()
    }
    
    override init(size: Double, center: Point, color: UIColor) {
        super.init(size: size, center: center, color: color)
    }
    
    override var area: Double {
        return pow(size, 2)
    }
    
    override var circumference: Double {
        return size * 4
    }
    
    override func paint() {
        DrawHelper.drawSquare(x: center.x, y: center.y, size: size, color: color)
        super.paint()
    }
    
}
