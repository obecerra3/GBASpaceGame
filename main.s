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
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #352
	mov	r2, #100663296
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	clearAllOAM
	.word	DMANow
	.word	titleScreenPal
	.word	titleScreenTiles
	.word	100726784
	.word	titleScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #57088
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L8+4
	mov	r3, #256
	ldr	r2, .L8+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L8+28
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+32
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	cardsPal
	.word	83886592
	.word	100728832
	.word	cardsTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	time
	.word	srand
	.size	initialize, .-initialize
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
	push	{r4, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+4
	mov	r3, #0
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	ldr	r0, .L12+16
	mov	lr, pc
	bx	r4
	ldr	r4, .L12+20
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L12+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L12+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+32
	ldr	r1, .L12+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	clearAllOAM
	.word	playSoundA
	.word	11025
	.word	5069
	.word	punch
	.word	DMANow
	.word	instructionScreenPal
	.word	instructionScreenTiles
	.word	100726784
	.word	instructionScreenMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r3, .L21+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.size	start, .-start
	.align	2
	.global	goToMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMap, %function
goToMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L25
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L25+12
	mov	r3, #0
	ldr	r2, .L25+16
	ldr	r1, .L25+20
	ldr	r0, .L25+24
	mov	lr, pc
	bx	r4
	ldr	r4, .L25+28
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L25+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	ldr	r1, .L25+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L25+40
	ldr	r1, .L25+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	hideSprites
	.word	clearAllOAM
	.word	initMapOAM
	.word	playSoundA
	.word	11025
	.word	5069
	.word	punch
	.word	DMANow
	.word	mapScreenPal
	.word	mapScreenTiles
	.word	100726784
	.word	mapScreenMap
	.word	state
	.size	goToMap, .-goToMap
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
	ldr	r3, .L55
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L28
	ldr	r2, .L55+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L29
.L28:
	tst	r3, #1
	beq	.L30
	ldr	r2, .L55+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L29
.L30:
	tst	r3, #2
	bne	.L54
.L31:
	tst	r3, #4
	beq	.L27
	ldr	r3, .L55+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L27
	pop	{r4, lr}
	b	goToStart
.L54:
	ldr	r2, .L55+8
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L31
	pop	{r4, lr}
	b	goToStart
.L29:
	ldr	r3, .L55+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMap
.L27:
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initMap
	.size	instructions, .-instructions
	.align	2
	.global	goToBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBattle, %function
goToBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L59+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L59+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #448
	mov	r2, #100663296
	ldr	r1, .L59+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L59+20
	ldr	r1, .L59+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L59+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L60:
	.align	2
.L59:
	.word	clearAllOAM
	.word	initBattle
	.word	DMANow
	.word	battleScreenPal
	.word	battleScreenTiles
	.word	100726784
	.word	battleScreenMap
	.word	state
	.size	goToBattle, .-goToBattle
	.align	2
	.global	goToShop
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToShop, %function
goToShop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L63+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+12
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L63+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	ldr	r1, .L63+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L63+24
	ldr	r1, .L63+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L63+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	clearAllOAM
	.word	hideSprites
	.word	initShop
	.word	DMANow
	.word	eventScreenPal
	.word	eventScreenTiles
	.word	100726784
	.word	eventScreenMap
	.word	state
	.size	goToShop, .-goToShop
	.align	2
	.global	unknownEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	unknownEvent, %function
unknownEvent:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+4
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r5, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #1
	cmp	r3, #5
	movgt	r0, #1
	popgt	{r4, r5, r6, lr}
	bgt	goToShop
.L68:
	pop	{r4, r5, r6, lr}
	b	goToBattle
.L70:
	.align	2
.L69:
	.word	rand
	.word	1717986919
	.size	unknownEvent, .-unknownEvent
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
	push	{r4, lr}
	ldr	r2, .L73
	ldr	r1, .L73+4
	ldr	r0, .L73+8
	mov	r3, #0
	ldr	r4, .L73+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L73+20
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L73+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	ldr	r1, .L73+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L73+32
	ldr	r1, .L73+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L73+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
	.word	11025
	.word	5069
	.word	punch
	.word	playSoundA
	.word	hideSprites
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	map
	.syntax unified
	.arm
	.fpu softvfp
	.type	map, %function
map:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
	ldr	r3, .L88+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L76:
	ldr	r2, .L88+20
	ldr	r3, [r2]
	cmp	r3, #4
	beq	.L78
	cmp	r3, #5
	beq	.L79
	cmp	r3, #3
	beq	.L87
	pop	{r4, lr}
	bx	lr
.L87:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	goToBattle
.L79:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	unknownEvent
.L78:
	mov	r3, #0
	mov	r0, #1
	pop	{r4, lr}
	str	r3, [r2]
	b	goToShop
.L86:
	mov	r2, #2
	ldr	r3, .L88+24
	str	r2, [r3]
	bl	goToPause
	b	.L76
.L89:
	.align	2
.L88:
	.word	updateMap
	.word	waitForVBlank
	.word	drawMap
	.word	oldButtons
	.word	buttons
	.word	stateToGo
	.word	stateBeforePause
	.size	map, .-map
	.align	2
	.global	shop
	.syntax unified
	.arm
	.fpu softvfp
	.type	shop, %function
shop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L91
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L97
.L91:
	ldr	r3, .L99+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L98
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToMap
.L97:
	mov	r2, #4
	ldr	r3, .L99+24
	str	r2, [r3]
	bl	goToPause
	b	.L91
.L100:
	.align	2
.L99:
	.word	updateShop
	.word	waitForVBlank
	.word	drawShop
	.word	oldButtons
	.word	buttons
	.word	leaveShop
	.word	stateBeforePause
	.size	shop, .-shop
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
	ldr	r3, .L115
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L102
	ldr	r2, .L115+8
	ldrh	r0, [r2]
	ands	r0, r0, #8
	bne	.L102
	ldr	r3, .L115+12
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L104
	cmp	r3, #4
	beq	.L105
	cmp	r3, #2
	beq	.L114
.L101:
	pop	{r4, lr}
	bx	lr
.L102:
	tst	r3, #4
	beq	.L101
	ldr	r3, .L115+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L101
	pop	{r4, lr}
	b	goToStart
.L104:
	bl	goToBattle
	ldr	r3, .L115+16
	mov	lr, pc
	bx	r3
	b	.L101
.L114:
	pop	{r4, lr}
	b	goToMap
.L105:
	pop	{r4, lr}
	b	goToShop
.L116:
	.align	2
.L115:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stateBeforePause
	.word	drawBattleAfterPause
	.size	pause, .-pause
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
	push	{r4, lr}
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L119+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L119+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #144
	mov	r2, #100663296
	ldr	r1, .L119+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L119+20
	ldr	r1, .L119+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L119+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	clearAllOAM
	.word	hideSprites
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	state
	.size	goToWin, .-goToWin
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
	ldr	r3, .L128
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L121
	ldr	r3, .L128+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
.L121:
	pop	{r4, lr}
	bx	lr
.L127:
	pop	{r4, lr}
	b	goToStart
.L129:
	.align	2
.L128:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	push	{r4, lr}
	ldr	r3, .L132
	mov	lr, pc
	bx	r3
	ldr	r3, .L132+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L132+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L132+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r2, #100663296
	ldr	r1, .L132+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L132+20
	ldr	r1, .L132+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L132+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L133:
	.align	2
.L132:
	.word	clearAllOAM
	.word	hideSprites
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	battle
	.syntax unified
	.arm
	.fpu softvfp
	.type	battle, %function
battle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L146
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
	ldr	r3, .L146+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L143
.L135:
	ldr	r3, .L146+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L144
	ldr	r2, .L146+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L134
	ldr	r2, .L146+28
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L145
	ldr	r3, .L146+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+36
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	ldr	r2, .L146+40
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r2, #4]
	add	r0, r0, #30
	add	r0, r0, r3
	ldr	r3, .L146+44
	str	r0, [r2, #4]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToMap
.L134:
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L143:
	mov	r2, #3
	ldr	r3, .L146+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToPause
.L145:
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	goToWin
.L147:
	.align	2
.L146:
	.word	updateBattle
	.word	waitForVBlank
	.word	drawBattle
	.word	oldButtons
	.word	buttons
	.word	gameOver
	.word	gameWon
	.word	bossBattle
	.word	rand
	.word	1717986919
	.word	player
	.word	hideSprites
	.word	stateBeforePause
	.size	battle, .-battle
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
	ldr	r3, .L160
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L160+16
	mov	r3, #1
	ldr	r2, .L160+20
	ldr	r1, .L160+24
	ldr	r0, .L160+28
	mov	lr, pc
	bx	r4
	ldr	r7, .L160+32
	ldr	r4, .L160+36
	ldr	r6, .L160+40
	ldr	fp, .L160+44
	ldr	r10, .L160+48
	ldr	r9, .L160+52
	ldr	r5, .L160+56
	ldr	r8, .L160+60
.L158:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L149
.L151:
	.word	.L150
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L149
	.word	.L149
	.word	.L156
	.word	.L157
	.word	.L157
.L157:
	mov	lr, pc
	bx	fp
.L149:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L158
.L156:
	ldr	r3, .L160+64
	mov	lr, pc
	bx	r3
	b	.L149
.L155:
	ldr	r3, .L160+68
	mov	lr, pc
	bx	r3
	b	.L149
.L154:
	ldr	r3, .L160+72
	mov	lr, pc
	bx	r3
	b	.L149
.L153:
	ldr	r3, .L160+76
	mov	lr, pc
	bx	r3
	b	.L149
.L150:
	ldr	r3, .L160+80
	mov	lr, pc
	bx	r3
	b	.L149
.L152:
	ldr	r3, .L160+84
	mov	lr, pc
	bx	r3
	b	.L149
.L161:
	.align	2
.L160:
	.word	initialize
	.word	initGame
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	198504
	.word	humanMusic
	.word	oldButtons
	.word	buttons
	.word	state
	.word	win
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	pause
	.word	shop
	.word	battle
	.word	map
	.word	start
	.word	instructions
	.size	main, .-main
	.text
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
	.comm	oamIndexMask,392,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	stateBeforePause,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
