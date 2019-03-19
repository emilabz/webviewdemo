//
//  ViewController.swift
//  webviewdemo
//
//  Created by MacStudent on 2019-03-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController {

    @IBOutlet weak var WebKView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadFromString()
        loadFromFile()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let url=URL(string: "https://www.google.com")
        //let urlReq = URLRequest(url: locFilePath!)
        //WebKView.load(urlReq)
    }
    func loadFromString(){
        let htmlStr="<h1> Hello </h1>"
        WebKView.loadHTMLString(htmlStr, baseURL: nil)
    }
    func loadFromFile(){
        let locFilePath=Bundle.main.url(forResource: "home", withExtension: "html")
        let locReq = URLRequest(url: locFilePath!)
        WebKView.load(locReq)
    }

}

