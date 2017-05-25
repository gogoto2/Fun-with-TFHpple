//
//  ViewController.swift
//  Fun with TFHpple
//
//  Created by John Pavley on 5/21/16.
//  Copyright © 2016 Epic Loot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let data = try? Data(contentsOf: URL(string: "http://www.pavley.com")!)
        let doc = TFHpple(htmlData: data)
        
        if let elements = doc?.search(withXPathQuery: "//p") as? [TFHppleElement] {
            for element in elements {
                print("------")
                print(element.content)
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

