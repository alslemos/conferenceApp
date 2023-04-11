//
//  NewsItem.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 10/04/23.
//

import SwiftUI

struct NewsItem: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            Image("fitness")
            Text("1 hour ago")
                .font(.caption)
                .foregroundColor(.secondary)
            Text("Apple’s Fitness app is coming to all iPhone users.")
                .font(.caption)
                .fontWeight(.medium)
            
                Text("Read more >")
                .font(.caption)
            
            
        }
        .frame(width:210)
    }
}

struct NewsItem_Previews: PreviewProvider {
    static var previews: some View {
        NewsItem()
    }
}
