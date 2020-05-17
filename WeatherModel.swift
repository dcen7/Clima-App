//
//  WeatherModel.swift
//  Clima
//
//  Created by Mehmet Deniz Cengiz on 5/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 500...531:
            return "cloud.rain"
        case 500...531:
            return "cloud.rain"
        case 500...531:
            return "cloud.rain"
        case 500...531:
            return "cloud.rain"
        default:
            return "cloud"
        }
    }
    var temperatureString: String {
        return String(format: "%.1f", temperature) 
    }
    
}
