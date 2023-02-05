
import Foundation

// use identifiable when we're going through a list because we need something unique everytime
// maybe same as keys in flutter

struct TimeModel: Equatable, Comparable, Identifiable {
    
    let id = UUID()
    let hours: Int
    let minutes: Int
    
    // if given time model is less other time model
    // if 2 hours < 5 hours then its true / if 2:05 < 2:10 then it also compares minute
    static func < (lhs: TimeModel, rhs: TimeModel) -> Bool {
        if (lhs.hours < rhs.hours) {
            return true
        } else if (lhs.hours == rhs.hours && lhs.minutes < rhs.minutes) {
            return true
        } else {
            return false
        }
    }
}
