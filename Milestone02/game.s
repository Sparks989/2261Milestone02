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
	.global	green
	.syntax unified
	.arm
	.fpu softvfp
	.type	green, %function
green:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	green, .-green
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
	ldr	r3, .L25
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L25+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #32
	mov	lr, #16
	mov	ip, #64
	mov	r0, #5
	ldr	r3, .L32
	str	lr, [r3, #4]
	str	r1, [r3]
	str	r1, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L33:
	.align	2
.L32:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	ldr	r4, .L74+4
	ldr	r6, .L74+8
	tst	r3, #128
	ldr	r2, [r6]
	ldr	r3, [r4, #24]
	sub	sp, sp, #16
	bne	.L36
	cmp	r3, #44
	addle	r3, r3, #1
	strle	r3, [r4, #24]
	ble	.L37
.L36:
	ldr	r1, .L74
	ldrh	r1, [r1, #48]
	tst	r1, #128
	beq	.L37
	cmp	r3, #30
	beq	.L72
	cmp	r3, #29
	addle	r3, r3, #1
	subgt	r3, r3, #1
	strle	r3, [r4, #24]
	strgt	r3, [r4, #24]
	bgt	.L44
.L72:
	ldr	r3, .L74+12
	ldr	r3, [r3]
	cmp	r3, #0
	addeq	r2, r2, #1
	streq	r2, [r6]
.L40:
	ldr	r8, .L74+16
	ldr	r5, .L74+20
	ldr	r3, [r8]
	ldr	r1, [r4, #20]
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	ip, [r5]
	ldr	r3, [r4, #16]
	stmib	sp, {r1, r2, ip}
	str	r3, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r7, .L74+24
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L47
	ldr	r3, [r4, #24]
	cmp	r3, #24
	bgt	.L48
	mov	r2, #0
	ldr	r3, [r5]
	sub	r3, r3, #1
	str	r3, [r5]
	str	r2, [r4, #28]
.L35:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L37:
	cmp	r3, #24
	ble	.L72
.L44:
	cmp	r3, #34
	ble	.L72
	cmp	r3, #44
	bgt	.L40
	b	.L72
.L48:
	cmp	r3, #34
	movle	r3, #1
	strle	r3, [r4, #28]
	ble	.L71
	cmp	r3, #44
	movle	r3, #2
	strle	r3, [r4, #28]
	ble	.L71
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L54
.L70:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	ldr	r2, [r8]
	ldr	r3, [r4, #20]
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldr	r1, [r6]
	ldr	r2, [r4, #16]
	ldr	ip, [r5]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	str	ip, [sp, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L56
	ldr	r3, [r4, #24]
	cmp	r3, #44
	bgt	.L35
	ldr	r3, .L74+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L35
.L71:
	ldr	r3, [r5]
	sub	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L56:
	ldr	r2, [r8]
	ldr	r3, [r4, #20]
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldr	r1, [r6]
	ldr	r2, [r4, #16]
	ldr	ip, [r5]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	str	ip, [sp, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #2
	beq	.L35
	ldr	r2, [r8]
	ldr	r3, [r4, #20]
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldr	r1, [r5]
	ldr	r2, [r4, #16]
	ldr	ip, [r6]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	stmib	sp, {r3, ip}
	str	r1, [sp, #12]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #3
	bne	.L35
	ldr	r3, [r4, #24]
	cmp	r3, #44
	bgt	.L35
	ldr	r3, .L74+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L35
	b	.L70
.L54:
	cmp	r3, #1
	beq	.L71
	cmp	r3, #2
	beq	.L71
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	67109120
	.word	player
	.word	hOff
	.word	timer
	.word	.LANCHOR0
	.word	vOff
	.word	collisionCheck
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
	ldr	r0, .L82
	ldr	ip, .L82+4
	ldr	r3, [r0, #4]
	and	r3, r3, ip
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L82+8
	mov	r1, r2
	push	{r4, r5, lr}
	ldr	r5, [r0, #36]
	ldr	lr, [r0, #32]
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	r0, lr, r5, lsl #5
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, .L82+12
	strh	r4, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r5, r3, #120
.L79:
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
	bne	.L79
	pop	{r4, r5, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	player
	.word	511
	.word	shadowOAM
	.word	cursors
	.size	drawGame, .-drawGame
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
	ldr	r2, .L86
	ldr	r3, [r2, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	add	r0, r2, #32
	str	lr, [sp, #-4]!
	ldm	r0, {r0, lr}
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L86+4
	add	r2, r0, lr, lsl #5
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	ip, .L90
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
.L91:
	.align	2
.L90:
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
	bgt	.L93
	mov	r2, #0
	ldr	r3, .L96
	str	r2, [r3, #28]
	bx	lr
.L93:
	cmp	r0, #34
	bgt	.L95
	mov	r2, #1
	ldr	r3, .L96
	str	r2, [r3, #28]
	bx	lr
.L95:
	cmp	r0, #44
	movle	r2, #2
	ldrle	r3, .L96
	strle	r2, [r3, #28]
	bx	lr
.L97:
	.align	2
.L96:
	.word	player
	.size	jumpHeight, .-jumpHeight
	.global	collisionMap
	.comm	cursors,120,4
	.comm	player,44,4
	.comm	instructionPage,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	CollisionMapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
