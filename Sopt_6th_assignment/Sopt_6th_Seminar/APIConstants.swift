//
//  APIConstants.swift
//  Sopt_6th_Seminar
//
//  Created by JUEUN KIM on 2020/11/21.
//

import Foundation

struct APIContants {
    static let baseURL = "http://15.164.83.210:3000"
    // 로그인 url
    static let usersSignInURL = baseURL + "/users/signin"
    // 회원가입 url
    static let usersSignUpURL = baseURL + "/users/signup"
}
