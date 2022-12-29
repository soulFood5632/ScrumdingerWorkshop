//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Logan Underwood on 2022-12-28.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
