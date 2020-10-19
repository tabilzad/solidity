contract C {
    function f() pure external {
        assembly {
            switch mstore(1, 1)
            case 1 {}
            default {}
        }
    }
}
// ----
// TypeError 3950: (84-96): Expected expression to evaluate to one value, but got 0 values instead.
