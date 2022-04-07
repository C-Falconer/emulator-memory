; Length
LoadDirect r0, 101
; Index
LoadImmediate r1, 0
; Current Item
LoadImmediate r2, 0
; Scalar
LoadDirect r3, 100
; Offset
LoadImmediate r4, 102

; Check
BranchOnEqual r0, r1, 13

; Finagle Memory Addresses
LoadIndirect r2, r4
Add r2, r3
StoreIndirect r4, r2
AddImmediate r4, r4, 1
AddImmediate r1, r1, 1
BranchOnEqual r0, r1, 13
Jump 6

Halt 