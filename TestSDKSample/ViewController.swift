import UIKit
import WebKit
import TestSDK

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let messageHandler = MessageHandler()
        messageHandler.onCallFinish = {
            print("call is finished")
        }
        
        let provider = WebViewProvider.provider
        provider.setWebView(webView: webView, messageHandler: messageHandler, isVideoCall: false)
        
        let pageLoaded = provider.loadPage()
        print(pageLoaded)
    }
}

