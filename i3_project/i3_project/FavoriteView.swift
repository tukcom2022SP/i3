//
//  FavoriteView.swift
//  Subway Boom
//
//  Created by Park Se in on 2022/11/14.
//

import SwiftUI

struct FavoriteView: View {
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

                    Text("즐겨찾기")
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
                    HStack{
                        NavigationLink(destination: LineView()){
                            Text("전체보기")
                                .font(.title)
                                .foregroundColor(Color(hex: 0x000000))
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

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
