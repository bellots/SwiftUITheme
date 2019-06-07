//
//  Constants.swift
//  SwiftUIStyle
//
//  Created by Andrea Bellotto on 07/06/2019.
//  Copyright © 2019 Bellots. All rights reserved.
//

import SwiftUI

enum Style{
    enum Button{
        enum Background{
            static let primary:Color = .black
            static let accent:Color = .blue
            static let error:Color = .red
        }
        enum Text{
            static let primary:Color = .white
            static let accent:Color = .white
            static let error:Color = .white
        }
        enum CornerRadius{
            static let none:Length = 0
            static let small:Length = 5
            static let big:Length = 20
        }
    }
    
}
