//
//  Triangle.swift
//  iOS2-Vorgabe
//
//  Created by Marie Lencer, Timo Schmidt on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Triangle : Glyph {
    
    override init() {
        super.init()
    }
    
    override init(size: Double, center: Point, color: UIColor) {
        super.init(size: size, center: center, color: color)
    }
    
    override var area: Double {
        return 0.5 * size * size
    }
    
    override var circumference: Double {
        return size + (2 * sqrt(pow(size, 2) + pow(size, 2)/4))
    }
    
    override func paint() {
        DrawHelper.drawTriangle(x: center.x, y: center.y, size: size, color: color)
        super.paint()
    }
    
}
