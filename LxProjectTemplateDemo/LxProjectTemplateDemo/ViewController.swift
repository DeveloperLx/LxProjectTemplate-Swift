//
//  ViewController.swift
//  LxProjectTemplateDemo
//
//  Created by 李晛 on 16/1/13.
//  Copyright © 2016年 DeveloperLx. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON {response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
                
                debugPrint(response)
        }
    }


}

