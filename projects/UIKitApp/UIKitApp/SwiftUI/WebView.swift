//
//  WebView.swift
//  UIKitApp
//
//  Created by Emil Atanasov on 12/09/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: URL
    init(url: URL) {
        self.url = url
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // nothing
    }
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        
            webView.load(URLRequest(url: url))
        return webView
    }
}

#Preview {
    WebView(url: URL(string: "http://google.com")!)
}
