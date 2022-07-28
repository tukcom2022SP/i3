//
//  wwwwww.swift
//  i3_project
//
//  Created by 홍길동 on 2022/07/27.
//

import Foundation
import SwiftUI

struct Line:Codable {
    let stationCount :  Int
    let date :  String
    let line  : Int
    let stationNum :  Int
    let stationName  : String
    let  fff : String   // 상,하행선 이름 ?
    let fiveThirty  : String
    let six  : String
    let sixThirty  : String
    let seven  : String
    let sevenThirty  : String
    let eight  : String
    let eightThirty  : String
    let nine  : String
    let nineThirty  : String
    let ten :  String
    let tenThirty :  String
    let eleven :  String
    let elevenThirty :  String
    let twelve :  String
    let twelveThirty :  String
    let onePM :  String
    let onePMThirty :  String
    let twoPM :  String
    let twoPMThirty  : String
    let threePM  : String
    let threePMThirty  : String
    let fourPM  : String
    let fourPMThirty  : String
    let fivePM  : String
    let fivePMThirty  : String
    let sixPM  : String
    let sixPMThirty  : String
    let sevenPM  : String
    let sevenPMThirty  : String
    let eightPM  : String
    let eightPMThirty  : String
    let ninePM  : String
    let ninePMThirty  : String
    let tenPM  : String
    let tenPMThirty  : String
    let elevenPM  : String
    let elevenPMThirty  : String
}
struct LineData:Codable {
    var lines: [Line]
}

class LineStore: ObservableObject {
    static let singleton = LineStore()
    @Published var lines = [Line]()
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line1.json", withExtension: "")
        else {
            print("1")
            return
        }
        print("URL : \(url)")
        guard let data = try? Data(contentsOf: url) else {
            print("2")
            return
        }
        print("Data : \(data)")
        let decoder = JSONDecoder()
        guard let lineData = try? decoder.decode(LineData.self, from: data) else {
            print("3")
            return
        }
        self.lines = lineData.lines
        print("Loaded albums: \(lines.count)")
        //dasdasdsasdsdsada
    }
}

