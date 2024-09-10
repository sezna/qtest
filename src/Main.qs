// When Q# supports bounded polymorphism, we will be able to write things like:
// function Test<'T>(test_name: String, test_case: () -> 'T, expect: 'T) where 'T: Eq {
//     let result = test_case();
//     if result == expect {
//         Message($"Expected ${expect}, received: ${result}");
//     }
// }



function Test(test_cases: (String, (() -> Bool))[]) : Unit {
    for (name, test_case) in test_cases {
        if not test_case()  {
            Message($"Test ${name} failed.")
        }
    }
}

export Test;