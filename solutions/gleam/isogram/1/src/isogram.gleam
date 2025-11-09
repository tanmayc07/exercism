import gleam/string
import gleam/list.{Continue, Stop}
import exercism/test_runner.{ debug }

pub fn is_isogram(phrase phrase: String) -> Bool {
  let result =
    phrase
    |> string.to_graphemes
    |> list.fold_until([], fn(acc, g) {
      case {g != " " && g != "-"} && { list.contains(acc, string.uppercase(g)) || list.contains(acc, string.lowercase(g)) } {
        True -> Stop([])                
        False -> Continue([g, ..acc])
      }
    })

  let unique_count = result |> list.length
  let total_count = phrase |> string.to_graphemes |> list.length

  unique_count == total_count
}

