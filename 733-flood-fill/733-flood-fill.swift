class Solution {
    func dfs(_ image: inout [[Int]], _ x: Int, _ y: Int, _ color: Int, _ newColor: Int) {
        guard x >= 0 && y >= 0 else { return }
        guard x < image.count && y < image[0].count else { return }
        guard image[x][y] == color else { return }

        image[x][y] = newColor
        dfs(&image, x - 1, y, color, newColor)
        dfs(&image, x + 1, y, color, newColor)
        dfs(&image, x, y - 1, color, newColor)
        dfs(&image, x, y + 1, color, newColor)
    }

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let targetColor = image[sr][sc]
        guard targetColor != newColor else { return image}
        var image = image
        dfs(&image, sr, sc, targetColor, newColor)
        return image
    }
}