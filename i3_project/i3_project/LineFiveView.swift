//
//  LineFiveView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//

import SwiftUI

struct LineFiveView: View {
    @ObservedObject var lineStore = LineStoreFive.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach (lineStore.weekday, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineFiveStationView(line: line)
                    }
                }
            }
            .navigationTitle(Text("Line5"))
        }.onAppear {
            lineStore.load()
        }
    }
}

struct LineFiveView_Previews: PreviewProvider {
    static var previews: some View {
        LineFiveView()
    }
}

struct LineFiveStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line5")
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
