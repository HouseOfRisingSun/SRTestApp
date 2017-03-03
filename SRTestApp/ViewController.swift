//
//  ViewController.swift
//  SRTestApp
//
//  Created by andrew batutin on 3/3/17.
//  Copyright © 2017 HomeOfRisingSun. All rights reserved.
//
import SilentRunnerEngine
import UIKit

class ViewController: UIViewController {
    
    var server:SRServer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let clnt = UIApplication.shared.delegate
        SRClientPool.addClient(clnt, forTag: "app")
        self.server = SRServer(url:"ws://localhost:9000/chat") { (error) in
            print(error)
        }
        self.server?.run()
    }

}

