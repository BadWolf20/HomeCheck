import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    guard let maxHeight = height.max() else {
        return 0
    }
    
    let result = height.reduce(maxHeight) { max($0, $1) }
    return result - k > 0 ? result - k : 0
}
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

guard let n = Int(firstMultipleInput[0])
else { fatalError("Bad input") }

guard let k = Int(firstMultipleInput[1])
else { fatalError("Bad input") }

guard let heightTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let height: [Int] = heightTemp.split(separator: " ").map {
    if let heightItem = Int($0) {
        return heightItem
    } else { fatalError("Bad input") }
}

guard height.count == n else { fatalError("Bad input") }

let result = hurdleRace(k: k, height: height)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
