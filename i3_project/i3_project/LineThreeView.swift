//
//  LineThreeView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//

import SwiftUI

struct LineThreeView: View {
    @ObservedObject var lineStore = LineStoreThree.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach (lineStore.sunday, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineThreeStationView(line: line)
                    }
                }
            }
            .navigationTitle(Text("Line3"))
        }.onAppear {
            lineStore.load()
        }
    }
     
}

struct LineThreeView_Previews: PreviewProvider {
    static var previews: some View {
        LineThreeView()
    }
}

struct LineThreeStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line3")
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
