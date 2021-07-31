//
//  CardView.swift
//  ScrumTime
//
//  Created by Adithya KNG on 31/07/21.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("Attendees"))
                    .accessibilityValue("\(scrum.attendees.count)")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing,20)
                    .accessibilityElement(children:.ignore)
                    .accessibilityLabel("Meeting lenght")
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.data[1];
    static var previews: some View {
            CardView(scrum: scrum)
                .background(scrum.color)
                .previewLayout(.fixed(width: 400, height: 80))
    }
}
