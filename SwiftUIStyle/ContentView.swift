//
//  ContentView.swift
//  SwiftUIStyle
//
//  Created by Andrea Bellotto on 07/06/2019.
//  Copyright © 2019 Bellots. All rights reserved.
//

import SwiftUI


struct ContentView : View {
    @State var backgroundColor:Color = .green
    @State var name: String = "Tim"
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            VStack{
                CustomButton(text: CustomButton.SubButton.accent.rawValue, style: .accent) {}
                CustomButton(text: CustomButton.SubButton.primary.rawValue, style: .primary) {}
                CustomButton(text: CustomButton.SubButton.bigRoundedPrimary.rawValue, style: .bigRoundedPrimary) {}
                CustomButton(text: CustomButton.SubButton.smallRoundedAccent.rawValue, style: .smallRoundedAccent){}
                CustomButton(text: CustomButton.SubButton.error.rawValue, style: .error){}
                CustomButton(text: CustomButton.SubButton.errorSmallRoundedAccent.rawValue, style: .errorSmallRoundedAccent){}
                }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
        })
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

