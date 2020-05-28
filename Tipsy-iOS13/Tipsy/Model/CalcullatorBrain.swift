import UIKit

struct CalcullatorBrain {
    var cost: Float = 0
    var procent: Float = 0
    var split: Float = 2.0
    
    func getEndValue() -> Float {
        return ((cost * (procent / 100)) + cost) / split
    }
    func getSplitValue() -> String {
        return String(Int(split))
    }
    func getProcent() -> String {
        return String(Int(procent))
    }
    
}
