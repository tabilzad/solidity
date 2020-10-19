contract C {
    function f() public pure {
        assembly {
            let x := 2
            if 42 { x := 3 }
        }
    }
}
