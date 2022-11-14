//
//  SignUpView.swift
//  Subway Boom
//
//  Created by Taemin Kim on 2022/11/14.
//


import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var showingAlert = false
    @State var uiTabarController: UITabBarController?
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rePassword: String = ""
    @State private var username: String = ""
    
    var btnBack : some View { Button(action: {
        self.showingAlert = true
    }){
        Text("뒤로가기")
    }.alert(isPresented: $showingAlert){
        Alert(title: Text("회원 가입 취소"), message: Text("회원가입을 취소하시겠습니까?"),
              primaryButton: .destructive(Text("취소하기"), action: {
            presentationMode.wrappedValue.dismiss()
        })
              , secondaryButton: .cancel(Text("이어하기")))
    }
        
    }
    
    var body: some View {
        VStack{
            Text("회원 가입")
                .font(.title)
                .fontWeight(.medium)
                .padding()
                .foregroundColor(.black)
                .frame(width: 300)
            
            HStack{
                Image(systemName: "tag")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                
                TextField("닉네임을 입력하세요", text: $username)
                    .frame(width: 300, height: 10)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    
            }
            HStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                
                TextField("이메일을 입력하세요.", text: $email)
                    .frame(width: 300, height: 10)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    
            }
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                    
                SecureField("비밀번호를 입력하세요", text: $password)
                    .frame(width: 300, height: 10)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
            HStack{
                Image(systemName: "lock.rotation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.bottom)
                    
                SecureField("비밀번호를 다시 입력하세요", text: $rePassword)
                    .frame(width: 300, height: 10)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
            
            Button(action: {
                print(self.email + self.password + self.rePassword + self.username)
                
           //     sendPostRequest("<http://localhost:8000/auth/signup>", parameters:
              //                  ["email": self.email, "username": self.username, "password": self.password]
                                // ){
                 //   responseObject, error in guard let _ = responseObject, error == nil else {
               //         print(error ?? "Unknown error")
               //         return
              //      }
             //   }
              //  self.presentationMode.wrappedValue.dismiss()
            }){
                Text("회원가입")
                    .frame(width: 80, height: 10)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    
            }
            .padding()
            .onSubmit {
                
            }
        }
        .padding(.all, 30)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

