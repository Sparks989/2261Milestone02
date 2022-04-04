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
	.file	"game.c"
	.text
	.align	2
	.global	characterSelect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	characterSelect, %function
characterSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L11+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L11+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	oldButtons
	.word	buttons
	.word	goToGreen
	.size	characterSelect, .-characterSelect
	.align	2
	.global	blue
	.syntax unified
	.arm
	.fpu softvfp
	.type	blue, %function
blue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	blue, .-blue
	.align	2
	.global	black
	.syntax unified
	.arm
	.fpu softvfp
	.type	black, %function
black:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	black, .-black
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L24+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L24+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	oldButtons
	.word	buttons
	.word	goToStart
	.size	pause, .-pause
	.align	2
	.global	greenInit
	.syntax unified
	.arm
	.fpu softvfp
	.type	greenInit, %function
greenInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	greenInit, .-greenInit
	.align	2
	.global	blueInit
	.syntax unified
	.arm
	.fpu softvfp
	.type	blueInit, %function
blueInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	blueInit, .-blueInit
	.align	2
	.global	blackInit
	.syntax unified
	.arm
	.fpu softvfp
	.type	blackInit, %function
blackInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	blackInit, .-blackInit
	.align	2
	.global	playerInit
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerInit, %function
playerInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	mov	ip, #16
	mov	r0, #5
	ldr	r3, .L30
	str	r1, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	bx	lr
.L31:
	.align	2
.L30:
	.word	player
	.size	playerInit, .-playerInit
	.align	2
	.global	selectorInit
	.syntax unified
	.arm
	.fpu softvfp
	.type	selectorInit, %function
selectorInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	selectorInit, .-selectorInit
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	ldr	r2, .L56+4
	tst	r3, #128
	ldr	r3, [r2, #24]
	bne	.L34
	cmp	r3, #44
	addle	r3, r3, #1
	strle	r3, [r2, #24]
	ble	.L35
.L34:
	ldr	r1, .L56
	ldrh	r1, [r1, #48]
	tst	r1, #128
	beq	.L35
	cmp	r3, #30
	beq	.L40
	cmp	r3, #29
	bgt	.L39
	add	r3, r3, #1
	cmp	r3, #24
	str	r3, [r2, #24]
	bgt	.L40
.L43:
	ldr	r3, .L56+8
	ldr	r3, [r3]
	tst	r3, #3
	bxne	lr
.L55:
	ldr	r2, .L56+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L35:
	cmp	r3, #24
	ble	.L43
.L42:
	cmp	r3, #30
	ble	.L40
	cmp	r3, #45
	bxgt	lr
	ldr	r3, .L56+8
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	.L55
.L40:
	ldr	r3, .L56+8
	ldr	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	.L55
.L39:
	sub	r3, r3, #1
	str	r3, [r2, #24]
	b	.L42
.L57:
	.align	2
.L56:
	.word	67109120
	.word	player
	.word	timer
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame, .-updateGame
	.align	2
	.global	updateSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSelector, %function
updateSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateSelector, .-updateSelector
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L64
	ldr	ip, .L64+4
	ldr	r3, [r0, #4]
	and	r3, r3, ip
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L64+8
	mov	r1, r2
	push	{r4, r5, lr}
	ldr	r5, [r0, #36]
	ldr	lr, [r0, #32]
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	r0, lr, r5, lsl #5
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, .L64+12
	strh	r4, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r5, r3, #120
.L61:
	ldr	r2, [r3, #4]
	add	r0, r3, #32
	ldm	r0, {r0, r4}
	ldrb	lr, [r3]	@ zero_extendqisi2
	and	r2, r2, ip
	add	r3, r3, #40
	orr	r2, r2, #16384
	add	r0, r0, r4, lsl #5
	cmp	r5, r3
	strh	r2, [r1, #10]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	lr, [r1, #8]	@ movhi
	add	r1, r1, #8
	bne	.L61
	pop	{r4, r5, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	player
	.word	511
	.word	shadowOAM
	.word	cursors
	.size	drawGame, .-drawGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	green
	.syntax unified
	.arm
	.fpu softvfp
	.type	green, %function
green:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	drawGame
	ldr	r3, .L68
	ldr	r0, .L68+4
	ldr	r1, [r3, #24]
	ldr	r3, .L68+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	player
	.word	.LC0
	.word	mgba_printf
	.size	green, .-green
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L72
	ldr	r3, [r2, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	add	r0, r2, #32
	str	lr, [sp, #-4]!
	ldm	r0, {r0, lr}
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L72+4
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L73:
	.align	2
.L72:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSelector, %function
drawSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #4]
	ldr	r4, [r0, #36]
	ldr	r2, [r0, #32]
	ldr	ip, .L76
	lsl	r3, r3, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	add	r1, r1, #1
	lsr	r3, r3, #23
	lsl	r0, r1, #3
	add	r2, r2, r4, lsl #5
	add	r1, ip, r1, lsl #3
	orr	r3, r3, #16384
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	shadowOAM
	.size	drawSelector, .-drawSelector
	.align	2
	.global	jumpHeight
	.syntax unified
	.arm
	.fpu softvfp
	.type	jumpHeight, %function
jumpHeight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #24
	bgt	.L79
	mov	r2, #0
	ldr	r3, .L82
	str	r2, [r3, #28]
	bx	lr
.L79:
	cmp	r0, #34
	bgt	.L81
	mov	r2, #1
	ldr	r3, .L82
	str	r2, [r3, #28]
	bx	lr
.L81:
	cmp	r0, #44
	movle	r2, #2
	ldrle	r3, .L82
	strle	r2, [r3, #28]
	bx	lr
.L83:
	.align	2
.L82:
	.word	player
	.size	jumpHeight, .-jumpHeight
	.global	collisionMap
	.comm	cursors,120,4
	.comm	player,44,4
	.comm	state,4,4
	.comm	instructionPage,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.data
	.align	2
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	CollisionMapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
