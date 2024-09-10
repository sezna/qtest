A basic testing library for Q#.

```qsharp
function Tests() : Unit {
    TestMany(
        [
            ("Should return one", TestFunctionOne()),
            ("Should return two", TestFunctionTwo()),
        ]
    )
}
```