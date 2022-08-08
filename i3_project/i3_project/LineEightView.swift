//
//  LineView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//
import SwiftUI

struct LineEightView: View {
    @ObservedObject var lineStore = LineStoreEight.singleton
    @State var text = ""
    var body: some View {
        searchBar(text: $text)
            .navigationBarTitleDisplayMode(.inline)
            List {
                ForEach (getListOfDayForEight(inputLineStore: lineStore).filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineEightStationView(line: line)
                    }
                }
            }.onAppear {
                lineStore.load()
            }
        }
}

struct LineEightView_Previews: PreviewProvider {
    static var previews: some View {
        LineEightView()
    }
}

struct LineEightStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line8")
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("\(line.stationName)")
                    .font(.headline)
                Spacer()
                Text("\(line.way)")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
    }
}


struct LineEightStationView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LineEightStationView(line: Line (
            stationCount: "1", date: "t", line: 2, stationNum: 1, stationName: "2@", way: "222", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
            )
        }
    }
}
