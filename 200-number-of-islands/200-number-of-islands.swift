class Solution {
    func dfs(_ grid: inout [[Character]], _ visited: inout [[Bool]], _ x: Int, _ y: Int) {
        if x < 0 || y < 0 || x >= grid.count || y >= grid[0].count { return }

        if visited[x][y] == true || grid[x][y] == "0" { return }
        visited[x][y] = true
        dfs(&grid, &visited, x - 1, y)
        dfs(&grid, &visited, x + 1, y)
        dfs(&grid, &visited, x, y - 1)
        dfs(&grid, &visited, x, y + 1)
    }

    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: grid[0].count),
                                      count: grid.count)
        var result = 0
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[0].count {
                if grid[i][j] == "1" && visited[i][j] == false {
                    dfs(&grid, &visited, i, j)
                    result += 1
                }
            }
        }
        return result
    }
}