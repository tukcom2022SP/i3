//
//  wwwwwww.swift
//  ppppppp
//
//  Created by 홍길동 on 2022/07/26.
//
//
import Foundation
import SwiftUI

class PoiItem: Codable {
    
    let stationCount :  Int
    let date :  String
    let line  : Int
    let stationNum :  Int
    let stationName  : String
    let  fff : String   // 상,하행선 이름 ?d
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
    let elevenAM :  String
    let elevenAMThirty :  String
    let twelveAM :  String
    let twelveAMThirty :  String
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

class PoiData: ObservableObject {
    @Published var rows = [PoiItem]()
    struct Const {
           static let baseUrl = "https://api.odcloud.kr/api/15071311/v1/uddi:b3803d43-ffe3-4d17-9024-fd6cfa37c284?page=1&perPage=20" // perPage의 크기를 바꾸면 출력 개수가 달라짐.
           static let key = "E6inQwpgheg%2BbY86OvFI%2B7tB2ORRitEX%2B6zS7ywkyD%2BseLbn9snAq0BPc4aLQhuE3GdIHT9rOVC7J%2BOJO0PjVA%3D%3D"
       }
       func load() {
           let strUrl = "\(Const.baseUrl)&serviceKey=\(Const.key)"
           guard let url = URL(string: strUrl) else {
               print("Failed to build url with \(strUrl)")
               return
           }
           let task = URLSession.shared.dataTask(with: url) { data, _ , _ in
               guard let data = data else {
                   print("No data from dataTask with url: \(strUrl)")
                   return
               }
               guard let pois = self.parse(data: data) else {
                   print("Parse failed")
                   return
               }
               OperationQueue.main.addOperation {
                   self.rows = pois
               }
           }
           task.resume()
       }
    func parse(data: Data) -> [PoiItem]? {
        guard let root = try? JSONSerialization.jsonObject(with: data) as? [String:Any] else {
            return nil
        }
        guard let arr = root["data"] as? [Any] else {
            print("1")
            return nil
        }
        //print(arr)
        guard let rowobj = arr[2] as? [String: Any] else {
            print("2")
            return nil
        }
       print(rowobj)//
        var pois = [PoiItem]()
        for item in rowobj {
//            guard let poi = PoiItem.from(dictionary: item) else {
//                continue
//            }
            print(item)
     //      pois.append(poi)
        }
        return pois
    }
}
fileprivate extension PoiItem {
    static func from(dictionary: Any ) -> PoiItem? {
        guard let data = try? JSONSerialization.data(withJSONObject: dictionary) else {
            print("1")
            return nil
        }
        let decoder = JSONDecoder()
        guard let item = try? decoder.decode(PoiItem.self, from: data) else {
            return nil
        }
        print(item)
        return item
    }
}
