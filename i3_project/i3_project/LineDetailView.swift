//
//  LineDetailView.swift
//  example
//
//  Created by 홍길동 on 2022/07/27.
//..

import SwiftUI

struct LineDetailView: View {
    let line:Line
    var body: some View {
        List {
            Image("line1")
                .resizable()
                .frame(width: 200, height: 200)
            HStack {
                Text(" StationName ")
                Text(line.stationName)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            HStack{
                Text("data date")
                Text(line.date)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .navigationTitle(line.stationName)
    }
}

struct LineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LineDetailView(line: Line (
        stationCount: 1, date: "t", line: 2, stationNum: 1, stationName: "2@", fff: "222", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
        )
    }
}

