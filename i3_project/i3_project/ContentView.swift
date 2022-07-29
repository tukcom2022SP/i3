//
//  ContentView.swift
//  i3_project
//
//  Created by 홍길동 on 2022/07/27.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @ObservedObject var lineStore = LineStore.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach (lineStore.lines, id:\.stationName) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineStationView(line: line)
                    }
                }
            }
            .navigationTitle(Text("Albums"))
        }.onAppear {
            lineStore.load()
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LineStationView: View {
    static let imageSize = 60
    let line :Line
    @State var image: Image?
    var body: some View {
        HStack {
            Image("line1")
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("\(line.stationName)")
                    .font(.headline)
                Spacer()
                Text("\(line.date)")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
    }
}


struct LineStationView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LineStationView(line: Line (
            stationCount: 1, date: "t", line: 2, stationNum: 1, stationName: "2@", fff: "222", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
            )
        }
    }
}

