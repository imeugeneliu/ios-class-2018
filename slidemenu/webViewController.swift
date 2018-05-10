//
//  webViewController.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/10/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKUIDelegate
{
    var athleteFirstName: String = ""
    var athleteLastName: String = ""
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if athleteFirstName != "Odell"
        {
            let myURL = URL(string: "https://en.wikipedia.org/wiki/\(athleteFirstName)_\(athleteLastName)")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
        else
        {
            let myURL = URL(string: "https://en.wikipedia.org/wiki/Odell_Beckham_Jr.")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
        
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }

    override func didReceiveMemoryWarning()
    {
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
