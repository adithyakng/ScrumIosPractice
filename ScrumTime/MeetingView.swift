//
//  MeetingView.swift
//  ScrumTime
//
//  Created by Adithya KNG on 30/07/21.
//

import SwiftUI

struct MeetingView: View {
    @Environment(\.colorScheme) var colorScheme;
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 40)
            HStack{
                VStack(alignment:.leading){
                    Text("Seconds Elasped")
                        .font(.caption)
                    Label("300", systemImage:"hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment:.leading){
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("500",systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("11 Minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24,antialiased: true)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: ({})){
                    Image(systemName: "forward.fill")
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
            }
            .accessibilityLabel("Next Speaker")
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
