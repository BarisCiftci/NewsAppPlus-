//
//  NewsSourceHome.swift
//  NewsAppPlus
//
//  Created by Baris Ciftci on 27/01/2023.
//

import SwiftUI

struct NewsSourceHome: View {
    
    @ObservedObject private var newsListVM = NewsListVM()
    
    init() {
        newsListVM.load()
    }
    
    var body: some View {
        VStack {
           // NewsSourceHeader()
            VStack {
                    NewsSourceView(newsCollection: self.newsListVM.news)
            }
        }
    }
}

struct NewsSourceHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsSourceHome()
    }
}