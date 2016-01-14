//
//  DZTextExConfig.swift
//  DZTextExDemo
//
//  Created by 宋得中 on 16/1/11.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class DZTextExConfig: NSObject {
    
    var width: CGFloat
    var fontSize: CGFloat
    var lineSpace: CGFloat
    var textColor: UIColor
    
    init(width: CGFloat, fontSize: CGFloat, lineSpace: CGFloat, textColor: UIColor) {
        self.width = width
        self.fontSize = fontSize
        self.lineSpace = lineSpace
        self.textColor = textColor
        super.init()
    }
}
