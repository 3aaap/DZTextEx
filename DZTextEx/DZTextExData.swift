//
//  DZTextExData.swift
//  DZTextExDemo
//
//  Created by 宋得中 on 16/1/11.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class DZTextExData: NSObject {

    var frame: CTFrameRef
    var height: CGFloat
    
    init(frame: CTFrameRef, height: CGFloat) {
        self.frame = frame
        self.height = height
        super.init()
    }
    
}
