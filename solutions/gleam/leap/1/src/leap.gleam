pub fn is_leap_year(year: Int) -> Bool {
  case year % 4 {
    0 if year % 100 == 0 -> is_divisible_by_400(year)
    0 if year % 100 != 0 -> True
    _ -> False
  }
}

fn is_divisible_by_400(year: Int) -> Bool {
  year % 400 == 0
}
