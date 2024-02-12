//
//  ContentView.swift
//  TestUI1
//
//  Created by Chamod Dilushanka on 2024-02-10.
//

import SwiftUI

struct Homeview: View {
    
    @State private var isNight = false
    
    var body: some View {
        
        ZStack{
           BackgroundView(isNight: isNight)
            
            VStack(spacing:8){
                
                CityNameView(cityName: "Colombo, Sri Lanka")
                
                MainWeatherIconView(imgName: isNight ? "moon.stars.fill" : "cloud.sun.fill" ,
                                    temprature: 70)
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imgName: "cloud.sun.fill",
                                   temprature: 60)
                    
                    WeatherDayView(dayOfWeek: "WED", 
                                   imgName: "sun.max.fill",
                                   temprature: 73)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imgName: "wind.snow",
                                   temprature: 45)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imgName: "sunset.fill",
                                   temprature: 56)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imgName: "snow",
                                   temprature: 10)
                }
                
                
                
                Button{
                    isNight.toggle()
                } label:{
                    ButtonDataView(title: isNight ? "Light Mode" : "Dark Mode",
                                   backgroundColor: isNight ? .white : .black,
                                   forgroundColor: isNight ? .black : .white)
                }
            }
        }
        
        .padding()
    }
}

#Preview {
    Homeview()
}

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imgName : String
    var temprature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45,height: 45)
            Text("\(temprature)")
                .font(.system(size:28,weight:.medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
     var isNight : Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, Color.gray]), startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityNameView: View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherIconView : View {
    
    var imgName : String
    var temprature : Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temprature)C")
                .font(.system(size:70,weight:.medium))
                .foregroundColor(.white)
        }.padding(.bottom,50)
    }
}



