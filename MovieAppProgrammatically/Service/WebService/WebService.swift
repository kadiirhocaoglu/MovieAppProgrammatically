//
//  WebService.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//

import Alamofire
protocol ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (AFError) -> ())
}

final class Service: ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (Alamofire.AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServiceEndPoint.moviesServiceEndPoint()) { responseMovies in
            onSuccess(responseMovies)
        } onError: { error in
            onError(error)
        }

    }
    
    
}

