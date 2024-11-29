//
//  TodoManagerApp.swift
//  TodoManager
//
//  Created by Emil Atanasov on 11/29/24.
//

import Foundation

import Foundation

struct Task {
    
    var title = "Subject"
    var description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et tempor tortor. Nam dictum sit amet metus et condimentum. Integer malesuada lacus congue fermentum feugiat. Maecenas id libero eleifend, iaculis lectus in, iaculis orci. Duis elementum interdum mattis. Pellentesque commodo lobortis leo, mattis viverra metus suscipit sit amet. Ut mollis posuere nisi eget elementum."
    var startDate = Date()
    var finishDate: Date?
    var status = "new"
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


extension Task {
    static func getMockTasks(items: Int = 10) -> [Task] {
        return [
            Task(
                title: "Buy Groceries",
                description: "Purchase vegetables, fruits, and dairy products.",
                startDate: Date.getDate(year: 2024, month: 11, day: 29, hour: 9, minute: 0),
                finishDate: Date.getDate(year: 2024, month: 11, day: 29, hour: 11, minute: 0),
                status: "completed"
            ),
            Task(
                title: "Submit Assignment",
                description: "Finalize the SwiftUI project and submit it to the university portal.",
                startDate: Date.getDate(year: 2024, month: 11, day: 29, hour: 12, minute: 0),
                finishDate: nil,
                status: "in progress"
            ),
            Task(
                title: "Prepare Presentation",
                description: "Create slides for the upcoming client meeting.",
                startDate: Date.getDate(year: 2024, month: 11, day: 28, hour: 14, minute: 30),
                finishDate: nil,
                status: "new"
            ),
            Task(
                title: "Workout",
                description: "Complete a 1-hour session at the gym focusing on cardio and strength training.",
                startDate: Date.getDate(year: 2024, month: 11, day: 28, hour: 18, minute: 0),
                finishDate: nil,
                status: "new"
            ),
            Task(
                title: "Team Meeting",
                description: "Attend the weekly team meeting to discuss project updates.",
                startDate: Date.getDate(year: 2024, month: 11, day: 27, hour: 10, minute: 0),
                finishDate: Date.getDate(year: 2024, month: 11, day: 27, hour: 11, minute: 0),
                status: "completed"
            ),
            Task(
                title: "Doctor Appointment",
                description: "Routine check-up with Dr. Smith.",
                startDate: Date.getDate(year: 2024, month: 11, day: 30, hour: 16, minute: 0),
                finishDate: nil,
                status: "new"
            ),
            Task(
                title: "Read Book",
                description: "Complete reading 'Atomic Habits' by James Clear.",
                startDate: Date.getDate(year: 2024, month: 11, day: 29, hour: 20, minute: 0),
                finishDate: nil,
                status: "in progress"
            ),
            Task(
                title: "Clean House",
                description: "Vacuum and mop the floors, clean the kitchen, and organize the living room.",
                startDate: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 30),
                finishDate: Date.getDate(year: 2024, month: 11, day: 28, hour: 12, minute: 30),
                status: "completed"
            ),
            Task(
                title: "Plan Vacation",
                description: "Research destinations, book tickets, and create an itinerary for the family trip.",
                startDate: Date.getDate(year: 2024, month: 11, day: 27, hour: 15, minute: 0),
                finishDate: nil,
                status: "new"
            ),
            Task(
                title: "Learn SwiftUI",
                description: "Complete 3 chapters of the SwiftUI development guide.",
                startDate: Date.getDate(year: 2024, month: 11, day: 26, hour: 19, minute: 0),
                finishDate: nil,
                status: "in progress"
            )
        ]
    }
}
