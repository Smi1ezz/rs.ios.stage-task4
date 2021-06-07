import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        if row <= image.count - 1 && row >= 0 && (column <= image[row].count - 1 && column >= 0) && (image.count >= 1) && image[row].count <= 50 && (image[row][column] >= 0) && newColor < 65536 {
            
            var inoutImage = image
            let oldColour = image[row][column]
            
            guard oldColour != newColor else {
                return image
            }
            
            self.fillToRecursion(&inoutImage, row, column, oldColour, newColor)

            return inoutImage
        } else {
            return image
        }
    }
    
    func fillToRecursion (_ image: inout [[Int]], _ row: Int, _ column: Int, _ oldColour: Int, _ newColor: Int) -> [[Int]] {
        
        if row <= image.count - 1 && row >= 0 && (column <= image[row].count - 1 && column >= 0) && (image.count >= 1) && image[row].count <= 50 && (image[row][column] >= 0) && newColor < 65536 && image[row][column] == oldColour {
            
            image[row][column] = newColor
            self.fillToRecursion(&image, row+1, column, oldColour, newColor)
            self.fillToRecursion(&image, row-1, column, oldColour, newColor)
            self.fillToRecursion(&image, row, column+1, oldColour, newColor)
            self.fillToRecursion(&image, row, column-1, oldColour, newColor)
            return image
            
        } else {
            return image
        }
    }
}
/*
 
 **Input: image = [[1, 1, 1],
                   [1, 1, 0],
                   [1, 0, 1]], row = 1, column = 1, newColor = 2**
 **Output: [[2, 2, 2],
            [2, 2, 0],
            [2, 0, 1]]**
 
## Constraints

**`m == image.length`**
**`n == image[i].length`**
**`1 <= m, n <= 50`**
**`0 <= image[i][j], newColor < 65536`**
**`0 <= row <= m`**
**`0 <= column <= n`**

*/

