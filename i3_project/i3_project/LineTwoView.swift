//
//  LineTwoView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//

import SwiftUI


struct LineTwoView: View {
    @ObservedObject var lineStore = LineStoreTwo.singleton
    @State var text = ""
    var body: some View {
                searchBar(text: $text)
            List {
                ForEach (lineStore.saturday.filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineTwoStationView(line: line)
                    }
                }
            }
        .onAppear {
            lineStore.load()
        }
    }
}

struct LineTwoView_Previews: PreviewProvider {
    static var previews: some View {
        LineTwoView()
    }
}

struct LineTwoStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line2")
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
