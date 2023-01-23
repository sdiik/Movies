//
//  NetworkRepositoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation
import Moya
import RxSwift

class NetworkRepositoryImpl: NetworkRepository {
    var provider = MoyaProvider<API>(plugins: [NetworkLoggerPlugin()])
    
    func request<T: Decodable>(target: API) -> Observable<T> {
        return Observable<T>.create { observer in
            self.provider.rx.request(target).subscribe { event in
                switch event {
                case .success(let response):
                    do {
                        let result = try JSONDecoder().decode(T.self, from: response.data)
                        observer.onNext(result)
                    } catch {
                        observer.onError(NetworkError.somethingWentWrong("Error Mapping Data"))
                    }
                case .error(let error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
        }
    }
}
