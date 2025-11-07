pub fn reply(guess: Int) -> String {
  case guess {
    41 | 43 -> "So close"
    42 -> "Correct"
    i if i <= 40 -> "Too low"
    i if i >= 44 -> "Too high"
    _ -> "Try again"
  }
}
