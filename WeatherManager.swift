//
//  WeatherManager.swift
//  Clima
//
//  Created by Mehmet Deniz Cengiz on 5/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherMAnager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=e2840414adae9d576729fd680edf417f&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
            print(decodedData.sys.country)
        }catch{
            print(error)
        }
    }
    
    
}
