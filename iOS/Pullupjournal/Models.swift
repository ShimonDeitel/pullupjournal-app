import Foundation

struct PullupEntry: Identifiable, Codable, Equatable {
    let id: UUID
    var date: Date
    var reps: Int
    var grip: String
    var notes: String

    init(id: UUID = UUID(), date: Date = Date(), reps: Int = 0, grip: String = "", notes: String = "") {
        self.id = id
        self.date = date
        self.reps = reps
        self.grip = grip
        self.notes = notes
    }
}

struct AppSettings: Codable, Equatable {
    var remindersEnabled: Bool = true
    var metricUnits: Bool = false
    var includeInStreak: Bool = true
}
