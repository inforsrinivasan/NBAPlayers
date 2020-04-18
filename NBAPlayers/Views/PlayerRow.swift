//
//  PlayersList.swift
//  NBAPlayers
//
//  Created by Srinivasan Rajendran on 2020-04-18.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {

    var player: Player

    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(player.team.color)).overlay(Circle().stroke(Color.gray, lineWidth: 1))
            Text(player.name).font(.system(size: 30)).fontWeight(.regular).padding(.leading, 10)
            Spacer()
        }.padding(10)
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
