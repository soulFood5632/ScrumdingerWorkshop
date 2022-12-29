//
//  SwiftUIView.swift
//  Scrumdinger
//
//  Created by Logan Underwood on 2022-12-28.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(<#T##value: PreviewLayout##PreviewLayout#>)
    }
}
