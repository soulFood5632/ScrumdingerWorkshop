//
//  EditView.swift
//  Scrumdinger
//
//  Created by Logan Underwood on 2022-12-28.
//

import SwiftUI

struct DetailEditView: View {
    
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
    var body: some View {
    
            Form {
                Section(header: Text("Meeting Info")){
                    TextField("Meeting Title", text: $data.title)
                    HStack {
                        Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                            Text("Length")
                        }
                        Spacer()
                        Text("\(Int(data.lengthInMinutes)) min")
                    }
                }
                
                Section(header: Text("Attendees")) {
                    ForEach(data.attendees) {attendees in
                        Text(attendees.name)
                    }
                    .onDelete { indicies in
                        data.attendees.remove(atOffsets: indicies)
                    }
                    
                    HStack {
                        TextField("New Attendee", text: $newAttendeeName)
                        Button(action: {
                            withAnimation {
                                let attendee = DailyScrum.Attendee(name: newAttendeeName)
                                data.attendees.append(attendee)
                                newAttendeeName = ""
                            }
                        }) {
                            Image(systemName: "plus.circle.fill")
                        }
                        .disabled(newAttendeeName.isEmpty)
                    }
                    
                }
            }
        
        
        
        
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
