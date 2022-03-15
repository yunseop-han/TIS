class Solution {
    func DFS(_ board: inout [[Character]], _ x: Int, _ y: Int) -> Bool {
        if x < 0 || y < 0 || x >= board.count || y >= board[0].count { return false }
        if board[x][y] != "O" { return true }
        
        board[x][y] = "X"
        
        for (dx, dy) in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
            let nx = x + dx, ny = y + dy
            if !DFS(&board, nx, ny) { return false }
        }
        return true
    }

    func solve(_ board: inout [[Character]]) {
        for i in stride(from: 0, through: board.count - 1, by: 1) {
            for j in stride(from: 0, through: board[0].count - 1, by: 1) {
                if board[i][j] == "O" {
                    var captureBoard = board
                    if DFS(&captureBoard, i, j) { board = captureBoard }
                }
            }
        }
    }
}
