//
//  DZFrameGenerater.swift
//  DZTextExDemo
//
//  Created by 宋得中 on 16/1/11.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class DZFrameGenerater: NSObject {
    class func generateAttribute(config: DZTextExConfig) -> [String : AnyObject] {
        let fontSize = config.fontSize
        let font = CTFontCreateWithName("PingFangSC-Regular", fontSize, nil)
        
    }
    
    class func generateData(content: String, config: DZTextExConfig) -> DZTextExData {
        let textExData = DZTextExData()
        
        return textExData
    }
    
    class func generateFrame(frameSetter: CTFramesetterRef, config: DZTextExConfig, height: CGFloat) -> CTFrameRef {
        
    }
}
