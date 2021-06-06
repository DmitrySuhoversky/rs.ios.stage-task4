import Foundation

public extension Int
{
    
    var roman: String?
    {
        if (self < 1 || self > 3999)
        {
        return nil
        }
        
        var integerValue = self
        var romanString = ""
           
        let convertingList: [(Int, String)] = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")]
    
        for i in convertingList
        {
            while (integerValue >= i.0)
            {
                integerValue -= i.0
                romanString += i.1
            }
        }
        return romanString
    }
}
