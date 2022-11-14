//
//  LoginView.swift
//  Subway Boom
//
//  Created by 장지수 on 2022/11/14.
//

import SwiftUI

struct LoginView: View {
    @State var email:String = "";
    @State var passwd:String = "";
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
                
                HStack {
                    Image(systemName: "envelope")
                        .frame(width: 20)
                    TextField("ID", text: $email)
                        .frame(width: 300 ,height: 20)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
                HStack {
                    Image(systemName: "lock")
                        .frame(width: 20)
                    TextField("PW",text: $passwd)
                        .frame(width: 300 ,height: 20)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
                HStack{
                    NavigationLink(destination: SignUpView()) {
                            Text("회원가입")
                                .frame(width: 100,height: 10)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                        }
                    NavigationLink(destination: LineView()) {
                            Text("로그인")
                                .frame(width: 100,height: 10)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                        }
                    }
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle(Text("Back"))
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}



