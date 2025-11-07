import gleam/string
import gleam/list
import exercism/test_runner.{ debug }

pub fn hey(remark: String) -> String {
  debug(string.uppercase(remark)==remark)

  case string.trim(remark) {
    "" -> "Fine. Be that way!"
    "" <> rest -> {
      case has_letters(rest) && string.uppercase(rest) == rest {
        True -> case has_question_mark(rest) {
          True -> "Calm down, I know what I'm doing!"
          False -> "Whoa, chill out!"
        }
        False -> case has_question_mark(rest) {
          True -> "Sure."
          False -> "Whatever."
        }
      }
    }
    _ -> "Whatever."
  }
}

fn has_question_mark(str: String) -> Bool {
  let last = str
  |> string.to_graphemes
  |> list.last
  
  case last {
    Ok(v) if v == "?" -> True
    _ -> False
  }
}

fn has_letters(str: String) -> Bool {
  str
  |> string.to_graphemes
  |> list.any(fn (g) {
    string.uppercase(g) != string.lowercase(g)
  })
}