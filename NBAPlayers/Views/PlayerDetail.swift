//
//  ContentView.swift
//  NBAPlayers
//
//  Created by Srinivasan Rajendran on 2020-04-18.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {

    var player: Player

    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)

            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -70).shadow(radius: 25)
            Text(player.name).font(.system(size: 80)).fontWeight(.bold).padding(.bottom,30).lineLimit(1).minimumScaleFactor(0.4)
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)")
            Spacer()
            }.edgesIgnoringSafeArea(.top)
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetail(player: players[0]).environment(\.sizeCategory,.extraExtraExtraLarge).previewDevice("iPhone 11 pro")
            PlayerDetail(player: players[0]).environment(\.sizeCategory,.extraSmall).previewDevice("iPhone 8 pro")
        }

    }
}
