//
//  Functions.swift
//  CSwift
//
//  Created by Steve Baker on 1/13/19.
//  Copyright © 2019 Beepscore LLC. All rights reserved.
//

import Foundation

// https://gist.github.com/HiImJulien/c79f07a8a619431b88ea33cca51de787
@_cdecl("say_hello")
public func say_hello(){
    print("Hello, World!")
}
