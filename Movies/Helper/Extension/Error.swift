//
//  Error.swift
//  Movies
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation

enum NetworkError: Error {
    case unauthorized
    case serviceNotAvailable
    case notConnectedToInternet
    case somethingWentWrong(String)

    static func mapError(statusCode: Int) -> NetworkError {
        switch statusCode {
        case 401:
            return .unauthorized
        case 501:
            return .serviceNotAvailable
        case -1009:
            return .notConnectedToInternet
        default:
            return .somethingWentWrong("Something went wrong. Please try again.")
        }
    }

    var errorDescription: String {
        switch self {
        case .unauthorized:
            return "Unauthorised response from the server"
        case .notConnectedToInternet:
            return "Not connected to Internet"
        case .serviceNotAvailable:
            return "Service is not available. Try later"
        case .somethingWentWrong(let errorMessage):
            return errorMessage
        }
    }
}
