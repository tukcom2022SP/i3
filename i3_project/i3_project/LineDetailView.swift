import SwiftUI

//func getListOfDay(inputLine:Line)-> {
//    let line = inputLine
//    let day = getDayOfWeek(date: Date())
//    var formatter = DateFormatter()
//    formatter.dateFormat = "HHmm"
//
//    switch day {
//    case "토" :
//
//    case "일" :
//
//    default:
//
//    }
//}
struct LineDetailView: View {
    let line:Line
    let day = getDayOfWeek(date: Date())
    
    var body: some View {
        List {
            HStack {
                Image(systemName:"tram.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
//                Image("subway_icon")
//                    .resizable()
//                    .frame(width: 80, height: 80)
                VStack{
                    HStack {
                        Text(line.stationName)
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("\(line.date)")
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack {
                        Text("\(line.line)호선")
                            .font(.title2)
                        .frame(alignment: .leading)
                        Text("|")
                            .font(.title)
                            .bold()
                            .frame(alignment: .leading)
                        Text("\(line.fff)")
                            .font(.title3)
                            .frame(alignment: .leading)
                        Text("AFC(\(line.stationNum))")
                            .frame(maxWidth: .infinity, alignment: .trailing)
//                        Text("day\(line.date)")
                    }
                }
            }
            HStack{
                Text("13:30 기준")
                    .font(.title3)
                Text("여유")
                    .font(.title3)
                    .foregroundColor(Color.green)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Text("보통")
                    .font(.title3)
                    .foregroundColor(Color.yellow)
                    .frame(alignment: .trailing)
                Text("혼잡")
                    .font(.title3)
                    .foregroundColor(Color.red)
                    .frame(alignment: .trailing)
            }
            // 예시
            HStack{
                Text("월")
                Text("13:30 기준")
                    .font(.title3)
                Text("여유")
                    .font(.title3)
                    .foregroundColor(Color.green)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Text("보통")
                    .font(.title3)
                    .foregroundColor(Color.yellow)
                    .frame(alignment: .trailing)
                Text("혼잡")
                    .font(.title3)
                    .foregroundColor(Color.red)
                    .frame(alignment: .trailing)
            }
        }
        .navigationTitle(line.stationName)
    }
}

struct LineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LineDetailView(line: Line (
        stationCount: "1", date: "평일", line: 1, stationNum: 150, stationName: "서울역", fff: "상행", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
        )
    }
}
