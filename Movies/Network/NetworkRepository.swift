//
//  NetworkRepository.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation
import Moya
import RxSwift

protocol NetworkRepository {
    var provider: MoyaProvider<API> { get }
    func request<T: Decodable>(target: API) -> Observable<T>
}
