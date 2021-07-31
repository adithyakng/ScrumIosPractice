//
//  ScrumTimeApp.swift
//  ScrumTime
//
//  Created by Adithya KNG on 30/07/21.
//

import SwiftUI

@main
struct ScrumTimeApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: DailyScrum.data)                
            }
        }
    }
}
