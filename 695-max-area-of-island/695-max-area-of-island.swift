class Solution {
    func dfs(_ grid: inout [[Int]], _ visited: inout [[Bool]],_ result: inout Int, _ x: Int, _ y: Int) {
        if x < 0 || y < 0 || x >= grid.count || y >= grid[0].count { return }
        if visited[x][y] == true || grid[x][y] == 0 { return }
        visited[x][y] = true
        result += 1
        dfs(&grid, &visited, &result, x - 1, y)
        dfs(&grid, &visited, &result, x + 1, y)
        dfs(&grid, &visited, &result, x, y - 1)
        dfs(&grid, &visited, &result, x, y + 1)
    }

    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: grid[0].count),
                                      count: grid.count)

        var grid = grid
        var result = 0
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[0].count {
                if grid[i][j] == 1 && !visited[i][j] {
                    var temp = 0
                    dfs(&grid, &visited, &temp, i, j)
                    result = max(result, temp)
                }
            }
        }
        return result
    }
}