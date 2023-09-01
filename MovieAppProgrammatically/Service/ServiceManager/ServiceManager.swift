//
//  ServiceManager.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//

import Alamofire
//MARK: - Service Manager
final class ServiceManager {
    static let shared: ServiceManager = ServiceManager()
}
extension ServiceManager {
    func fetch<T>(path: String, onSuccess: @escaping(T) -> (), onError: (AFError) -> ()) where T: Codable{
        AF.request(path,encoding: JSONEncoding.default).validate().responseDecodable(of: T.self) { response in
            guard let model = response.value else {print(response.error as Any); return }
            onSuccess(model)
        }
    }
}
