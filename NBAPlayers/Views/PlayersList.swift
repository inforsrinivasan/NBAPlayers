//
//  PlayersList.swift
//  NBAPlayers
//
//  Created by Srinivasan Rajendran on 2020-04-18.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PlayersList: View {

    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                PlayerRow(player: currentPlayer).frame(height: 80)
                }
            }.navigationBarTitle("Players List")
        }
    }
}

struct PlayersList_Previews: PreviewProvider {
    static var previews: some View {
        PlayersList()
    }
}
