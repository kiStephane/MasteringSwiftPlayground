//: Playground - noun: a place where people can play

import UIKit

// Tutorial Source http://www.appcoda.com/mastering-swift/
// Swift enums

enum DownloadStatus{
    case downloading
    case finished
    case failed
    case cancelled
}

let currentStatus = DownloadStatus.finished

switch currentStatus {
case DownloadStatus.downloading:
    print("Downloading ...")
    
case DownloadStatus.finished:
    print("Just finished the download...")
    
case DownloadStatus.failed:
    print("Failed to download the file...")
    
case DownloadStatus.cancelled:
    print("The download is cancelled...")
}

// Assoiated values
enum Cloud {
    case cirrus
    case cumulus
    case altocumulus
    case stratus
    case cumulonimbus
}

enum WeatherCondition{
    case sunny(temperature : Float)
    case rainy(inchesPerHour : Float)
    case cloudy(cloudType: Cloud, windSpeed: Float)
}

let currentWeather = WeatherCondition.cloudy(cloudType: .cirrus, windSpeed: 4.2)

switch currentWeather {
case .sunny(let temperature):
    print("It is sunny and the temperature is \(temperature)")
case .rainy(let inchesPerHour):
    print("It is raining at a rate of \(inchesPerHour) inches per hour.")
    
case .cloudy(let cloudType, let windSpeed):
    print("It is cloudy; there are \(cloudType) clouds in the sky, and the wind speed is \(windSpeed).")
}

//--------------------------

// Closures and Higher Order Functions



