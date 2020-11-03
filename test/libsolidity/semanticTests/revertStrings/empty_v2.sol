pragma abicoder v2;
contract C {
	function f() public {
		revert(""); 
	}
}
// ====
// EVMVersion: >=byzantium
// compileViaYul: also
// revertStrings: debug
// ----
// f() -> FAILURE, hex"08c379a0", 0x20, 0
