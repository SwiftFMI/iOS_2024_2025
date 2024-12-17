//
//  FirebaseAppTests.swift
//  FirebaseAppTests
//
//  Created by Emil Atanasov on 12/16/24.
//

import Testing
import Foundation
@testable import FirebaseApp

extension Tag {
  @Tag static var parsing: Self
}

struct FirebaseAppTests {
    @Test("Decode JSON that stores a valid ResponseType instance.", .tags(.parsing))
    func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        
        let input = """
        {
          "args": {},
          "headers": {
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
            "Accept-Encoding": "gzip, deflate, br, zstd",
            "Accept-Language": "en-GB,en-US;q=0.9,en;q=0.8",
            "Host": "httpbin.org",
            "Priority": "u=0, i",
            "Sec-Ch-Ua": "\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"",
            "Sec-Ch-Ua-Mobile": "?0",
            "Sec-Ch-Ua-Platform": "\"macOS\"",
            "Sec-Fetch-Dest": "document",
            "Sec-Fetch-Mode": "navigate",
            "Sec-Fetch-Site": "none",
            "Sec-Fetch-User": "?1",
            "Upgrade-Insecure-Requests": "1",
            "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36",
            "X-Amzn-Trace-Id": "Root=1-67605c2e-3e8079867585f49a03a35093"
          },
          "origin": "62.44.108.5",
          "url": "https://httpbin.org/get"
        }
        """
        
        let d = JSONDecoder()
        guard let data = input.data(using: .utf8) else {
            print("invalid data")
            return
        }
        do {
            let result = try d.decode(ResponseType.self, from: data)
            #expect(result.headers["Accept"]?.isEmpty == false)
        } catch {
            print(error)
        }
    }

}
