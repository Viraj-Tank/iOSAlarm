
import Foundation
import SwiftUI

struct AlarmModel: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let body: String
    let repeats: Bool
    var sound: Sounds
    var alarmEnabled: Bool
    
    var start: Date
    var end: Date
    
    var activity: String
    var colorIndex: Int
    var activityColor: Color {
        mainColors[colorIndex]
    }
    
    var timeInterval: TimeInterval {
        end - start
    }
    var startTime: TimeModel {
        DateToTimeModel(date: start)
    }
    var endTime: TimeModel {
        DateToTimeModel(date: end)
    }
    
    static func DefaultAlarm() -> AlarmModel {
        AlarmModel(
            title: "Activity Completed",
            body: "Have a great day!",
            repeats: false,
            sound: Sounds.lagrima,
            alarmEnabled: true,
            start: Date(),
            end: Date(),
            activity: activities[0],
            colorIndex: 0
        )
    }
    
    static func DummyAlarmData() -> [AlarmModel] {
        [
            AlarmModel(
                title: "Activity Completed",
                body: "Have a great day!",
                repeats: false,
                sound: Sounds.lagrima,
                alarmEnabled: false,
                start: Date(),
                end: addHourToDate(date: Date(), numHours: 3, numMinutes: 15),
                activity: "moon.zzz.fill",
                colorIndex: 0
            ),
            AlarmModel(
                title: "Yo Yo",
                body: "Peace",
                repeats: true,
                sound: Sounds.wake_up,
                alarmEnabled: true,
                start: Date(),
                end: addHourToDate(date: Date(), numHours: 2, numMinutes: 15),
                activity: activities[2],
                colorIndex: 2
            )
        ].sorted(by: {
                $0.endTime < $1.endTime
            })
    }
    
}
