
f:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$12,%15
@f_body:
		MOV 	$0,-4(%14)
		MOV 	$3,-8(%14)
		MOV 	$6,-12(%14)
@if0:
		CMPS 	-4(%14),-8(%14)
		ADDS	-12(%14),$3,%0
		MOV 	%0,-12(%14)
		JMP 	@exit0
@false0:
@if1:
		CMPS 	-4(%14),-8(%14)
		ADDS	-12(%14),$3,%0
		MOV 	%0,-12(%14)
		JMP 	@exit1
@false1:
		SUBS	-12(%14),$3,%0
		MOV 	%0,-12(%14)
@exit1:
@exit0:
@Return2:
		MOV 	-12(%14),%13
@f_exit:
		MOV 	%14,%15
		POP 	%14
		RET
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
			CALL	f
		MOV 	%13,%0
		MOV 	%0,-4(%14)
@Return3:
		MOV 	-4(%14),%13
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET