//
//  ViewController.swift
//  LxProjectTemplateDemo
//
//  Created by 李晛 on 16/1/13.
//  Copyright © 2016年 DeveloperLx. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textField = UITextField()
        textField.backgroundColor = RANDOM_COLOR(1)
        view.addSubview(textField)
        
        textField.snp_makeConstraints {
            
            $0.left.top.equalTo(view).offset(100)
            $0.right.equalTo(view).offset(-100)
            $0.height.equalTo(40)
        }
        
        let disposable = textField.rx_text
            .throttle(0.3, scheduler: MainScheduler.instance)
            .distinctUntilChanged()
            .ignoreElements()
            .subscribeNext {
        
            print($0)
        }
        
        print(SANDBOX_PATH)
        
//        disposable.dispose()
    }
}

