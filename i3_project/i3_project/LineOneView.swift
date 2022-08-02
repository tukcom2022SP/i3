//
//  LineView.swift
//  i3_project
//
//  Created by Park Se in on 2022/07/31.
//


import SwiftUI

struct searchBar: View {
    @Binding var text : String
    @State var editText : Bool = false
    var body: some View {
        HStack{
            TextField("검색어를 넣어주세요" , text : self.$text)
                .padding(15)
                .padding(.horizontal,15)
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .overlay(
                    HStack{
                        Spacer()
                        if self.editText{
                              Button(action : {
                                self.editText = false
                                self.text = ""
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }){
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Color(.black))
                                    .padding()
                            }
                        }else{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(.black))
                                .padding()
                        }
                       
                    }
                ).onTapGesture {
                    self.editText = true
                }
        }
    }
}

struct LineOneView: View {
    let searchController = UISearchController(searchResultsController: nil)
    @State var text = ""
    @ObservedObject var lineStore = LineStoreOne.singleton
    var body: some View {
            searchBar(text: $text)
        List {
            ForEach (lineStore.saturday.filter{"\($0)".contains(self.text) || text == ""}, id:\.stationCount) { line in
                    NavigationLink (destination: LineDetailView(line:line)) {
                        LineOneStationView(line: line)
                    }
                }
            }
            .onAppear {
            lineStore.load()
            }
    }
}

struct LineOneView_Previews: PreviewProvider {
    static var previews: some View {
        LineOneView()
    }
}

struct LineOneStationView: View {
    static let imageSize = 60
    let line :Line
    var body: some View {
        HStack {
            Image("line1")
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


struct LineStationView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LineOneStationView(line: Line (
            stationCount: "1", date: "t", line: 2, stationNum: 1, stationName: "2@", fff: "222", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
            )
        }
    }
}

