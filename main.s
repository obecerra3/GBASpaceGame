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
	mov	r3, #7040
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
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L8+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
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
	ldr	r3, .L12+28
	mov	r2, #100663296
	ldr	r1, .L12+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+44
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
	.word	7504
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
	ldr	r3, .L25+36
	mov	r2, #100663296
	ldr	r1, .L25+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L25+44
	ldr	r1, .L25+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #56320
	mov	r2, #2
	ldr	r3, .L25+52
	strh	r0, [r1, #8]	@ movhi
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
	.word	mapBackgroundPal
	.word	4304
	.word	mapBackgroundTiles
	.word	100720640
	.word	mapBackgroundMap
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
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+20
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
	.word	time
	.word	srand
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
	mov	r3, #2080
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
	mov	r3, #1184
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
	push	{r4, r5, r6, lr}
	ldr	r2, .L73
	ldr	r1, .L73+4
	ldr	r0, .L73+8
	ldr	r5, .L73+12
	mov	r3, #0
	ldr	r4, .L73+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L73+24
	ldr	r2, [r5]
	mov	r3, #0
	mov	r1, #175
	mov	r0, #7
	mov	lr, pc
	bx	r4
	ldr	r2, [r5, #4]
	mov	r3, #0
	mov	r1, #215
	mov	r0, #7
	mov	lr, pc
	bx	r4
	ldr	r4, .L73+28
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L73+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1872
	mov	r2, #100663296
	ldr	r1, .L73+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L73+40
	ldr	r1, .L73+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L73+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
	.word	11025
	.word	5069
	.word	punch
	.word	player
	.word	playSoundA
	.word	hideSprites
	.word	printNum
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
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	ldr	r4, .L96+4
	ldr	r3, .L96+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L76
	ldr	r2, .L96+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L92
.L76:
	tst	r3, #4
	beq	.L77
	ldr	r3, .L96+16
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L93
.L77:
	ldr	r2, .L96+20
	ldr	r3, [r2]
	cmp	r3, #4
	beq	.L80
.L95:
	cmp	r3, #5
	beq	.L81
	cmp	r3, #3
	beq	.L94
	pop	{r4, lr}
	bx	lr
.L93:
	ldr	r2, .L96+24
	ldr	r1, [r2]
	cmp	r1, #1
	movne	r3, #1
	str	r3, [r2]
	ldr	r2, .L96+20
	ldr	r3, [r2]
	cmp	r3, #4
	bne	.L95
.L80:
	mov	r1, #0
	mov	r3, #67108864
	mov	ip, #57088
	str	r1, [r2]
	mov	r0, #1
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	goToShop
.L94:
	mov	r1, #0
	mov	r3, #67108864
	mov	r0, #57088
	str	r1, [r2]
	pop	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	goToBattle
.L81:
	mov	r1, #0
	mov	r3, #67108864
	mov	r0, #57088
	str	r1, [r2]
	pop	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	unknownEvent
.L92:
	mov	r3, #67108864
	mov	ip, #2
	mov	r1, #57088
	ldr	r0, .L96+28
	str	ip, [r0]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bl	goToPause
	ldrh	r3, [r4]
	b	.L76
.L97:
	.align	2
.L96:
	.word	updateMap
	.word	oldButtons
	.word	waitForVBlank
	.word	drawMap
	.word	buttons
	.word	stateToGo
	.word	cheatOn
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
	ldr	r3, .L107
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
	ldr	r3, .L107+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
.L99:
	ldr	r3, .L107+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L106
	pop	{r4, lr}
	bx	lr
.L106:
	pop	{r4, lr}
	b	goToMap
.L105:
	mov	r2, #4
	ldr	r3, .L107+24
	str	r2, [r3]
	bl	goToPause
	b	.L99
.L108:
	.align	2
.L107:
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
	ldr	r3, .L123
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
	ldr	r2, .L123+8
	ldrh	r0, [r2]
	ands	r0, r0, #8
	bne	.L110
	ldr	r3, .L123+12
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L112
	cmp	r3, #4
	beq	.L113
	cmp	r3, #2
	beq	.L122
.L109:
	pop	{r4, lr}
	bx	lr
.L110:
	tst	r3, #4
	beq	.L109
	ldr	r3, .L123+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L109
	pop	{r4, lr}
	b	goToStart
.L112:
	bl	goToBattle
	ldr	r3, .L123+16
	mov	lr, pc
	bx	r3
	b	.L109
.L122:
	pop	{r4, lr}
	b	goToMap
.L113:
	pop	{r4, lr}
	b	goToShop
.L124:
	.align	2
.L123:
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
	ldr	r3, .L127
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L127+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L127+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2144
	mov	r2, #100663296
	ldr	r1, .L127+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L127+20
	ldr	r1, .L127+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L127+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L128:
	.align	2
.L127:
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
	ldr	r3, .L136
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L129
	ldr	r3, .L136+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
.L129:
	pop	{r4, lr}
	bx	lr
.L135:
	pop	{r4, lr}
	b	goToStart
.L137:
	.align	2
.L136:
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L140+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L140+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #5376
	mov	r2, #100663296
	ldr	r1, .L140+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L140+20
	ldr	r1, .L140+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L140+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L141:
	.align	2
.L140:
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
	ldr	r3, .L154
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L143
	ldr	r3, .L154+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L151
.L143:
	ldr	r3, .L154+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L152
	ldr	r2, .L154+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L142
	ldr	r2, .L154+28
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L153
	ldr	r3, .L154+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+36
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	ldr	r2, .L154+40
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r2, #4]
	add	r0, r0, #30
	add	r0, r0, r3
	ldr	r3, .L154+44
	str	r0, [r2, #4]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToMap
.L142:
	pop	{r4, r5, r6, lr}
	bx	lr
.L152:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L151:
	mov	r2, #3
	ldr	r3, .L154+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToPause
.L153:
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	goToWin
.L155:
	.align	2
.L154:
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
	ldr	r3, .L168
	mov	lr, pc
	bx	r3
	ldr	r3, .L168+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L168+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L168+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L168+16
	mov	r3, #1
	ldr	r2, .L168+20
	ldr	r1, .L168+24
	ldr	r0, .L168+28
	mov	lr, pc
	bx	r4
	ldr	r7, .L168+32
	ldr	r4, .L168+36
	ldr	r6, .L168+40
	ldr	fp, .L168+44
	ldr	r10, .L168+48
	ldr	r9, .L168+52
	ldr	r5, .L168+56
	ldr	r8, .L168+60
.L166:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L157
.L159:
	.word	.L158
	.word	.L160
	.word	.L161
	.word	.L162
	.word	.L163
	.word	.L157
	.word	.L157
	.word	.L164
	.word	.L165
	.word	.L165
.L165:
	mov	lr, pc
	bx	fp
.L157:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L166
.L164:
	ldr	r3, .L168+64
	mov	lr, pc
	bx	r3
	b	.L157
.L163:
	ldr	r3, .L168+68
	mov	lr, pc
	bx	r3
	b	.L157
.L162:
	ldr	r3, .L168+72
	mov	lr, pc
	bx	r3
	b	.L157
.L161:
	ldr	r3, .L168+76
	mov	lr, pc
	bx	r3
	b	.L157
.L158:
	ldr	r3, .L168+80
	mov	lr, pc
	bx	r3
	b	.L157
.L160:
	ldr	r3, .L168+84
	mov	lr, pc
	bx	r3
	b	.L157
.L169:
	.align	2
.L168:
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
