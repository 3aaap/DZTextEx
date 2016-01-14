//
//  ViewController.swift
//  DZTextExDemo
//
//  Created by song_dzhong on 16/1/6.
//  Copyright © 2016年 song_dzhong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGrayColor()
        
        let config = DZTextExConfig(width: view.bounds.size.width, fontSize: 17, lineSpace: 15, textColor: UIColor.redColor())
        
        let textData = DZFrameGenerater.generateData("准备测试 core text,准备测试 core text,准备测试 core text,准备测试 core text,准备测试 core text,准备测试 core text", config: config)
        
        let textView = DZTextExView(textData: textData)
        textView.backgroundColor = UIColor.whiteColor()
        
        textView.frame = CGRectMake(0, 100, view.bounds.size.width, textData.height)
        
        view.addSubview(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

