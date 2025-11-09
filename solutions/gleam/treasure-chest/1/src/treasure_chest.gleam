// Please define the TreasureChest generic custom type
pub type TreasureChest(t) {
  TreasureChest(pass: String, treasure: t)
}

// Please define the UnlockResult generic custom type
pub type UnlockResult(password) {
  Unlocked(password)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest.pass == password {
    True -> Unlocked(chest.treasure)
    False -> WrongPassword
  }
}
