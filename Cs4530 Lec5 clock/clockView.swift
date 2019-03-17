//
//  clockView.swift
//  Cs4530 Lec5 clock
//
//  Created by u1034691 on 2/25/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class clockView: UIView {
    
    var touchPoint: CGPoint = CGPoint(x: 0.0, y: 0.0)
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        super.touchesMoved(touches, with: event)
        let touch: UITouch = touches.first!
        touchPoint = touch.location(in: self)
        print("touchPOint x: \(touchPoint.x) y: \(touchPoint.y)")
        
        setNeedsDisplay()//say that it needs to be redrawn.
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let faceRect: CGRect = CGRect(x: 10.0, y: 10.0 + bounds.height * 0.5-bounds.width, width: bounds.width - 20.0, height: bounds.width - 20.0)
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.addEllipse(in: faceRect)
        context.setLineWidth(20.0)
        context.setStrokeColor(UIColor.green.cgColor)
        context.setFillColor(UIColor.blue.cgColor)
        context.drawPath(using: .fillStroke)
        
        let circle: CGRect = CGRect(x: touchPoint.x - 5.0, y:touchPoint.y - 5.0, width: 10.0, height: 10.0)
        context.addEllipse(in: circle)
        context.setFillColor(UIColor.yellow.cgColor)
        context.drawPath(using: .fill)
        
    }
}
