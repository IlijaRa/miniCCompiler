
main:
		PUSH	%14
		MOV 	%15,%14
		MOV 	$6,-4(%14)
		MOV 	$9,-8(%14)
		SUBS	%15,$8,%15
@main_body:
		MOV 	-4(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET