//
//  main.swift
//  SwiftServer
//
//  Created by Dennis on 29.06.16.
//  Copyright © 2016 Dennis Hübner. All rights reserved.
//

import Foundation

func modString(input: String) -> String {
    return input.uppercased()
}


print(greeting(greet: modString(input: "Dennis")))

testSocket()
