type rec tree<'a> = Leaf('a) | Node('a, tree<'a>, tree<'a>) | Nil

let rec height = root => {
  switch root {
  | Nil => 0
  | Leaf(_) => 0
  | Node(_, left, right) => 1 + Js.Math.max_int(height(left), height(right))
  }
}

let root = Node(1, Node(2, Leaf(1), Nil), Leaf(3))

Js.log(height(root))