import gleam/list
import exercism/test_runner.{ debug }

pub fn new_list() -> List(String) {
  []
}

pub fn existing_list() -> List(String) {
  ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  [language, ..languages]
}

pub fn count_languages(languages: List(String)) -> Int {
  let cnt = 0
  len(languages, cnt)
}

fn len(languages: List(String), cnt: Int) -> Int {
  case languages {
    [_, ..rest] -> len(rest, cnt+1)
    [] -> cnt
  }
}

pub fn reverse_list(languages: List(String)) -> List(String) {
  reverse(languages, [])
}

fn reverse(languages: List(String), rev: List(String)) -> List(String) {
  case languages {
    [first, ..rest] -> reverse(rest, [first, ..rev])
    [] -> rev
  }
}

pub fn exciting_list(languages: List(String)) -> Bool {
  case languages {
    [first, ..rest] if first == "Gleam" -> True
    [_, second]
    | [_, second, _] if second == "Gleam" -> True
    _ -> False
  }
}
