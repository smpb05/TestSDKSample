import UIKit
import WebKit
import TestSDK

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let messageHandler = MessageHandler()
        messageHandler.callback = { data in
            // callback for example
        }
        
        let provider = WebViewProvider.provider
        provider.setWebView(webView: webView, messageHandler: messageHandler)
        
        let pageLoaded = provider.loadPage()
        print(pageLoaded)   
    }
}

