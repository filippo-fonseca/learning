# Section 1: Hello World

## Intro

- Traditional "Hello World" program in Rust:

```rs
fn main() {
    // Statements here are executed when the compiled binary is called

    // Print text to the console
    println!("Hello World!");
}
```

## 1.1 Comments

In Rust, there are two main different types of comments:

### Regular comments

Ignored by the compiler.

```rs
// Line comments go to the end of the line.
/* Block comments reach the closing delimiter.
```

### Doc comments

Parsed into HTML library documentation.

```rs
/// Generate library docs for the following item.
//! Generate library docs for the enclosing item.
```
