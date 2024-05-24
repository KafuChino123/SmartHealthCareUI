//
//  LogInView.swift
//  BasicFramework
//
//  Created by 马硕 on 2024/5/21.
//

import SwiftUI

struct LogInView: View {
    @State var userName: String
    @State private var phoneNumber = ""
    @State private var password = ""
    
    @State private var showPassword = false
    @State private var rememberMe = false
    @State private var agreePolicy = false
    
    var body: some View {
        VStack(spacing: nil) {
            Spacer()
            Spacer()
            Spacer()
            
            Text("账号密码登录")
                .font(.largeTitle)
            
            Text("请使用已注册的账号密码")
                .font(.callout)
                .foregroundStyle(.secondary)
            
            Spacer()
            Spacer()
            
            VStack(spacing: 15) {
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 25))
                    
                    HStack(spacing: nil) {
                        Image(systemName: "iphone.gen3")
                            .renderingMode(.original)
                            .font(.title2)
                            .padding(.leading)
                        
                        Text("+86")
                            .foregroundStyle(.opacity(0.5))
                        
                        TextField("请输入手机号", text: $phoneNumber)
                    }
                }
                
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 25))
                    
                    HStack(spacing: nil) {
                        Image(systemName: "lock")
                            .font(.title2)
                            .padding(.leading)
                        
                        if showPassword {
                            TextField("请输入6-12位密码", text: $password)
                                .textInputAutocapitalization(.never)
                                .autocorrectionDisabled()
                                .frame(height: 40) // 设置相同的高度
                        } else {
                            SecureField("请输入6-12位密码", text: $password)
                                .textInputAutocapitalization(.never)
                                .autocorrectionDisabled()
                                .frame(height: 40) // 设置相同的高度
                        }
                        
                        Button {
                            showPassword.toggle()
                        } label: {
                            Image(systemName: showPassword ? "eye" : "eye.slash")
                                .foregroundStyle(.gray)
                        }
                        .padding(.trailing)
                    }
                }
            }
            
            HStack(spacing: 4) {
                Button {
                    rememberMe.toggle()
                    if rememberMe {
                        //TODO: 记住用户密码
                    } else {
                        //TODO: 不记住用户密码
                    }
                } label: {
                    Image(systemName: rememberMe ? "checkmark.circle" : "circle")
                        .font(.title2)
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.black)
                
                Text("记住密码")
                
                Spacer()
                
                Button {
                    //TODO: 忘记密码操作
                } label: {
                    Text("忘记密码?")
                }
            }
            .padding(.vertical)
            
            HStack(spacing: 4) {
                Button {
                    agreePolicy.toggle()
                    if agreePolicy {
                        //TODO: 同意用户协议
                    } else {
                        //TODO: 不同意用户协议
                    }
                } label: {
                    Image(systemName: agreePolicy ? "checkmark.circle" : "circle")
                        .font(.title2)
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.black)
                
                HStack(spacing: 0) {
                    Text("同意")
                    Button {} label: {
                        Text("《XXX平台服务协议》")
                    }
                    Text("和")
                    Button {} label: {
                        Text("《隐私政策》")
                    }
                }
                .font(.footnote)
                
                Spacer()
            }
            
            Button {
                //TODO: 登录操作
            } label: {
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 52)
                        .foregroundStyle(.green)
                        .clipShape(.rect(cornerRadius: 25))
                    
                    Text("登 录")
                        .foregroundStyle(.white)
                }
            }
            
            Spacer()
            
            Button {
                //TODO: 使用验证码登录/注册
            } label: {
                Text("使用验证码登录/注册")
                    .font(.callout)
                    .foregroundStyle(CustomColor.logInViaSMSColor ?? .green)
            }
            
            
            Text("其他登录方式")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .padding(.top)
            
            Spacer()
            
            HStack {
                Spacer()
                Spacer()
                Spacer()
                
                Button {} label: {
                    Image(.qq)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 40)
                }
                
                Spacer()
                
                Button {} label: {
                    Image(.weixin)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 40)
                }
                
                Spacer()
                
                Button {} label: {
                    Image(.apple)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 40)
                }
                
                Spacer()
                Spacer()
                Spacer()
            }
            
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            CustomColor.logInColor
                .ignoresSafeArea()
        )
    }
}

#Preview {
    LogInView(userName: "用户")
}
