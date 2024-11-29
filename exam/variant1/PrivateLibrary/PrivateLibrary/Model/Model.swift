//
//  PrivateLibraryApp.swift
//  PrivateLibrary
//
//  Created by Emil Atanasov on 11/29/24.
//

import Foundation

import Foundation

struct Book {
    var author = "Sender"
    var title = "Subject"
    var summary = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et tempor tortor. Nam dictum sit amet metus et condimentum. Integer malesuada lacus congue fermentum feugiat. Maecenas id libero eleifend, iaculis lectus in, iaculis orci. Duis elementum interdum mattis. Pellentesque commodo lobortis leo, mattis viverra metus suscipit sit amet. Ut mollis posuere nisi eget elementum."
    var notes = ""
    var startDate = Date()
    var finishDate: Date?
    var status = "reading"
}

extension Date {
    
    static func getDate(year: Int, month:Int, day:Int, hour:Int, minute:Int) -> Date {
    var dateComponents = DateComponents()
    dateComponents.year = year
    dateComponents.month = month
    dateComponents.day = day
    //dateComponents.timeZone = TimeZone(abbreviation: "UTC")
    dateComponents.hour = hour
    dateComponents.minute = minute
    
    let userCalendar = Calendar.current // user calendar
    return userCalendar.date(from: dateComponents)!
    }
    
}

func randomItem<T>(from:[T]) -> T {
    let index = Int(arc4random_uniform(UInt32(from.count)))
    return from[index]
}


extension Book {
    static func getMockBooks(items: Int = 10) -> [Book] {
        let authors = [
            "Георги Господинов",
            "Иван Вазов",
            "Йордан Йовков",
            "Елин Пелин",
            "Христо Ботев",
            "Пейо Яворов",
            "Димитър Димов",
            "Алеко Константинов",
            "Дора Габе",
            "Ангел Каралийчев"
        ]
        
        let titles = [
            "Физика на тъгата",
            "Под игото",
            "Старопланински легенди",
            "Гераците",
            "Стихотворения",
            "Заточеници",
            "Тютюн",
            "Бай Ганьо",
            "Почивка в Аркона",
            "Майчина сълза"
        ]
        
        let summaries = [
            "Една вълнуваща книга за спомените и тъгата.",
            "Класически роман за живота по време на Освобождението.",
            "Сборник с легенди, вдъхновени от българските традиции.",
            "История за упадъка на патриархалното семейство.",
            "Стихове, които описват свободата и любовта към родината.",
            "Разказ за изгнанието и копнежа по дома.",
            "Драматична история за страсти и борби в тютюневата индустрия.",
            "Сатиричен поглед към българския национален характер.",
            "Емоционално стихотворение за детството и носталгията.",
            "Сборник с разкази за детството и природата."
        ]
        
        let statuses = ["чета", "завършена", "на пауза", "прекъсната", "планирам да чета"]
        
        var books: [Book] = []
        
        for i in 0..<items {
            let book = Book(
                author: randomItem(from: authors),
                title: randomItem(from: titles),
                summary: randomItem(from: summaries),
                notes: "Това са бележки за книга \(i + 1).",
                startDate: Date.getDate(year: 2024, month: 11, day: 29, hour: 12, minute: 0),
                finishDate: Bool.random() ? Date.getDate(year: 2024, month: 11, day: 30, hour: 12, minute: 0) : nil,
                status: randomItem(from: statuses)
            )
            books.append(book)
        }
        
        return books
    }
}
