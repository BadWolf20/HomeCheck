import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map { value in
        let diffGrade = value % 5
        return value >= 38 && (5 - diffGrade) < 3 ? value + (5 - diffGrade) : value
    }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let gradesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var grades = [Int]()

for _ in 1...gradesCount {
    guard let gradesItem = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    grades.append(gradesItem)
}

guard grades.count == gradesCount else { fatalError("Bad input") }

let result = gradingStudents(grades: grades)

fileHandle.write(result.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
