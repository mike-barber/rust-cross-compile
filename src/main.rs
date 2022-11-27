fn main() {
    println!("Hello, world!");
}


#[cfg(test)]
mod tests {

    #[test]
    fn example_test() {
        let v = 1 + 2 + 3;
        assert_eq!(v, 6);
    }
}