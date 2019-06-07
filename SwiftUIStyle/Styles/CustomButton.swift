//
//  CustomButton.swift
//  SwiftUIStyle
//
//  Created by Andrea Bellotto on 07/06/2019.
//  Copyright © 2019 Bellots. All rights reserved.
//

import SwiftUI

struct CustomButton : View {
    
    enum SubButton:String, CaseIterable{
        case primary
        case bigRoundedPrimary
        case accent
        case smallRoundedAccent
        case error
        case errorSmallRoundedAccent
        
        
        var background:Color{
            if self.rawValue.lowercased().contains("accent"){
                return Style.Button.Background.accent
            }
            if self.rawValue.lowercased().contains("error"){
                return Style.Button.Background.error
            }
            
            return Style.Button.Background.primary
        }
        
        var text:Color{
            if self.rawValue.contains("accent"){
                return Style.Button.Text.accent
            }
            if self.rawValue.contains("error"){
                return Style.Button.Text.error
            }
            
            return Style.Button.Text.primary
        }
        
        var radius:Length{
            if self.rawValue.lowercased().contains("smallrounded") {
                return Style.Button.CornerRadius.small
            }
            if self.rawValue.lowercased().contains("bigrounded") {
                return Style.Button.CornerRadius.big
            }
            return Style.Button.CornerRadius.none
        }
    }
    
    @State var text:String = ""
    @State var style:SubButton = .primary
    @State var action:() -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .color(style.text)
                .padding(10)
        })
            .background(style.background)
            .cornerRadius(style.radius)
    }
}

#if DEBUG
struct CustomButton_Previews : PreviewProvider {
    static var previews: some View {
        CustomButton(action: {
            
        })
    }
}
#endif
