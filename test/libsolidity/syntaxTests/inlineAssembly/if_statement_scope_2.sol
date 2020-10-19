contract C {
    function f() public pure {
        assembly {
            if 32 { let x := 3 }
            x := 2
        }
    }
}
// ----
// DeclarationError 4634: (108-109): Variable not found or variable not lvalue.
