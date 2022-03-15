class Solution {
    let dx = [-1, 0, 1, 0]
    let dy = [0, 1, 0, -1]
    
    func check(_ grid: inout [[Int]], _ x: Int, _ y: Int) -> Int {
    var result = 0
    for i in 0 ..< 4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if nx >= grid.count || ny >= grid[0].count ||  nx < 0 || ny < 0 {
            result += 1
            continue
        }
        if grid[nx][ny] == 0 {
            result += 1
        }
    }
    return result
}

    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var result = 0
        var grid = grid
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[0].count {
                if grid[i][j] == 1 { // 육지면
                    result += check(&grid, i, j)
                }
            }
        }
        return result
    }
}
