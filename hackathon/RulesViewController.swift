//
//  RulesViewController.swift
//  hackathon
//
//  Created by Olu Roy on 11/12/17.
//  Copyright © 2017 This is a game. All rights reserved.
//

import UIKit
import Foundation

class RulesViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://docs.google.com/document/d/1mveXdbmjNIrPhx-u_HTOCRmDjTI9RhQD3_JXmze-y4k/edit?usp=sharing")
        let requestObj = NSURLRequest(url: url as! URL)
        webView.loadRequest(requestObj as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

