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
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L11+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bxne	lr
	str	lr, [sp, #-4]!
	mov	lr, #240
	mov	r0, #67108864
	mov	ip, #4352
	mov	r1, #2
	ldr	r2, .L11+8
	str	lr, [r2]
	ldr	lr, .L11+12
	ldr	r2, .L11+16
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	oldButtons
	.word	buttons
	.word	hOff
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
	ldr	r2, .L63
	ldrh	r3, [r2]
	ands	r0, r3, #512
	push	{r4, lr}
	beq	.L14
	ldr	r1, .L63+4
	ldrh	ip, [r1]
	tst	ip, #512
	bne	.L15
	ldr	ip, .L63+8
	ldr	lr, [ip]
	cmp	lr, #0
	bne	.L15
	mov	r3, #67108864
	mov	r0, #4352
	ldr	r4, .L63+12
	str	lr, [r4]
	ldr	r4, .L63+16
	str	lr, [r4]
	strh	r0, [r3]	@ movhi
	ldrh	r0, [r2]
	ldr	r3, .L63+20
	ldr	r2, .L63+24
	tst	r0, #256
	str	lr, [r2]
	str	lr, [r3]
	and	r0, r0, #512
	beq	.L16
	ldrh	r3, [r1]
	tst	r3, #256
	beq	.L34
	cmp	r0, #0
	beq	.L13
.L23:
	tst	r3, #512
	bne	.L13
	ldr	ip, .L63+8
	b	.L25
.L14:
	tst	r3, #256
	beq	.L13
	ldr	r1, .L63+4
	ldrh	r3, [r1]
	ands	r0, r3, #256
	beq	.L62
.L13:
	pop	{r4, lr}
	bx	lr
.L15:
	tst	r3, #256
	beq	.L32
	ldrh	r3, [r1]
	tst	r3, #256
	bne	.L23
	ldr	ip, .L63+8
.L34:
	ldr	r2, [ip]
	cmp	r2, #0
	bne	.L18
.L33:
	mov	r2, #1
	str	r2, [ip]
.L18:
	cmp	r0, #0
	beq	.L27
	tst	r3, #512
	bne	.L26
.L25:
	ldr	r3, [ip]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [ip]
	ldrh	r3, [r1]
	tst	r3, #256
	bne	.L13
.L26:
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L27
	pop	{r4, lr}
	bx	lr
.L16:
	cmp	r0, #0
	beq	.L13
.L32:
	ldrh	r3, [r1]
	tst	r3, #512
	bne	.L13
	ldr	r2, .L63+8
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L62:
	ldr	ip, .L63+8
	ldr	r2, [ip]
	cmp	r2, #0
	beq	.L33
.L27:
	mov	r3, #0
	mov	r0, #67108864
	mov	ip, #4352
	ldr	r2, .L63+12
	ldr	lr, .L63+16
	str	r3, [r2]
	ldr	r1, .L63+24
	ldr	r2, .L63+20
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	pop	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bxne	lr
	mov	r0, #67108864
	mov	ip, #4352
	ldr	r2, .L74+8
	str	lr, [sp, #-4]!
	ldr	r1, .L74+12
	str	r3, [r2]
	ldr	lr, .L74+16
	ldr	r2, .L74+20
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L75:
	.align	2
.L74:
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
	mov	ip, #4352
	ldr	r2, .L79
	str	lr, [sp, #-4]!
	ldr	r1, .L79+4
	str	r3, [r2]
	ldr	lr, .L79+8
	ldr	r2, .L79+12
	str	r3, [lr]
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L80:
	.align	2
.L79:
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
	mov	r1, #67108864
	mov	lr, #160
	mov	r0, #256
	mov	r2, #1
	ldr	ip, .L83
	str	r3, [ip]
	ldr	ip, .L83+4
	str	r3, [ip]
	ldr	ip, .L83+8
	ldr	r3, .L83+12
	str	lr, [ip]
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r2, [r3]
	bx	lr
.L84:
	.align	2
.L83:
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
	mov	r0, #4352
	mov	r2, #2
	ldr	r3, .L87
	str	ip, [r3]
	ldr	ip, .L87+4
	ldr	r3, .L87+8
	str	lr, [ip]
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	mov	ip, #0
	ldr	r0, .L91
	push	{r4, lr}
	ldr	lr, .L91+4
	str	ip, [r0]
	ldr	r4, .L91+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+12
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L91+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L91+20
	ldr	r1, .L91+24
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #4352
	mov	r2, #3
	ldr	r3, .L91+28
	strh	r0, [r1]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	BGMapPal
	.word	BGMapTiles
	.word	100720640
	.word	BGMapMap
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
	mov	r0, #5120
	mov	r2, #4
	ldr	r3, .L94
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
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
	mov	r0, #6144
	mov	r2, #5
	ldr	r3, .L97
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
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
	mov	r0, #256
	mov	r2, #6
	ldr	r3, .L101
	str	ip, [r3]
	ldr	ip, .L101+4
	ldr	r3, .L101+8
	str	lr, [ip]
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r2, [r3]
	bx	lr
.L102:
	.align	2
.L101:
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
	mov	r0, #256
	mov	r2, #7
	ldr	r3, .L104
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L105:
	.align	2
.L104:
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
	mov	r0, #256
	mov	r2, #8
	ldr	r3, .L107
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L108:
	.align	2
.L107:
	.word	state
	.size	goToLose, .-goToLose
	.comm	state,4,4
	.comm	instructionPage,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
