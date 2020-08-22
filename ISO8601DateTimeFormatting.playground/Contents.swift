import UIKit

// Playground for testing the outcome of the displayed date given a stored ISO8601 date

var storedZuluDate = "2020-08-19T22:00:00Z" // Z(ulu) time or UTC+0

let iso8601Formatter = ISO8601DateFormatter()
let isoFormattedZuluDate = iso8601Formatter.date(from: storedZuluDate)

print(isoFormattedZuluDate ?? "date could not be parsed according to ISO8601 standard")

// Display the parsed date for a given Locale (Dutch (Belgium))
let formatter = DateFormatter()
formatter.locale = Locale(identifier: "nl-BE")
formatter.dateFormat = "dd LLLL yyyy HH:mm"

print(formatter.string(from: isoFormattedZuluDate!))

// 2020-08-19 22:00:00 +0000
// 20 augustus 2020 00:00

var storedDate = "2020-08-19T22:00:00+02:00"

let isoFormattedDate = iso8601Formatter.date(from: storedDate)

print(isoFormattedDate ?? "date could not be parsed according to ISO8601 standard")

print(formatter.string(from: isoFormattedDate!))

// 2020-08-19 20:00:00 +0000
// 19 augustus 2020 22:00
