//
//  ContentView.swift
//  i3_project
//
//  Created by 홍길동 on 2022/07/27.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: LineOneView()){
                    Text("1호선")
                }
                NavigationLink(destination: LineTwoView()){
                    Text("2호선")
                }
                NavigationLink(destination:LineThreeView()){
                    Text("3호선")
                }
                NavigationLink(destination: LineFourView()){
                    Text("4호선")
                }
                NavigationLink(destination: LineFiveView()){
                    Text("5호선")
                }
                NavigationLink(destination: LineSixView()){
                    Text("6호선")
                }
                NavigationLink(destination: LineSevenView()){
                    Text("7호선")
                }
                NavigationLink(destination: LineEightView()){
                    Text("8호선")
                }
            }
            .navigationTitle(Text("Select Line"))
            
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
