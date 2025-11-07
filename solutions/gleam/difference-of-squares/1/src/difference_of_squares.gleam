import exercism/test_runner.{ debug }

pub fn square_of_sum(n: Int) -> Int {
  let s = sum(n)
  debug(square(s))
}

fn sum(n: Int) -> Int {
  sum_loop(n, 0)
}

fn sum_loop(n: Int, acc: Int) -> Int {
   case n {
    0 -> acc
    _ -> sum_loop(n-1, acc+n)
   }
}

fn square_sum_loop(n: Int, acc: Int) -> Int {
  case n {
    0 -> acc
    _ -> square_sum_loop(n-1, acc+square(n))
  }
}

fn square(x: Int) -> Int {
  x * x
}

pub fn sum_of_squares(n: Int) -> Int {
  debug(square_sum_loop(n, 0))
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
