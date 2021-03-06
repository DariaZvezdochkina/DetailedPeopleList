//
//  DecodingService.swift
//  DetailedPeopleList
//
//  Created by Daria Zvezdochkina on 31.01.2022.
//

import Foundation

final class DecodingService {
  private let decoder: JSONDecoder
  
    init(decoder: JSONDecoder = .init()) {
    self.decoder = decoder
  }
  
  func decode<T>(data: Data, of _: T.Type) throws -> T where T : Decodable {
    let decodedResponse = try JSONDecoder().decode(T.self, from: data)
    return decodedResponse
  }
}

