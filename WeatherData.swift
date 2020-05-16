//
//  WeatherData.swift
//  Clima
//
//  Created by Mehmet Deniz Cengiz on 5/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let visibility: Int
    let sys: Sys
    
}
struct Sys: Codable {
    let country: String
}


struct Main: Codable {
    let temp: Double
}
struct Weather: Codable {
    let description: String
    let id: Int
}
