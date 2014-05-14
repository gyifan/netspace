# CSCI 206 Computer Organization & Programming
# Date: 2011-09-13
# Yifan Ge
# Pre-Lab3

# data segment -------------------------------------
.data
.align 2

squares:
.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 # array squares[.]
ivar:
.word 0                         # int i
sum:
.word 0                         # int k
squarestringupp:
.asciiz "squares["
squarestringdown:
.asciiz "] = "
enter:
.asciiz "\n"
donestring:
.asciiz "sum of squares from 0 to 99 = "
# code segment --------------------------------------
.text
init:
	li	$s0, 0
	sw	$s0, ivar
	li	$s1, 0
	sw	$s1, sum
	la	$s2, squares

Loop:
	bge	$s0, 100, print
	jal	squareInit
	add	$s1, $s1, $t3
	sw	$s1, sum
	addi	$s0, $s0, 1
	sw	$s0, ivar
	j	Loop

squareInit:
	sll	$t0, $s0, 2		#Shift the counter
	add	$t1, $s2, $t0	#Get the address
	li	$t2, 0
	li	$t3, 0
squareLoop:	
	bge	$t2, $s0, squareEnd	 
	add	$t3, $t3, $s0
	addi	$t2, $t2, 1
	j	squareLoop
squareEnd:
	sw	$t3, 0($t1)
	jr	$ra

print:
	li	$s0, 0
	sw	$s0, ivar

LoopPrint:
	bge	$s0, 100, Terminate
	
	sll	$t0, $s0, 2
	add	$t1, $s2, $t0
	
	lw	$t2, 0($t1)
	
	la	$a0, squarestringupp
	li	$v0, 4
	syscall
	
	add	$a0, $zero, $s2
	li	$v0, 1
	syscall
	
	la	$a0, squarestringdown
	li	$v0, 4
	syscall
	
	add	$a0, $zero, $t2
	li	$v0, 1
	syscall
	
	la	$a0, enter
	li	$v0, 4
	syscall
	
	addi	$s0, $s0, 1

Terminate:
	
	li	$v0, 10
	syscall
	