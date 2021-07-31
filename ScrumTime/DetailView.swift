//
//  DetailView.swift
//  ScrumTime
//
//  Created by Adithya KNG on 31/07/21.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.colorScheme) var colorScheme
    let scrum : DailyScrum
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting",systemImage:"timer")
                        .foregroundColor(.accentColor)
                        .font(.headline)
                        .accessibilityLabel("Start Meeting")
                }
                HStack {
                    Label("Length",systemImage:"clock")
                        .foregroundColor(colorScheme == ColorScheme.dark ? .white : .black)
                        .accessibilityLabel("Meeting Length")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Minutes")
                }
                HStack {
                    Label("Color",systemImage:"paintpalette")
                        .foregroundColor(colorScheme == ColorScheme.dark ? .white : .black)
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(scrum.color)
                }
                .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
            }
            
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees,id:\.self){ attendee in
                    Label(attendee,systemImage: "person")
                        .foregroundColor(colorScheme == ColorScheme.dark ? .white : .black)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.data[1])
        }
    }
}
