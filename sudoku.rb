=begin

[1] STRING TO BOARD
Input: String
Actions: Array = string.split('').map do |el|
					if el == '-'
						0
					else 
						el.to_i
					ENDIF
					End map
		array.each_slice(9).to_a
Output: Board as matrix 

[5] SEARCH METHOD
Input: Cell index, board
Actions: Store as method variables
			-search row(board, index)
			-search column(board, index)
			-search box(board, index)
		Collection all elements that are present in all 3 arrays
Output: Array of elements in all 3 arrays

[6] PLACER METHOD
Input: Cell index, board
Actions: IF output from SEARCHING METHOD(board, cell index).length
		Add Array from searching method to value @ cell index on board
		END IF
Output: None

[2] SEARCH ROW
Input: Board cell index
Actions: Access cell's row
		Iterate thru integer (1..9).reject
		Values that row.include?(value)
Output: Array of vluaes not in row
		(1..9).rject { |num| row.include?(value) }

[3] SEARCH COLUMN
Input: Board cell index
Actions: SEATCH ROW(board.transpose, cell index)
Output: Array of values not in column

[4a] BOX TO ROW
Input: Board, box id(either box index or index of any cell in box)
Actions: Identify index limits of box
		Create 3 arrays of box elements
		Zip the 3 arrays and then use .flatten
Output: Horizontal array of all elements in box

[4b] SEARCH BOX
Input: Board cell index
Actions: Temporary row = BOX TO ROW(board, box id)
		(1..9).reject { |num| temporary row.include?(num) }
Output: Array of values not in box

[7] SUDOKU SOLVER
Input: Board string
Actions: Set varirable board = string to board(board string)
		While there are still 0's on the board, iterate thru, calling placer method on each cell
		Stop when: 
			if it iterates thru without changing a value
Output: Done

=end 

