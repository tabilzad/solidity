contract C {
    function f() pure external {
        assembly {
            switch 42
            case 1 {}
            case 1 {}
            default {}
        }
    }
}
// ----
// DeclarationError 6792: (121-130): Duplicate case defined.
