.text
	beqz $a0, init_end
	lw $a0, 0($a1)
	jal atoi
	la $t0, arg
	sw $v0, 0($t0)
init_end:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_1
	sw $t0, 0($t1)
	la $t0, fun_7
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_1
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_1
	lw $t0, 0($t0)
	la $t1, is_int_0
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_3
	sw $t0, 0($t1)
	la $t0, fun_6
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_3
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_3
	lw $t0, 0($t0)
	la $t1, get_int_2
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_5
	sw $t0, 0($t1)
	la $t0, fun_5
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_5
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_5
	lw $t0, 0($t0)
	la $t1, is_empty_4
	sw $t0, 0($t1)
	li $t0, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_7
	sw $t0, 0($t1)
	la $t0, fun_4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_7
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, is_empty_4
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_7
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_7
	lw $t0, 0($t0)
	la $t1, is_singleton_6
	sw $t0, 0($t1)
	li $t0, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_9
	sw $t0, 0($t1)
	la $t0, fun_3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_9
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_9
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_9
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_9
	lw $t0, 0($t0)
	la $t1, size_8
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_11
	sw $t0, 0($t1)
	la $t0, fun_1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_11
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_11
	lw $t0, 0($t0)
	la $t1, max_10
	sw $t0, 0($t1)
	li $t0, 12
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, closure_13
	sw $t0, 0($t1)
	la $t0, fun_0
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_13
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_13
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_13
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, max_10
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, closure_13
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, closure_13
	lw $t0, 0($t0)
	la $t1, height_12
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_19
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_19
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_19
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_17
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_17
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_17
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_16
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_16
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_16
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_18
	sw $t0, 0($t1)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_18
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_18
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_17
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_18
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_16
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_18
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_20
	sw $t0, 0($t1)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_20
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_20
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_19
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_20
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_18
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_20
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_15
	sw $t0, 0($t1)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_15
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_15
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	la $t1, cstr_21
	sw $t0, 0($t1)
	li $t0, 20
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_21
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_21
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_20
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_21
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_15
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, cstr_21
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	la $t0, cstr_21
	lw $t0, 0($t0)
	la $t1, t_14
	sw $t0, 0($t1)
	la $t0, height_12
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, t_14
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	la $t0, height_12
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal print_int
	addi $sp, $sp, 4
	li $v0, 10
	syscall
malloc:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, 0
	lw $t0, 4($fp)
	move $a0, $t0
	li $v0, 9
	syscall
	move $t0, $v0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_7:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -16
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_26
	li $t0, 1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_28
	b __label_29
__label_28:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -8($fp)
__label_29:
	b __label_27
__label_26:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	li $t0, -1
	sw $t0, -8($fp)
__label_27:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_6:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -20
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_20
	li $t0, 1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_22
	b __label_23
__label_22:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	bnez $t0, __label_24
	li $t0, 0
	sw $t0, -24($fp)
	b __label_25
__label_24:
	li $t0, 1
	sw $t0, -24($fp)
__label_25:
	lw $t0, -24($fp)
	sw $t0, -8($fp)
__label_23:
	b __label_21
__label_20:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -8($fp)
__label_21:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_5:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -16
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_16
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_18
	b __label_19
__label_18:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -8($fp)
__label_19:
	b __label_17
__label_16:
	li $t0, -1
	sw $t0, -8($fp)
__label_17:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_4:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -20
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_10
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_12
	b __label_13
__label_12:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	bnez $t0, __label_14
	li $t0, 0
	sw $t0, -24($fp)
	b __label_15
__label_14:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, -24($fp)
__label_15:
	lw $t0, -24($fp)
	sw $t0, -8($fp)
__label_13:
	b __label_11
__label_10:
	li $t0, 0
	sw $t0, -8($fp)
__label_11:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_3:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -16
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_6
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_8
	b __label_9
__label_8:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	sw $t0, -8($fp)
__label_9:
	b __label_7
__label_6:
	li $t0, 1
	sw $t0, -8($fp)
__label_7:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_1:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -4
	li $t0, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jal malloc
	addi $sp, $sp, 4
	sw $t0, -8($fp)
	la $t0, fun_2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	lw $t0, 4($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	sw $t1, 0($t0)
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_2:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, 4($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	slt $t0, $t0, $t1
	bnez $t0, __label_4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -8($fp)
	b __label_5
__label_4:
	lw $t0, 4($fp)
	sw $t0, -8($fp)
__label_5:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
fun_0:
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	subi $sp, $sp, 4
	addi $fp, $sp, 8
	addi $sp, $sp, -16
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -12($fp)
	li $t0, 2
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_0
	li $t0, 3
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	seq $t0, $t0, $t1
	bnez $t0, __label_2
	b __label_3
__label_2:
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -16($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 3
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 4($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 4
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	mul $t0, $t0, $t1
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	lw $t0, 8($fp)
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	lw $t0, 0($t0)
	jalr $t0
	addi $sp, $sp, 8
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t1, 0($sp)
	add $t0, $t0, $t1
	sw $t0, -8($fp)
__label_3:
	b __label_1
__label_0:
	li $t0, 0
	sw $t0, -8($fp)
__label_1:
	lw $t0, -8($fp)
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
	li $t0, 0
	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra
#built-in atoi
atoi:
	move $t0, $a0
	li $t1, 0
	li $t2, 10
atoi_loop:
	lbu $t3, 0($t0)
	beq $t3, $zero, atoi_end
	li $t4, 48
	blt $t3, $t4, atoi_error
	li $t4, 57
	bgt $t3, $t4, atoi_error
	addi $t3, $t3, -48
	mul $t1, $t1, $t2
	add $t1, $t1, $t3
	addi $t0, $t0, 1
	b atoi_loop
atoi_error:
	li $v0, 10
	syscall
atoi_end:
	move $v0, $t1
	jr $ra
#built-in print_int
print_int:
	lw $a0, 4($sp)
	li $v0, 1
	syscall
	sw $a0, 0($sp)
	subi $sp, $sp, 4
	jr $ra
#built-in power
power:
	lw $s0, 8($sp)
	lw $s1, 4($sp)
	li $t0, 1
	b power_loop_guard
power_loop_code:
	mul $t0, $t0, $s1
	subi $s0, $s0, 1
power_loop_guard:
	bgtz $s0, power_loop_code
	sw $t0, 0($sp)
	subi $sp, $sp, 4
	jr $ra
.data
cstr_21:
	.word 0
cstr_20:
	.word 0
cstr_19:
	.word 0
cstr_18:
	.word 0
cstr_17:
	.word 0
cstr_16:
	.word 0
cstr_15:
	.word 0
t_14:
	.word 0
closure_13:
	.word 0
height_12:
	.word 0
closure_11:
	.word 0
max_10:
	.word 0
closure_9:
	.word 0
size_8:
	.word 0
closure_7:
	.word 0
is_singleton_6:
	.word 0
closure_5:
	.word 0
is_empty_4:
	.word 0
closure_3:
	.word 0
get_int_2:
	.word 0
closure_1:
	.word 0
is_int_0:
	.word 0
arg:
	.word 0
