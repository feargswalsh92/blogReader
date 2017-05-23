//
//  DetailViewController.swift
//  blogReader
//
//  Created by Feargal Walsh on 11/30/16.
//  Copyright © 2016 Feargal Walsh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var webView: UIWebView!


    func configureView() {
        // Update the user interface for the detail item.
        
        
        if let detail = self.detailItem {
            
            self.title = detail.value(forKey:"title") as! String
            
            if let blogWebView = self.webView{
                
    blogWebView.loadHTMLString(detail.value(forKey:"content")as! String,baseURL:nil) //baseurl if no http included
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

