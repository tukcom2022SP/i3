//
//  LineEightView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//

import SwiftUI

struct LineEightView: View {
    @ObservedObject var lineStore = LineStoreEight.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach (lineStore.saturday, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineEightStationView(line: line)
                    }
                }
            }
            .navigationTitle(Text("Line8"))
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
                Text("\(line.fff)")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
    }
}
