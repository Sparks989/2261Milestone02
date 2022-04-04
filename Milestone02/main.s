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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #56320
	mov	r3, #256
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	mov	r3, #0
	ldr	r1, .L4+44
	ldr	lr, .L4+48
	ldrh	r4, [r1, #48]
	ldr	ip, .L4+52
	ldr	r1, .L4+56
	ldr	r0, .L4+60
	strh	r2, [r5]	@ movhi
	ldr	r2, .L4+64
	strh	r4, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	str	r3, [r1]
	str	r3, [r0]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+68
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	BackgroundPal
	.word	4592
	.word	BackgroundTiles
	.word	100720640
	.word	BackgroundMap
	.word	83886592
	.word	SpriteSheetPal
	.word	100728832
	.word	SpriteSheetTiles
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	vOff
	.word	hOff
	.word	mgba_open
	.word	goToStart
	.size	initialize, .-initialize
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldr	fp, .L20+4
	ldr	r4, .L20+8
	ldr	r10, .L20+12
	ldr	r9, .L20+16
	ldr	r8, .L20+20
	ldr	r7, .L20+24
	ldr	r6, .L20+28
	ldr	r5, .L20+32
.L18:
	ldrh	r3, [r4]
	strh	r3, [fp]	@ movhi
	ldr	r3, [r10]
	ldrh	r2, [r6, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L7
.L9:
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L8
.L8:
	ldr	r3, .L20+36
	mov	lr, pc
	bx	r3
.L7:
	mov	lr, pc
	bx	r9
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	ldr	ip, .L20+40
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	ldrh	r2, [r8]
	strh	r2, [r3, #16]	@ movhi
	ldrh	r2, [r7]
	strh	r2, [r3, #18]	@ movhi
	b	.L18
.L10:
	ldr	r3, .L20+44
	mov	lr, pc
	bx	r3
	b	.L7
.L11:
	ldr	r3, .L20+48
	mov	lr, pc
	bx	r3
	b	.L7
.L12:
	ldr	r2, .L20+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L20+56
	mov	lr, pc
	bx	r3
	b	.L7
.L13:
	ldr	r2, .L20+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L20+60
	mov	lr, pc
	bx	r3
	b	.L7
.L14:
	ldr	r2, .L20+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L20+64
	mov	lr, pc
	bx	r3
	b	.L7
.L15:
	ldr	r3, .L20+68
	mov	lr, pc
	bx	r3
	b	.L7
.L17:
	ldr	r3, .L20+72
	mov	lr, pc
	bx	r3
	b	.L7
.L16:
	ldr	r3, .L20+76
	mov	lr, pc
	bx	r3
	b	.L7
.L21:
	.align	2
.L20:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	state
	.word	waitForVBlank
	.word	hOff
	.word	vOff
	.word	67109120
	.word	shadowOAM
	.word	lose
	.word	DMANow
	.word	win
	.word	pause
	.word	timer
	.word	black
	.word	blue
	.word	green
	.word	characterSelect
	.word	start
	.word	instructions
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	instructionPage,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
