//
//  GlyphView.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

enum GlyphType: Int {
    case square = 0, circle, triangle
}

class GlyphView: UIView {
    
    var glyphs = [Square(), Circle(), Triangle()]
    
    // MARK: - Change Handlers
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        glyphs[index].center.x = x
        glyphs[index].center.y = y
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion

        // vorherige Position merken
        let size = glyphs[index].size
        let center = glyphs[index].center
        let color = glyphs[index].color
        
        switch type {
        case .square:
            glyphs[index] = Square(size: size, center: center, color: color)
        case .circle:
            glyphs[index] = Circle(size: size, center: center, color: color)
        case .triangle:
            glyphs[index] = Triangle(size: size, center: center, color: color)
        }
    }
    
    func glyph(index: Int, changedColor color: UIColor) {
        glyphs[index].color = color
    }
    
    func glyph(index: Int, changedSize size: Double) {
        glyphs[index].size = size
    }
    
    func glyph(index: Int, showDescription show: Bool) {
        glyphs[index].showDescription = show
    }
    

    // MARK: - Drawing
    
    override func draw(_ rect: CGRect)
    {
        for i in 0...2 {
            glyphs[i].paint()
            glyphs[i].showGlyphNumber(index: i)
        }
    }

}
