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
                HStack {
                    Spacer()
                    Image("subway")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.15,
                           height: UIScreen.main.bounds.height * 0.1)

                    Text("서울시 지하철 혼잡도")
                        .font(.system(size: 25))
                    Spacer()
                }
                List {
                    HStack {
                        Image("line1")
                            .imageStyle()
                        NavigationLink(destination: LineOneView()){
                            Text("1호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x0052A4))
                        }
                    }
                    HStack {
                        Image("line2")
                            .imageStyle()
                        NavigationLink(destination: LineTwoView()){
                            Text("2호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x009D3E))
                        }
                    }
                    HStack {
                        Image("line3")
                            .imageStyle()
                        NavigationLink(destination: LineThreeView()){
                            Text("3호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0xEF7C1C))
                        }
                    }
                    HStack {
                        Image("line4")
                            .imageStyle()
                        NavigationLink(destination: LineFourView()){
                            Text("4호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x00A5DE))
                        }
                    }
                    HStack {
                        Image("line5")
                            .imageStyle()
                        NavigationLink(destination: LineFiveView()){
                            Text("5호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x996CAC))
                        }
                    }
                    HStack {
                        Image("line6")
                            .imageStyle()
                        NavigationLink(destination: LineSixView()){
                            Text("6호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0xCD7C2F))
                        }
                    }
                    HStack {
                        Image("line7")
                            .imageStyle()
                        NavigationLink(destination: LineSevenView()){
                            Text("7호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x747F00))
                        }
                    }
                    HStack {
                        Image("line8")
                            .imageStyle()
                        NavigationLink(destination: LineEightView()){
                            Text("8호선")
                                .font(.title)
                                .foregroundColor(Color(hex: 0xEA545D))
                                
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

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
