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
        // 设置字体大小
        let fontSize = config.fontSize
        let font = CTFontCreateWithName("PingFangSC-Regular", fontSize, nil)
        // 行间距
        var lineSpace = config.lineSpace
        // 设置段落样式
        let settingOne = CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.LineSpacingAdjustment, valueSize: sizeof(CGFloat), value: &lineSpace)
        let settingTwo = CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.MaximumLineSpacing, valueSize: sizeof(CGFloat), value: &lineSpace)
        let settingThree = CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.MinimumLineSpacing, valueSize: sizeof(CGFloat), value: &lineSpace)
        let settings: [CTParagraphStyleSetting] = [settingOne, settingTwo, settingThree]
        
        let paragraphStyle = CTParagraphStyleCreate(settings, settings.count)
        // 字体颜色
        let textColor = config.textColor
        
        let dict: [String: AnyObject] = [kCTForegroundColorAttributeName as String: textColor.CGColor, kCTFontAttributeName as String: font, kCTParagraphStyleAttributeName as String: paragraphStyle]
        
        return dict
    }
    
    class func generateFrame(frameSetter: CTFramesetterRef, config: DZTextExConfig, height: CGFloat) -> CTFrameRef {
        let path = CGPathCreateMutable()
        CGPathAddRect(path, nil, CGRectMake(0, 0, config.width, height))
        
        let frameRef = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, nil)
        return frameRef
    }
    
    class func generateData(content: String, config: DZTextExConfig) -> DZTextExData {
        let attrDict = self.generateAttribute(config)
        let attributeStr = NSMutableAttributedString(string: content, attributes: attrDict)
        
        let frameSetter = CTFramesetterCreateWithAttributedString(attributeStr)
        
        //获取文本的高度
        let limitSize = CGSizeMake(config.width, CGFloat.max)
        let textSize = CTFramesetterSuggestFrameSizeWithConstraints(frameSetter, CFRangeMake(0, 0), nil, limitSize, nil)
        let frame = self.generateFrame(frameSetter, config: config, height: textSize.height)
        
        let textExData = DZTextExData(frame: frame, height: textSize.height)
        
        return textExData
    }
    
}
