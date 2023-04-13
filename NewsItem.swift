//
//  NewsItem.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 10/04/23.
//

import SwiftUI

struct NewsItem: View {
    
    let new: News
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            Image(new.image)
            Text(new.date)
                .font(.caption)
                .foregroundColor(.secondary)
            Text(new.title)
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
        NewsItem(new: News(date: "1 hour ago", title:"Apple fitness app is coming to all iPhone users.", image: "fitness"))
    }
}
