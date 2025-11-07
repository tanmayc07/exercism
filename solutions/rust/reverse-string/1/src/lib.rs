pub fn reverse(input: &str) -> String {
    let mut res = String::from("");
    
    for i in input.chars() {
        res = i.to_string() + &res;
    }

    res
}
