// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as Caml_array from "rescript/lib/es6/caml_array.js";

function MakeHeap(Item) {
  var heap = [];
  var left = function (index) {
    return (index << 1);
  };
  var right = function (index) {
    return (index << 1) + 1 | 0;
  };
  var parent = function (index) {
    return Math.floor(index / 2.0);
  };
  var exchange = function (i, j) {
    var temp = Caml_array.get(heap, i);
    Caml_array.set(heap, i, Caml_array.get(heap, j));
    Caml_array.set(heap, j, temp);
  };
  var add = function (item) {
    return heap.push(item);
  };
  var compare = function (i, j) {
    var match = Curry._2(Item.compare, Caml_array.get(heap, i), Caml_array.get(heap, j));
    return match === 0;
  };
  var sink = function (k) {
    while((k << 1) <= 0) {
      var i = (k << 1);
      var j = right(k);
      compare(i, j);
    };
  };
  return {
          heap: heap,
          size: 0,
          left: left,
          right: right,
          parent: parent,
          exchange: exchange,
          add: add,
          compare: compare,
          sink: sink
        };
}

export {
  MakeHeap ,
}
/* No side effect */
