//
//  HomeScreen.swift
//  FlightTimeline
//
//  Created by brubru on 30.10.2022.
//

import SwiftUI

struct HomeScreen: View {
    let flightInfo = FlightInformation.generateFlights()
    
    var body: some View {
        NavigationStack {
            ZStack {//чтобы на картинку не наезжали надписи
                Image(systemName: "airplane")
                    .resizable()//        для принятия размера родительского представления
                    .frame(width: 250, height: 250)//размеры
                    .opacity(0.1) //чтобы был слегка серый
                    .rotationEffect(.degrees(-90))//чтобы развернуть на север, потому что работает по часовой стрелке
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink(
                        "Arrivals",
                        destination: FlightBoard(boardName: "Arrivals", flightInfo: flightInfo.filter { $0.direction == .arrival }))
                    NavigationLink(
                        "Departures",
                        destination: FlightBoard(boardName: "Departures", flightInfo: flightInfo.filter { $0.direction == .departure })
                    )
                    NavigationLink(
                        "Flight Timeline",
                        destination: TimelineView(flights: flightInfo)
                    )
                    Spacer()
                }
                .font(.title)
                .padding(20)
            }
            .navigationTitle("Arrival")
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
