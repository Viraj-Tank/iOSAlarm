
import SwiftUI

func dateToPercent(date: Date) -> CGFloat {
    let result = getTimeComponents(date: date)
    return CGFloat(result.hour) / 24 + CGFloat(result.minute) / (60 * 24)
}

// returning tuple from this function
func getTimeComponents(date: Date) -> (hour: Int, minute: Int, day: Int, month: Int, year: Int) {
    let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: date)
    
    // components.hour are optional here (that is why we are using ? here)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    let day = components.day ?? 0
    let month = components.month ?? 0
    let year = components.year ?? 0
    
    return (hour: hour, minute: minute, day: day, month: month, year: year)
}

func getTimeFromDate(date: Date) -> String {
    let result = getTimeComponents(date: date)
    let hour = result.hour
    let min = result.minute
    
    // because we're using integer we can use it like below %02d
    let time = String(format: "%02d:%02d", hour, min)
    return time
}

func addHourToDate(date: Date, numHours:Int, numMinutes: Int) -> Date {
    //here time interval is in seconds thats why we get seconds from minutes and hour
    date.addingTimeInterval(TimeInterval(numMinutes * 60 + numHours * 60 * 60))
}


//extension of Date that enables us to subtract dates
extension Date {
    // minus extension function
    static func - (lhs: Date, rhs: Date) -> TimeInterval {
        return lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
    }
}

func formatDate(date: Date) -> String {
    let result = getTimeComponents(date: date)
    
    // "05-02-2023(10:00)"
    return "\(result.day)-\(result.month)-\(result.year)(\(result.hour):\(result.minute))"
}

func DateToTimeModel(date: Date) -> TimeModel {
    let result = getTimeComponents(date: date)
    return TimeModel(hours: result.hour, minutes: result.minute)
}
