	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"notGame.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	start
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	ldrh	r3, [r3]
	tst	r3, #1
	push	{r4, lr}
	beq	.L4
	ldr	r3, .L8+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L7
.L4:
	ldr	r3, .L8+8
	ldr	r1, [r3]
.L3:
	ldr	r0, .L8+12
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L7:
	mov	r2, #240
	mov	ip, #67108864
	mov	lr, #4096
	mov	r0, #2
	ldr	r4, .L8+8
	mov	r1, r2
	str	r2, [r4]
	ldr	r2, .L8+20
	str	r3, [r2]
	ldr	r3, .L8+24
	strh	lr, [ip]	@ movhi
	str	r0, [r3]
	b	.L3
.L9:
	.align	2
.L8:
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	.LC0
	.word	mgba_printf
	.word	vOff
	.word	state
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L60
	ldrh	r3, [r2]
	ands	r0, r3, #512
	push	{r4, lr}
	beq	.L11
	ldr	r1, .L60+4
	ldrh	ip, [r1]
	tst	ip, #512
	bne	.L12
	ldr	ip, .L60+8
	ldr	lr, [ip]
	cmp	lr, #0
	bne	.L12
	mov	r3, #67108864
	mov	r0, #4096
	ldr	r4, .L60+12
	str	lr, [r4]
	ldr	r4, .L60+16
	str	lr, [r4]
	strh	r0, [r3]	@ movhi
	ldrh	r0, [r2]
	ldr	r3, .L60+20
	ldr	r2, .L60+24
	tst	r0, #256
	str	lr, [r2]
	str	lr, [r3]
	and	r0, r0, #512
	beq	.L13
	ldrh	r3, [r1]
	tst	r3, #256
	beq	.L31
	cmp	r0, #0
	beq	.L10
.L20:
	tst	r3, #512
	bne	.L10
	ldr	ip, .L60+8
	b	.L22
.L11:
	tst	r3, #256
	beq	.L10
	ldr	r1, .L60+4
	ldrh	r3, [r1]
	ands	r0, r3, #256
	beq	.L59
.L10:
	pop	{r4, lr}
	bx	lr
.L12:
	tst	r3, #256
	beq	.L29
	ldrh	r3, [r1]
	tst	r3, #256
	bne	.L20
	ldr	ip, .L60+8
.L31:
	ldr	r2, [ip]
	cmp	r2, #0
	bne	.L15
.L30:
	mov	r2, #1
	str	r2, [ip]
.L15:
	cmp	r0, #0
	beq	.L24
	tst	r3, #512
	bne	.L23
.L22:
	ldr	r3, [ip]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [ip]
	ldrh	r3, [r1]
	tst	r3, #256
	bne	.L10
.L23:
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L24
	pop	{r4, lr}
	bx	lr
.L13:
	cmp	r0, #0
	beq	.L10
.L29:
	ldrh	r3, [r1]
	tst	r3, #512
	bne	.L10
	ldr	r2, .L60+8
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L59:
	ldr	ip, .L60+8
	ldr	r2, [ip]
	cmp	r2, #0
	beq	.L30
.L24:
	mov	r3, #0
	mov	r0, #67108864
	mov	ip, #4096
	ldr	r2, .L60+12
	ldr	lr, .L60+16
	str	r3, [r2]
	ldr	r1, .L60+24
	ldr	r2, .L60+20
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	pop	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L61:
	.align	2
.L60:
	.word	oldButtons
	.word	buttons
	.word	instructionPage
	.word	vOff
	.word	hOff
	.word	timer
	.word	state
	.size	instructions, .-instructions
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L71+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bxne	lr
	mov	r0, #67108864
	mov	ip, #4096
	ldr	r2, .L71+8
	str	lr, [sp, #-4]!
	ldr	r1, .L71+12
	str	r3, [r2]
	ldr	lr, .L71+16
	ldr	r2, .L71+20
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L72:
	.align	2
.L71:
	.word	oldButtons
	.word	buttons
	.word	vOff
	.word	state
	.word	hOff
	.word	timer
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r0, #67108864
	mov	ip, #4096
	ldr	r2, .L76
	str	lr, [sp, #-4]!
	ldr	r1, .L76+4
	str	r3, [r2]
	ldr	lr, .L76+8
	ldr	r2, .L76+12
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L77:
	.align	2
.L76:
	.word	vOff
	.word	state
	.word	hOff
	.word	timer
	.size	goToStart, .-goToStart
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	str	lr, [sp, #-4]!
	mov	r0, #67108864
	mov	lr, #160
	mov	r1, #1
	ldr	ip, .L80
	ldr	r2, .L80+4
	str	r3, [ip]
	str	r3, [r2]
	ldr	ip, .L80+8
	ldr	r2, .L80+12
	str	lr, [ip]
	strh	r3, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L81:
	.align	2
.L80:
	.word	hOff
	.word	instructionPage
	.word	vOff
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToCharacterSelect
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCharacterSelect, %function
goToCharacterSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #240
	str	lr, [sp, #-4]!
	mov	r1, #67108864
	mov	lr, #0
	mov	r0, #4096
	mov	r2, #2
	ldr	r3, .L84
	str	ip, [r3]
	ldr	ip, .L84+4
	ldr	r3, .L84+8
	str	lr, [ip]
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	hOff
	.word	vOff
	.word	state
	.size	goToCharacterSelect, .-goToCharacterSelect
	.align	2
	.global	goToGreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGreen, %function
goToGreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r0, #67108864
	mov	ip, #4608
	mov	r1, #3
	ldr	r2, .L88
	str	lr, [sp, #-4]!
	str	r3, [r2]
	ldr	lr, .L88+4
	ldr	r2, .L88+8
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L89:
	.align	2
.L88:
	.word	hOff
	.word	vOff
	.word	state
	.size	goToGreen, .-goToGreen
	.align	2
	.global	goToBlue
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBlue, %function
goToBlue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #4096
	mov	r2, #4
	ldr	r3, .L91
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	state
	.size	goToBlue, .-goToBlue
	.align	2
	.global	goToBlack
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBlack, %function
goToBlack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #4096
	mov	r2, #5
	ldr	r3, .L94
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	state
	.size	goToBlack, .-goToBlack
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #240
	str	lr, [sp, #-4]!
	mov	r1, #67108864
	mov	lr, #160
	mov	r0, #0
	mov	r2, #6
	ldr	r3, .L98
	str	ip, [r3]
	ldr	ip, .L98+4
	ldr	r3, .L98+8
	str	lr, [ip]
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	hOff
	.word	vOff
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #7
	ldr	r3, .L101
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L102:
	.align	2
.L101:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #8
	ldr	r3, .L104
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L105:
	.align	2
.L104:
	.word	state
	.size	goToLose, .-goToLose
	.comm	state,4,4
	.comm	instructionPage,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
