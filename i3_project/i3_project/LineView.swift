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
                NavigationLink("Line1"){
                    LineOneView()
                }
                NavigationLink("Line2"){
                    LineTwoView()
                }
                NavigationLink("Line3"){
                    LineThreeView()
                }
                NavigationLink("Line4"){
                    LineFourView()
                }
                NavigationLink("Line5"){
                    LineFiveView()
                }
                NavigationLink("Line6"){
                    LineSixView()
                }
                NavigationLink("Line7"){
                    LineSevenView()
                }
                NavigationLink("Line8"){
                    LineEightView()
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
