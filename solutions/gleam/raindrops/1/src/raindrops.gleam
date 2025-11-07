import gleam/string
import gleam/int
import exercism/test_runner.{ debug }

pub fn convert(number: Int) -> String {
  let res = ""

  let res = case number % 3 {
    0 -> string.append(res, "Pling")
    _ -> string.append(res, "")
  }

  let res = case number % 5 {
    0 -> string.append(res, "Plang")
    _ -> string.append(res, "")
  }

  let res = case number % 7 {
    0 -> string.append(res, "Plong")
    _ -> string.append(res, "")
  }

  case res == "" {
    True -> int.to_string(number)
    False -> res
  }
}
