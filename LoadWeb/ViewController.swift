//
//  ViewController.swift
//  LoadWeb
//
//  Created by wisnuc-imac on 2018/3/30.
//  Copyright © 2018年 wisnuc-imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var urlTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadButtonClick(_ sender: UIButton) {

        if (urlTextFiled.text?.isEmpty)! {
            let alertController = UIAlertController(title: "提示",
                                                    message: "输入的url为空", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                
            })

            alertController.addAction(okAction)
            present(alertController, animated: true, completion: {
                
            })
            return;
        }
        let loadWebViewVC = LoadWebViewViewController()
        loadWebViewVC.urlString = urlTextFiled.text!
        navigationController?.pushViewController(loadWebViewVC, animated: true)
    }
    
}

