import gleam/list
import gleam/int

pub fn square_of_sum(n: Int) -> Int {
  let sum = 0
  |> list.range(n)
  |> int.sum()

  sum*sum
}

pub fn sum_of_squares(n: Int) -> Int {
  0
  |> list.range(n)
  |> list.map(fn(x) {x*x})
  |> int.sum()
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
