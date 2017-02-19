//
//  ProtobufRequest.swift
//  Client
//
//  Created by Yusuke Kita on 12/18/16.
//  Copyright © 2016 Yusuke Kita. All rights reserved.
//

import Foundation
import APIKit
import SwiftProtobuf

protocol ProtobufRequest: Request {}

extension ProtobufRequest {
    var baseURL: URL {
        return URL(string: "http://localhost:8090")!
    }
    
    var dataParser: DataParser {
        return ProtobufDataParser()
    }
}

struct Talks: ProtobufRequest {
    typealias Response = TalkResponse
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/v1/talks"
    }
}

struct Like: ProtobufRequest {
    typealias Response = LikeResponse
    
    var method: HTTPMethod {
        return .post
    }
    
    var path: String {
        return "/v1/like"
    }
    
    var bodyParameters: BodyParameters? {
        let data = LikeRequest.with {
            $0.id = self.id
        }
        
        return ProtobufBodyParameters(protobufObject: try! data.serializeProtobuf())
    }
    
    private let id: Int32
    
    init(id: Int32) {
        self.id = id
    }
}

enum APIError: Error {
    case networkError(NetworkError)
}

extension ProtobufRequest where Response: SwiftProtobuf.Message {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        
        return try Response(protobuf: data)
    }
    
    func intercept(object: Any, urlResponse: HTTPURLResponse) throws -> Any {
        guard 200..<300 ~= urlResponse.statusCode else {
            guard let data = object as? Data else {
                throw ResponseError.unacceptableStatusCode(urlResponse.statusCode)
            }
            
            let error = try NetworkError(protobuf: data)
            throw APIError.networkError(error)
        }
        return object
    }
}
