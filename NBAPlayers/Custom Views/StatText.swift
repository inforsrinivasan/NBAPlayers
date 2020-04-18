//
//  StatText.swift
//  NBAPlayers
//
//  Created by Srinivasan Rajendran on 2020-04-18.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct StatText: View {

    var statName: String
    var statValue: String

    var body: some View {
        HStack(alignment: .center) {
            Text(statName + ":").font(.system(size: 40)).fontWeight(.medium)
            Text(statValue).font(.system(size: 40)).fontWeight(.light)
            Spacer()
        }.padding(.leading, 30)
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "32")
    }
}
