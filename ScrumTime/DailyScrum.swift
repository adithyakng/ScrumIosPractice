//
//  DailyScrum.swift
//  ScrumTime
//
//  Created by Adithya KNG on 31/07/21.
//

import SwiftUI

struct DailyScrum {
    var title: String;
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
}

extension DailyScrum {
    static var data: [DailyScrum] = [
        DailyScrum(title: "Engineering", attendees: ["Adithya","Archana","Srikar"], lengthInMinutes: 10, color: .red),
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: .secondary),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, color: .green),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah","Chella", "Chris", "Christina", "Eden"], lengthInMinutes: 1, color: .orange)
    ]
}
