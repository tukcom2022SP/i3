import SwiftUI

//func getTime(inputLine:Line)-> {
//    let line = inputLine
//    var formatter = DateFormatter()
//    formatter.dateFormat = "HHmm"
//    var current_time = formatter.string(from: Date())
//
//}
func getState(data:String)-> Text{
    var state : Text
    guard let count = Float(data) else {
        return Text("정보없음")
                .font(.title3)
                .foregroundColor(Color.black)}
    if count <= 34.0 {state = Text("여유").foregroundColor(Color.green)}
    else if count <= 68.0 {state = Text("보통").foregroundColor(Color.yellow)}
    else{state = Text("혼잡").foregroundColor(Color.red)}
    return state
        .font(.title3)
}

struct LineDetailView: View {
    let line:Line
    let day = getDayOfWeek(date: Date())
    let time = Int(getDayOfTime(date: Date()))
    @State private var toggle1 = false
    @State private var toggle2 = false
    var body: some View {
        List {
            HStack {
                Image(systemName:"tram.circle.fill")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(width : UIScreen.main.bounds.width * 0.2 , height: UIScreen.main.bounds.height * 0.1)
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
                        Text("\(line.way)")
                            .font(.title3)
                            .frame(alignment: .leading)
                        Text("AFC(\(line.stationNum))")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            }
            // 예시 화면
            HStack{
                Text("기준 시간")
                    .font(.title2)
                    .bold()
                Text("혼잡도")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            HStack {
                Toggle(isOn: $toggle1, label: {
                    Text("현재 시간 정보")
                        .font(.title2)
                        .bold()
                })
            }
            if toggle1 {
                switch time {
                case 5 :
                    HStack{
                    Text("05:30")
                        .font(.title3)
                    getState(data: line.fiveThirty)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 6 :
                    HStack{
                        Text("06:00")
                            .font(.title3)
                        getState(data: line.six)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("06:30")
                            .font(.title3)
                        getState(data: line.sixThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 7 :
                    HStack{
                        Text("07:00")
                            .font(.title3)
                        getState(data: line.seven)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("07:30")
                            .font(.title3)
                        getState(data: line.sevenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 8 :
                    HStack{
                    Text("08:00")
                        .font(.title3)
                    getState(data: line.eight)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("08:30")
                            .font(.title3)
                        getState(data: line.eightThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 9 :
                    HStack{
                        Text("09:00")
                            .font(.title3)
                        getState(data: line.nine)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("09:30")
                            .font(.title3)
                        getState(data: line.nineThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 10 :
                    HStack{
                        Text("10:00")
                            .font(.title3)
                        getState(data: line.ten)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("10:30")
                            .font(.title3)
                        getState(data: line.tenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                
                case 11:
                    HStack{
                        Text("11:00")
                            .font(.title3)
                        getState(data: line.eleven)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("11:30")
                            .font(.title3)
                        getState(data: line.elevenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 12:
                    HStack{
                        Text("12:00")
                            .font(.title3)
                        getState(data: line.twelve)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("12:30")
                            .font(.title3)
                        getState(data: line.twelveThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 13:
                    HStack{
                        Text("13:00")
                            .font(.title3)
                        getState(data: line.onePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("13:30")
                            .font(.title3)
                        getState(data: line.onePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 14:
                    HStack{
                        Text("14:00")
                            .font(.title3)
                        getState(data: line.twoPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("14:30")
                            .font(.title3)
                        getState(data: line.twoPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 15:
                    HStack{
                        Text("15:00")
                            .font(.title3)
                        getState(data: line.threePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("15:30")
                            .font(.title3)
                        getState(data: line.threePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 16:
                    HStack{
                        Text("16:00")
                            .font(.title3)
                        getState(data: line.fourPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("16:30")
                            .font(.title3)
                        getState(data: line.fourPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 17:
                    HStack{
                        Text("17:00")
                            .font(.title3)
                        getState(data: line.fivePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("17:30")
                            .font(.title3)
                        getState(data: line.fivePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 18:
                    HStack{
                        Text("18:00")
                            .font(.title3)
                        getState(data: line.sixPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("18:30")
                            .font(.title3)
                        getState(data: line.sixPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 19:
                    HStack{
                        Text("19:00")
                            .font(.title3)
                        getState(data: line.sevenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("19:30")
                            .font(.title3)
                        getState(data: line.sevenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 20:
                    HStack{
                        Text("20:00")
                            .font(.title3)
                        getState(data: line.eightPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("20:30")
                            .font(.title3)
                        getState(data: line.eightPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 21:
                    HStack{
                        Text("21:00")
                            .font(.title3)
                        getState(data: line.ninePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("21:30")
                            .font(.title3)
                        getState(data: line.ninePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 22:
                    HStack{
                        Text("22:00")
                            .font(.title3)
                        getState(data: line.tenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("22:30")
                            .font(.title3)
                        getState(data: line.tenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                case 23:
                    HStack{
                        Text("23:00")
                            .font(.title3)
                        getState(data: line.elevenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("23:30")
                            .font(.title3)
                        getState(data: line.elevenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                default :
                    HStack{
                        Text("시간 정보 없음")
                            .font(.title3)
                    }

                }
            }
            
            HStack {
                Toggle(isOn: $toggle2, label: {
                    Text("전체 시간 정보")
                        .font(.title2)
                        .bold()
                })
            }
            
            if toggle2 {
                Group{
                    HStack{
                        Text("05:30")
                            .font(.title3)
                        getState(data: line.fiveThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("06:00")
                            .font(.title3)
                        getState(data: line.six)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("06:30")
                            .font(.title3)
                        getState(data: line.sixThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("07:00")
                            .font(.title3)
                        getState(data: line.seven)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("07:30")
                            .font(.title3)
                        getState(data: line.sevenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("08:00")
                            .font(.title3)
                        getState(data: line.eight)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("08:30")
                            .font(.title3)
                        getState(data: line.eightThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("09:00")
                            .font(.title3)
                        getState(data: line.nine)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("09:30")
                            .font(.title3)
                        getState(data: line.nineThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("10:00")
                            .font(.title3)
                        getState(data: line.ten)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                Group{
                    HStack{
                        Text("10:30")
                            .font(.title3)
                        getState(data: line.tenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("11:00")
                            .font(.title3)
                        getState(data: line.eleven)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("11:30")
                            .font(.title3)
                        getState(data: line.elevenThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("12:00")
                            .font(.title3)
                        getState(data: line.twelve)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("12:30")
                            .font(.title3)
                        getState(data: line.twelveThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("13:00")
                            .font(.title3)
                        getState(data: line.onePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("13:30")
                            .font(.title3)
                        getState(data: line.onePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("14:00")
                            .font(.title3)
                        getState(data: line.twoPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("14:30")
                            .font(.title3)
                        getState(data: line.twoPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("15:00")
                            .font(.title3)
                        getState(data: line.threePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                Group{
                    HStack{
                        Text("15:30")
                            .font(.title3)
                        getState(data: line.threePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("16:00")
                            .font(.title3)
                        getState(data: line.fourPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("16:30")
                            .font(.title3)
                        getState(data: line.fourPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("17:00")
                            .font(.title3)
                        getState(data: line.fivePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("17:30")
                            .font(.title3)
                        getState(data: line.fivePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("18:00")
                            .font(.title3)
                        getState(data: line.sixPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("18:30")
                            .font(.title3)
                        getState(data: line.sixPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("19:00")
                            .font(.title3)
                        getState(data: line.sevenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("19:30")
                            .font(.title3)
                        getState(data: line.sevenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("20:00")
                            .font(.title3)
                        getState(data: line.eightPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                Group{
                    HStack{
                        Text("20:30")
                            .font(.title3)
                        getState(data: line.eightPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("21:00")
                            .font(.title3)
                        getState(data: line.ninePM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("21:30")
                            .font(.title3)
                        getState(data: line.ninePMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("22:00")
                            .font(.title3)
                        getState(data: line.tenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("22:30")
                            .font(.title3)
                        getState(data: line.tenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("23:00")
                            .font(.title3)
                        getState(data: line.elevenPM)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    HStack{
                        Text("23:30")
                            .font(.title3)
                        getState(data: line.elevenPMThirty)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            }
        }
        .navigationTitle(line.stationName)
    }
}

struct LineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LineDetailView(line: Line (
        stationCount: "1", date: "weekday", line: 1, stationNum: 150, stationName: "서울역", way: "상행", fiveThirty: "1", six: "1", sixThirty: "1", seven: "1", sevenThirty: "1", eight: "1", eightThirty: "1", nine: "1", nineThirty: "1", ten: "1", tenThirty: "1", eleven: "1", elevenThirty: "1", twelve: "1", twelveThirty: "1", onePM: "1", onePMThirty: "1", twoPM: "1", twoPMThirty: "1", threePM: "1", threePMThirty: "1", fourPM: "1", fourPMThirty: "1", fivePM: "1", fivePMThirty: "1", sixPM: "1", sixPMThirty: "1", sevenPM: "1", sevenPMThirty: "1", eightPM: "1", eightPMThirty: "1", ninePM: "1", ninePMThirty: "1", tenPM: "1", tenPMThirty: "1", elevenPM: "1", elevenPMThirty: "1")
        )
    }
}
