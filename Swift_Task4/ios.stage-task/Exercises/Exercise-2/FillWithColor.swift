import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        
        let m = image.count
        let n = image[row].count
        var resulIimage = image
        let oldColor = image[row][column]
        var queue = [Element(row: row, column: column)]
        var issueElements = Array<Element>()
        
        if (row < 0 || row >= m || column < 0 || column >= n)
        {
            return image
        }
        
        while queue.count > 0
        {
            let element = queue.remove(at: 0)
            issueElements.append(element)
            
            if (image[element.row][element.column] == oldColor)
            {
                resulIimage[element.row][element.column] = newColor
            }
            else
            {
                continue
            }
            
            if (element.row - 1) >= 0
            {
                let element = Element(row: element.row - 1, column: element.column)
                if !issueElements.contains(element)
                {
                    queue.append(element)
                }
            }
            
            if (element.row + 1) < m
            {
                let element = Element(row: element.row + 1, column: element.column)
                if !issueElements.contains(element)
                {
                    queue.append(element)
                }
            }
            
            if (element.column - 1) >= 0
            {
                let element = Element(row: element.row, column: element.column - 1)
                if !issueElements.contains(element)
                {
                    queue.append(element)
                }
            }
            
            if (element.column + 1) < n
            {
                let element = Element(row: element.row, column: element.column + 1)
                if !issueElements.contains(element)
                {
                    queue.append(element)
                }
            }
        }
        return resulIimage
    }
}

struct Element: Equatable
{
    var row: Int
    var column: Int
}
