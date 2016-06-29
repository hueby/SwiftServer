//
//  main.swift
//  SwiftServer
//
//  Created by Dennis on 29.06.16.
//  Copyright © 2016 Dennis Hübner. All rights reserved.
//

import Foundation
import Commander

func modString(input: String) -> String {
    let main = command {
	print("Hello World")	
    }
    
    main.run()
    return input.uppercased()
}


print(greeting(greet: modString(input: "Dennis")))

testSocket()
