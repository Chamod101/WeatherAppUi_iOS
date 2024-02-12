//
//  WeatherButton.swift
//  TestUI1
//
//  Created by Chamod Dilushanka on 2024-02-11.
//

import SwiftUI

struct ButtonDataView : View {
    
    var title : String
    var backgroundColor : Color
    var forgroundColor : Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height:50)
            .background(backgroundColor)
            .foregroundColor(forgroundColor)
            .font(.system(size:20,weight: .bold))
            .cornerRadius(10)
            .padding(.top,30)
    }
}
