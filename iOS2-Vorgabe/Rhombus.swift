//
//  Rhombus.swift
//  iOS2-Vorgabe
//
//  Created by Timo Schmidt on 07.11.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Rhombus: Glyph {
    
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
        return size * 4
    }
    
    override func paint() {
        DrawHelper.drawRhombus(x: center.x, y: center.y, size: size, color: color)
        super.paint()
    }
    
}
