//
//  getDayOfWeek.swift
//  x
//
//  Created by 장지수 on 2022/08/08.
//

import Foundation

func getDayOfWeek(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEEEE"
        formatter.locale = Locale(identifier:"ko_KR")
        let convertStr = formatter.string(from: date)
        return convertStr
}
func getListOfDayForOne(inputLineStore:LineStoreOne)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}
func getListOfDayForTwo(inputLineStore:LineStoreTwo)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}

func getListOfDayForThree(inputLineStore:LineStoreThree)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}
func getListOfDayForFour(inputLineStore:LineStoreFour)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}
func getListOfDayForFive(inputLineStore:LineStoreFive)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}

func getListOfDayForSix(inputLineStore:LineStoreSix)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}

func getListOfDayForSeven(inputLineStore:LineStoreSeven)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}

func getListOfDayForEight(inputLineStore:LineStoreEight)-> [Line]{
    let lineStore = inputLineStore
    let day = getDayOfWeek(date: Date())
    switch day {
    case "토":
        return lineStore.saturday
    case "일":
        return lineStore.sunday
    default:
        return lineStore.weekday
    }
}
