//
//  AuthView.swift
//  x
//
//  Created by 홍길동 on 2022/08/04.
//

import SwiftUI

struct AuthView: View {
    
    @State var email = ""
    @State var pw = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        VStack {
            TextField("Email", text: $email)
            SecureField("PW", text: $pw)
            
            HStack {
                Button {
                    viewModel.registerUser(email: email, password: pw)
                } label: {
                    Text("등록")
                }
                
                Button {
                    viewModel.login(email: email, password: pw)
                } label: {
                    Text("로그인")
                }
                
                Button {
                    viewModel.logout()
                } label: {
                    Text("로그아웃")
                }
            }
            
            Text(viewModel.currentUser?.uid ?? "비로그인")
                .padding()
        }
        .padding()
    }
}
