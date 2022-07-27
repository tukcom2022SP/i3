//
//  ContentView.swift
//  ppppppp
//
//  Created by 홍길동 on 2022/07/26.
//
//
import SwiftUI

struct PoiListView: View {
    @ObservedObject var poiData = PoiData()
    var body: some View {
        NavigationView {
            List {
                ForEach(poiData.rows, id: \.date) { poi in
                    PoiItemView(poi: poi)
                }
            }
            .navigationBarTitle(Text("Restaurants"))
        }
        .onAppear {
            poiData.load()
        }
    }
}//

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PoiListView()
    }
}
    

struct PoiItemView: View {//
    let poi:PoiItem
    var body: some View {
            HStack {
                Image(systemName: "fork.knife.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading) {
                    Text(poi.date)
                        .font(.title)
                    Text(poi.stationName)
                        .font(.headline)
                        .foregroundColor(.brown)
                    Text(poi.eight)
                        .lineLimit(1)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
    }
}
