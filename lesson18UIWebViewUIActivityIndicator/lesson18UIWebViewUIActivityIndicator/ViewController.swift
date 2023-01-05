//
//  ViewController.swift
//  lesson18UIWebViewUIActivityIndicator
//
//  Created by Karen Vardanian on 05.01.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var goBackItem: UIBarButtonItem!
    @IBOutlet weak var goForwardItem: UIBarButtonItem!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    let application = UIApplication.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let url = URL(string: "https://www.google.com") else {return}
        let request = URLRequest(url: url)
        webView.load(request)
        
        activity.style = .large
    }
    
    func isWorkIndicator(isAnimated: Bool, indicator: UIActivityIndicatorView) {
        if isAnimated {
            activity.startAnimating()
            activity.isHidden = false
        } else {
            activity.stopAnimating()
            activity.isHidden = false
        }
    }
    
    
    func webViewDidStartLoad(_ webView: WKWebView) {
        isWorkIndicator(isAnimated: true, indicator: activity)
        self.goBackItem.isEnabled = false
        self.goForwardItem.isEnabled = false
    }
    func webViewDidFinishLoad(_ webView: WKWebView) {
        isWorkIndicator(isAnimated: false, indicator: activity)
        if webView.canGoBack {
            self.goBackItem.isEnabled = true
        }
        if webView.canGoForward {
            self.goForwardItem.isEnabled = true
        }
    }
    func webView(_ webView: WKWebView, shouldStartLoadWith request: URLRequest) -> Bool {
        return true
    }
    


    @IBAction func goBackAction(_ sender: Any) {
       if webView.canGoBack {
           webView.goBack()
        }
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    @IBAction func refreshAction(_ sender: Any) {
        webView.reload()
        
    }
    
    
}

