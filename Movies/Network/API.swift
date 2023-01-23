//
//  API.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation
import Moya

enum API {
    case moviesApi(url: String, request: [String: Any])
}

extension API: TargetType {
    
    var baseURL: URL {
        guard let url = URL(string: BASE_URL) else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .moviesApi(let url, _):
            return url
        default:
            break
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .moviesApi(_, let request):
            return .requestParameters(parameters: request, encoding: URLEncoding.default)
        default:
            break
        }
    }
    
    var headers: [String : String]? {
        var header = [String: String]()
        header["Content-Type"] = "application/json"
        header["X-HH-Language"] = "en-US"
        return header
    }
}
    
