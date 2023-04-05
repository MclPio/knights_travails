# Knight's Travails

This Ruby program finds the shortest path a knight can take on a chess board from one square to another, using breadth-first search and a tree data structure.
Usage

To use this program, first instantiate a Knight object:

arduino

knight = Knight.new

Then, call the knight_moves method on the object with the starting and ending coordinates as arguments:

knight.knight_moves([0, 0], [2, 7])

This will print out the shortest path the knight can take to get from the starting to the ending square.
Code

The code for this program is contained in two classes: Node and Knight.
Node

The Node class represents a node in a tree data structure. It has three attributes: data (which stores the coordinates of the square on the chess board that the node represents), children (which stores an array of Node objects representing the possible moves from the current square), and parent (which stores a reference to the parent Node object).

The Node class also has a method called get_parents which returns an array of the coordinates of all the parent nodes of the current node (starting with the parent and going up to the root).
Knight

The Knight class represents a chess knight. It has one attribute: current_coordinate, which stores the current position of the knight on the chess board (as an array of coordinates).

The Knight class has three methods:

    possible_moves takes an optional argument coordinates (which defaults to the current position of the knight) and returns an array of all the possible squares the knight could move to from the given coordinates.

    construct_tree takes a data argument (representing the coordinates of a square on the chess board) and an optional parent argument (representing the parent Node object), and returns a new Node object representing the given square.

    knight_moves takes a root argument (representing the starting square) and a destination argument (representing the ending square), and finds the shortest path the knight can take to get from the starting to the ending square using breadth-first search and the Node and construct_tree methods.
