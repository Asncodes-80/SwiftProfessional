//
//  DetailsView.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url: String?
    let titleOfNews: String?
    
    var body: some View {
        
        WebViewSection(urlString: url!)
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "", titleOfNews: "")
    }
}

// Web View Section loads up websites
struct WebViewSection: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebViewSection.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: urlString!)
        let req = URLRequest(url: url!)
        // loadsup webview
        uiView.load(req)
    }
}
