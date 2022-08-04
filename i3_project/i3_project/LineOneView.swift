//
//  LineView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//
import SwiftUI

func getDayOfWeek(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEEEE"
        formatter.locale = Locale(identifier:"ko_KR")
        let convertStr = formatter.string(from: date)
        return convertStr
}
    
func getListOfDayForOne(inputLineStore:LineStoreOne)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.weekday
    case "일":
        return lineStore.saturday
    default:
        return lineStore.sunday
    }
}

struct LineOneView: View {
    @ObservedObject var lineStore = LineStoreOne.singleton
    let day = getDayOfWeek(date: Date())
    @State var text = ""
    var body: some View {
        searchBar(text: $text)
            .navigationBarTitleDisplayMode(.inline)
        switch day {
        case "토":
            List {
                ForEach (lineStore.saturday.filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineOneStationView(line: line)
                    }
                }
            }.onAppear {
                lineStore.load()
            }
        case "일":
            List {
                ForEach (lineStore.saturday.filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineOneStationView(line: line)
                    }
                }
            }.onAppear {
                lineStore.load()
            }
        default:
            List {
                ForEach (lineStore.saturday.filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineOneStationView(line: line)
                    }
                }
            }.onAppear {
                lineStore.load()
            }
        }
    }
}

struct LineOneView_Previews: PreviewProvider {
    static var previews: some View {
        LineOneView()
    }
}

struct LineOneStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line1")
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("\(line.stationName)")
                    .font(.headline)
                Spacer()
                Text("\(line.fff)")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
    }
}


struct LineOneStationView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LineOneStationView(line: Line (
            stationCount: "1", date: "t", line: 2, stationNum: 1, stationName: "2@", fff: "222", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
            )
        }
    }
}

// ddddd
//88888
// kkkkk
// aaaaa
