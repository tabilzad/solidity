pragma experimental ABIEncoderV2;

contract C {
    struct S { int a; uint b; bytes16 c; }
    function f(S memory s) public pure returns (S memory q) {
        q = s;
    }
}
// ====
// compileViaYul: also
// ----
// f((int256,uint256,bytes16)): 0xff010, 0xff0002, "abcd" -> 0xff010, 0xff0002, "abcd"
// f((int256,uint256,bytes16)): 0xff010, 0xff0002, 0x000000 -> 0xff010, 0xff0002, 0
// f((int256,uint256,bytes16)): 0xff010, 0xff0002, 0x000000 -> 0x0ff010, 0xff0002, 0
