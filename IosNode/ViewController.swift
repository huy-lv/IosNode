//
//  ViewController.swift
//  IosNode
//
//  Created by Huy Le Vu on 23/01/2024.
//

import UIKit
import JavaScriptCore

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let jsContext = JSContext()
        
        jsContext?.evaluateScript(#"""
        function bitwise(number) {
            return number << 1;
        }
        """#)

        label1.text = "5 << 1 = " + String((jsContext?.evaluateScript("bitwise(5)")?
            .toInt32())!)

    }


}

