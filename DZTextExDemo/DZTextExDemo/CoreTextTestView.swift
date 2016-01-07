//
//  CoreTextTestView.swift
//  DZTextExDemo
//
//  Created by 宋得中 on 16/1/7.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class CoreTextTestView: UIView {

    override func drawRect(rect: CGRect) {
        // 获取上下文
        let ctx = UIGraphicsGetCurrentContext()
        // 翻转坐标系
        CGContextSetTextMatrix(ctx, CGAffineTransformIdentity)
        
        CGContextTranslateCTM(ctx, 0, bounds.size.height)
        
        CGContextScaleCTM(ctx, 1.0, -1.0)
        // 创建并设置path
        let path = CGPathCreateMutable()
        
        CGPathAddRect(path, nil, bounds)
        // 设置属性文本
        let attStr = NSMutableAttributedString(string: "Hello World!")
        
        attStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(0, 5))
        // 设置framesetter
        let frameSetter = CTFramesetterCreateWithAttributedString(attStr)
        // 根据framesetter设置frame
        let frameRef : CTFrame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, attStr.length), path, nil)
        // 绘制
        CTFrameDraw(frameRef, ctx!)
        
    }

}
