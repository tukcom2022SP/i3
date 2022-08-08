//
//  ContentView.swift
//  i3_project
//
//  Created by 홍길동 on 2022/07/27.
//

import SwiftUI

struct LineView: View {
    @State var isNavigationBarHidden: Bool = true
    var body: some View {
        NavigationView {
            VStack{
                Text("서울시 지하철 혼잡도")
                    .font(.title)
                    .padding()
                    .aspectRatio(contentMode: .fill)
                List {
                    HStack {
                        Image("line1")
                            .imageStyle()
                        NavigationLink(destination: LineOneView()){
                            Text("1호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line2")
                            .imageStyle()
                        NavigationLink(destination: LineTwoView()){
                            Text("2호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line3")
                            .imageStyle()
                        NavigationLink(destination: LineThreeView()){
                            Text("3호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line4")
                            .imageStyle()
                        NavigationLink(destination: LineFourView()){
                            Text("4호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line5")
                            .imageStyle()
                        NavigationLink(destination: LineFiveView()){
                            Text("5호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line6")
                            .imageStyle()
                        NavigationLink(destination: LineSixView()){
                            Text("6호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line7")
                            .imageStyle()
                        NavigationLink(destination: LineSevenView()){
                            Text("7호선")
                                .font(.title)
                        }
                    }
                    HStack {
                        Image("line8")
                            .imageStyle()
                        NavigationLink(destination: LineEightView()){
                            Text("8호선")
                                .font(.title)
                        }
                    }
                }
                .listStyle(InsetListStyle())
                .navigationTitle(Text("Back"))
                .navigationBarHidden(self.isNavigationBarHidden)
                .onAppear{
                    self.isNavigationBarHidden = true
                }
                
                
            }

            }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}

extension Image {
    
    func imageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.12,
                   height: UIScreen.main.bounds.height * 0.07)
        
    }
}
