type rec list<'a> = Node('a, list<'a>) | Empty

let rec length = head => {
  switch head {
  | Empty => 0
  | Node(_, rest) => 1 + length(rest)
  }
}

let head = Node(1, Node(2, Node(3, Empty)))

Js.log(length(head))