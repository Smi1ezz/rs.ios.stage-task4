import Foundation

public extension Int {
    
    var roman: String? {
        
        guard 0 < self && self < 4000 else {
            return nil
        }
        
        var roman = [String?]()
        
        let selfToString = String(self)
        
//        guard selfToString.count <= 4 else {return nil}
        
        for (index, value) in selfToString.reversed().enumerated() {
            switch index {
            case 0:
                switch value {
                case "1": roman.append("I")
                case "2": roman.append("II")
                case "3": roman.append("III")
                case "4": roman.append("IV")
                case "5": roman.append("V")
                case "6": roman.append("VI")
                case "7": roman.append("VII")
                case "8": roman.append("VIII")
                case "9": roman.append("IX")
                default:
                    roman.append("")
                }
            case 1:
                switch value {
                case "1": roman.append("X")
                case "2": roman.append("XX")
                case "3": roman.append("XXX")
                case "4": roman.append("XL")
                case "5": roman.append("L")
                case "6": roman.append("LX")
                case "7": roman.append("LXX")
                case "8": roman.append("LXXX")
                case "9": roman.append("XC")
                default:
                    roman.append("")
                }
            case 2:
                switch value {
                case "1": roman.append("C")
                case "2": roman.append("CC")
                case "3": roman.append("CCC")
                case "4": roman.append("CD")
                case "5": roman.append("D")
                case "6": roman.append("DC")
                case "7": roman.append("DCC")
                case "8": roman.append("DCCC")
                case "9": roman.append("CM")
                default:
                    roman.append("")
                }
            case 3:
                switch value {
                case "1": roman.append("M")
                case "2": roman.append("MM")
                case "3": roman.append("MMM")
                default:
                    roman.append("")
                }
            default:
                roman.append(nil)
            }
        }
     
        var result: String {
            var k = ""

            for i in roman.reversed() {
                if let iSafe = i {
                    k += iSafe
                }
                
            }
            return k
        }
        
        guard !result.isEmpty else { return nil }
        return result
    }
}

