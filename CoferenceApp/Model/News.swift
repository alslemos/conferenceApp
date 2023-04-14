//
//  News.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import Foundation
import SwiftUI

struct News: Identifiable, Hashable {
    let id: UUID = UUID()
    let date: String
    let title: String
    let image: String
    
}

struct MockNews {
    static let news: [News] = [
        News(date: "1 hour ago", title:"Apple fitness app is coming to all iPhone users.", image: "fitness"),
        News(date: "2 hours ago", title:"Apple has announced the next-gen M2 chip.", image: "m2"),
        News(date: "4 hours ago", title:"New ways to share and communicate in iOS 16.", image: "ios16")
   ]


}
