//
//  LoadWebViewViewController.swift
//  LoadWeb
//
//  Created by wisnuc-imac on 2018/3/30.
//  Copyright © 2018年 wisnuc-imac. All rights reserved.
//

import UIKit
import WebKit



class LoadWebViewViewController: UIViewController {
    var urlString:String?

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL.init(string: urlString!)
        let uRLRequest:URLRequest? = URLRequest.init(url: url!)
        webView.loadRequest(uRLRequest!)
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func stopAction(_ sender: UIBarButtonItem) {
        webView.stopLoading()
        
    }
    
    @IBAction func goBackAction(_ sender: UIBarButtonItem) {
        if  webView.canGoBack{
            webView.goBack()
        }
    }
    
    @IBAction func goForwardAction(_ sender: UIBarButtonItem) {
        if  webView.canGoForward{
            webView.goForward()
        }
    }
    
    @IBAction func refreshButtonClick(_ sender: UIBarButtonItem) {
        webView.reload()
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
