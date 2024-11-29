//
//  ChatManagerApp.swift
//  ChatManager
//
//  Created by Emil Atanasov on 11/29/24.
//

import Foundation

import Foundation

struct Message {
    var role: String
    var text: String
    var date: Date
    var status: String
}

struct Chat {
    var title: String
    var messages: [Message]
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

extension Chat {
    static func getMockChats() -> [Chat] {
        let chat1Messages = [
            Message(role: "user", text: "Hello!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 0), status: "read"),
            Message(role: "assistant", text: "Hi there!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 1), status: "read"),
            Message(role: "user", text: "How are you?", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 2), status: "read"),
            Message(role: "assistant", text: "I'm great! How can I help you today?", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 3), status: "delivered"),
            Message(role: "user", text: "Tell me a joke.", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 4), status: "read"),
            Message(role: "assistant", text: "Why don't scientists trust atoms? Because they make up everything!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 5), status: "delivered"),
            Message(role: "user", text: "Haha, good one!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 6), status: "read"),
            Message(role: "assistant", text: "Glad you liked it!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 7), status: "read"),
            Message(role: "user", text: "That's all for now, thanks!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 8), status: "read"),
            Message(role: "assistant", text: "You're welcome!", date: Date.getDate(year: 2024, month: 11, day: 28, hour: 10, minute: 9), status: "read")
        ]
        
        let chat2Messages = [
            Message(role: "user", text: "Meeting update?", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 0), status: "delivered"),
            Message(role: "assistant", text: "The meeting is scheduled for 3 PM.", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 1), status: "read"),
            Message(role: "user", text: "Got it. Agenda?", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 2), status: "read"),
            Message(role: "assistant", text: "Project updates and next steps.", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 3), status: "read"),
            Message(role: "user", text: "Thanks!", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 4), status: "read"),
            Message(role: "assistant", text: "You're welcome!", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 5), status: "read"),
            Message(role: "user", text: "Can you send me the notes afterward?", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 6), status: "delivered"),
            Message(role: "assistant", text: "Absolutely. I'll prepare them.", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 7), status: "read"),
            Message(role: "user", text: "Perfect.", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 8), status: "read"),
            Message(role: "assistant", text: "See you at the meeting!", date: Date.getDate(year: 2024, month: 11, day: 27, hour: 14, minute: 9), status: "read")
        ]
        
        let chat3Messages = [
            Message(role: "user", text: "What's the weather like?", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 0), status: "read"),
            Message(role: "assistant", text: "It's sunny and 20°C.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 1), status: "read"),
            Message(role: "user", text: "Nice! Any chance of rain?", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 2), status: "read"),
            Message(role: "assistant", text: "No rain expected today.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 3), status: "delivered"),
            Message(role: "user", text: "Great! Thanks for the update.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 4), status: "read"),
            Message(role: "assistant", text: "You're welcome.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 5), status: "read"),
            Message(role: "user", text: "What about tomorrow?", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 6), status: "delivered"),
            Message(role: "assistant", text: "Tomorrow might be cloudy.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 7), status: "read"),
            Message(role: "user", text: "Thanks for letting me know!", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 8), status: "read"),
            Message(role: "assistant", text: "No problem.", date: Date.getDate(year: 2024, month: 11, day: 26, hour: 9, minute: 9), status: "read")
        ]
        
        let chat1 = Chat(title: "Chat 1: General Conversation", messages: chat1Messages)
        let chat2 = Chat(title: "Chat 2: Work Discussion", messages: chat2Messages)
        let chat3 = Chat(title: "Chat 3: Weather Updates", messages: chat3Messages)
        
        return [chat1, chat2, chat3]
    }
}
