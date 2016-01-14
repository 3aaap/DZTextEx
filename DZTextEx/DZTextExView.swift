//
//  DZTextExView.swift
//  DZTextExDemo
//
//  Created by 宋得中 on 16/1/11.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class DZTextExView: UIView {
    
    var textData: DZTextExData
    
    override func drawRect(rect: CGRect) {
        let ctx: CGContextRef = UIGraphicsGetCurrentContext()!
        
        CGContextSetTextMatrix(ctx, CGAffineTransformIdentity)
        CGContextTranslateCTM(ctx, 0, self.bounds.size.height)
        CGContextScaleCTM(ctx, 1.0, -1.0)
        
        CTFrameDraw(textData.frame, ctx)
    }
    
    init(textData: DZTextExData) {
        self.textData = textData
        
        super.init(frame: CGRectZero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
