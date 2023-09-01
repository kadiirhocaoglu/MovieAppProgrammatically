//
//  ServiceConstant.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//
//https://api.themoviedb.org/3/discover/movie?api_key=0099f18a2d4cc7d729d02016511db3ec
import UIKit.UIViewController

extension Constant {
    enum ServiceEndPoint: String {
        case BASE_URL = "https://api.themoviedb.org/3/discover/movie?"
        case API_KEY =  "api_key=0099f18a2d4cc7d729d02016511db3ec"
        
        static func moviesServiceEndPoint() -> String {
            return "\(BASE_URL.rawValue)\(API_KEY.rawValue)"
        }
    }
}
