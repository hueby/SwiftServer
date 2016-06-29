//
//  Greetings.swift
//  SwiftServer
//
//  Created by Dennis on 29.06.16.
//  Copyright © 2016 Dennis Hübner. All rights reserved.
//

import Foundation
import SocksCore

func testSocket() {
    
    do {
        let socket = try TCPInternetSocket(address: InternetAddress(hostname: "google.com", port: 80))
        try socket.connect()
    
        try socket.send(data: "GET /\r\n\r\n".toBytes())
        let received = try socket.recv()
        let str = try received.toString()
    
        print(str)
    
        try socket.close()
    } catch {
        print(error)
    }
}

func greeting(greet: String) -> String {
    return String(format: "Hello, %@! Nice to meet you.", greet)
}
