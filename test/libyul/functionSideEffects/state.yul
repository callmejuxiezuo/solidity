{
    function a() { pop(call(100, 0x010, 10, 0x00, 32, 0x0100, 32))}
    function f() { a() }
    function g() { sstore(0, 1) }
    function h() { pop(balance(10) }
}
// ----
// : movable, sideEffectFree, sideEffectFreeIfNoMSize
// a: writes other state, writes storage, writes memory
// f: writes other state, writes storage, writes memory
// g: writes storage
// h: sideEffectFree, sideEffectFreeIfNoMSize, reads other state
