//
//  LineSevenView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//

import SwiftUI

struct LineSevenView: View {
    @ObservedObject var lineStore = LineStoreSeven.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach (lineStore.sunday, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineSevenStationView(line: line)
                    }
                }
            }
            .navigationTitle(Text("Line7"))
        }.onAppear {
            lineStore.load()
        }
    }
}

struct LineSevenView_Previews: PreviewProvider {
    static var previews: some View {
        LineSevenView()
    }
}

struct LineSevenStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line7")
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
