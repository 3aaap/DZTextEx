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
        
        let rect = CGRectMake(100, 100, 200, 200)
        
        let testView = CoreTextTestView(frame: rect)
        
        testView.backgroundColor = UIColor.whiteColor()
        
        view.addSubview(testView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

