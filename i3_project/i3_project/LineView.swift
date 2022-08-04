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
                HStack {
                    Image("line1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineOneView()){
                        Text("1호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineTwoView()){
                        Text("2호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineThreeView()){
                        Text("3호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineFourView()){
                        Text("4호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineFiveView()){
                        Text("5호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line6")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineSixView()){
                        Text("6호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineSevenView()){
                        Text("7호선")
                            .font(.title)
                    }
                }
                HStack {
                    Image("line8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.12,
                               height: UIScreen.main.bounds.height * 0.07)
                    NavigationLink(destination: LineEightView()){
                        Text("8호선")
                            .font(.title)
                    }
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
