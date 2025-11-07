import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> rest | "[WARNING]:" <> rest | "[INFO]:" <> rest -> rest |> string.trim
    _ -> string.trim(log_line)
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]" <> rest -> "error"
    "[WARNING]" <> rest -> "warning"
    "[INFO]" <> rest -> "info"
    _ -> ""
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> rest -> rest |> string.trim |> string.append(" (error)")
    "[WARNING]:" <> rest -> rest |> string.trim |> string.append(" (warning)")
    "[INFO]:" <> rest -> rest |> string.trim |> string.append(" (info)")
    _ -> ""
  }
}
