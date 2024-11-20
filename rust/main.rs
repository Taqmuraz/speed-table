use std::env;
use std::time::{SystemTime, UNIX_EPOCH};

fn ms() -> u128 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .expect("Time went backwards")
        .as_millis()
}

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 3 {
        eprintln!("Usage: {} <a> <n>", args[0]);
        return;
    }
    let a: i64 = args[1].parse().expect("Invalid number");
    let n: i64 = args[2].parse().expect("Invalid number");
    let start = ms();

    let mut sum :i64 = 0;
    for i in a..n {
        sum |= i;
    }
    let end = ms();
    
    println!("sum = {}, time = {} ms", sum, end - start);
}
