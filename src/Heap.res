module type Comparable = {
  type t
  type compValue = Less | Equal | More
  let compare: (t, t) => compValue
}
module MakeHeap = (Item: Comparable) => {
  let heap: array<Item.t> = []
  let size = 0
  let left = index => 2 * index
  let right = index => 2 * index + 1
  let parent = index => Js.Math.floor_float(index /. 2.0)
  let exchange = (i, j) => {
    let temp = heap[i]
    heap[i] = heap[j]
    heap[j] = temp
  }
  let add = item => {
    Js.Array2.push(heap, item)
  }

  let compare = (i, j) => {
    switch Item.compare(heap[i], heap[j]) {
    | Less => true
    | _ => false
    }
  }

  let sink = k => {
    while left(k) <= size {
      let i = left(k)
      let j = right(k)
      let final = if compare(i, j) {
        i
      } else {
        j
      }
    }
  }
}
