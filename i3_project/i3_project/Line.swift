//
//  wwwwww.swift
//  i3_project
//
//  Created by 홍길동 on 2022/07/27.
//

import Foundation
import SwiftUI

struct Line:Codable {
    let stationCount :  String
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
    var weekday: [Line]
    var saturday : [Line]
    var sunday : [Line]
}

class LineStoreOne: ObservableObject {
    static let singleton = LineStoreOne()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
        //dasdasdsasdsdsada
    }
}

class LineStoreTwo: ObservableObject {
    static let singleton = LineStoreTwo()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line2.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
        
    }
}

class LineStoreThree: ObservableObject {
    static let singleton = LineStoreThree()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line3.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}

class LineStoreFour: ObservableObject {
    static let singleton = LineStoreFour()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line4.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}

class LineStoreFive: ObservableObject {
    static let singleton = LineStoreFive()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line5.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}

class LineStoreSix: ObservableObject {
    static let singleton = LineStoreSix()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line6.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}

class LineStoreSeven: ObservableObject {
    static let singleton = LineStoreSeven()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line7.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}

class LineStoreEight: ObservableObject {
    static let singleton = LineStoreEight()
    @Published var weekday = [Line]()
    @Published var saturday = [Line]()
    @Published var sunday = [Line]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "res/line8.json", withExtension: "")
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
        self.weekday = lineData.weekday
        self.saturday = lineData.saturday
        self.sunday = lineData.sunday
    }
}
