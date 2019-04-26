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
	ldr	r3, .L4+16
	mov	r2, #100663296
	ldr	r1, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+32
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
	.word	4304
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L94
	mov	lr, pc
	bx	r3
	ldr	r4, .L94+4
	ldr	r3, .L94+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L76
	ldr	r2, .L94+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L91
.L76:
	tst	r3, #4
	beq	.L77
	ldr	r3, .L94+16
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L92
.L77:
	ldr	r2, .L94+20
	ldr	r3, [r2]
	cmp	r3, #4
	beq	.L80
	cmp	r3, #5
	beq	.L81
	cmp	r3, #3
	beq	.L93
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	mov	r1, #0
	mov	r3, #67108864
	mov	r0, #57088
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	goToBattle
.L81:
	mov	r1, #0
	mov	r3, #67108864
	mov	r0, #57088
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	unknownEvent
.L80:
	mov	r1, #0
	mov	r3, #67108864
	mov	ip, #57088
	str	r1, [r2]
	mov	r0, #1
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	b	goToShop
.L92:
	mov	r1, #20
	mov	r3, #2
	ldr	r2, .L94+24
	mov	r0, r1
	ldr	r5, .L94+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L94+32
	ldr	r2, [r3]
	cmp	r2, #1
	movne	r2, #1
	streq	r4, [r3]
	strne	r2, [r3]
	b	.L77
.L91:
	mov	r3, #67108864
	mov	ip, #2
	mov	r1, #57088
	ldr	r0, .L94+36
	str	ip, [r0]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bl	goToPause
	ldrh	r3, [r4]
	b	.L76
.L95:
	.align	2
.L94:
	.word	updateMap
	.word	oldButtons
	.word	waitForVBlank
	.word	drawMap
	.word	buttons
	.word	stateToGo
	.word	999
	.word	printNum
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
	ldr	r3, .L105
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L97
	ldr	r3, .L105+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L103
.L97:
	ldr	r3, .L105+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L104
	pop	{r4, lr}
	bx	lr
.L104:
	pop	{r4, lr}
	b	goToMap
.L103:
	mov	r2, #4
	ldr	r3, .L105+24
	str	r2, [r3]
	bl	goToPause
	b	.L97
.L106:
	.align	2
.L105:
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
	ldr	r3, .L121
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L108
	ldr	r2, .L121+8
	ldrh	r0, [r2]
	ands	r0, r0, #8
	bne	.L108
	ldr	r3, .L121+12
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L110
	cmp	r3, #4
	beq	.L111
	cmp	r3, #2
	beq	.L120
.L107:
	pop	{r4, lr}
	bx	lr
.L108:
	tst	r3, #4
	beq	.L107
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L107
	pop	{r4, lr}
	b	goToStart
.L110:
	bl	goToBattle
	ldr	r3, .L121+16
	mov	lr, pc
	bx	r3
	b	.L107
.L120:
	pop	{r4, lr}
	b	goToMap
.L111:
	pop	{r4, lr}
	b	goToShop
.L122:
	.align	2
.L121:
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
	ldr	r3, .L125
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L125+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L125+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #144
	mov	r2, #100663296
	ldr	r1, .L125+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L125+20
	ldr	r1, .L125+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L125+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L134
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
	ldr	r3, .L134+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
.L127:
	pop	{r4, lr}
	bx	lr
.L133:
	pop	{r4, lr}
	b	goToStart
.L135:
	.align	2
.L134:
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
	ldr	r3, .L138
	mov	lr, pc
	bx	r3
	ldr	r3, .L138+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L138+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r2, #100663296
	ldr	r1, .L138+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L138+20
	ldr	r1, .L138+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L138+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L139:
	.align	2
.L138:
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
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L141
	ldr	r3, .L152+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L149
.L141:
	ldr	r3, .L152+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L150
	ldr	r2, .L152+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L140
	ldr	r2, .L152+28
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L151
	ldr	r3, .L152+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+36
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	ldr	r2, .L152+40
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r2, #4]
	add	r0, r0, #30
	add	r0, r0, r3
	ldr	r3, .L152+44
	str	r0, [r2, #4]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToMap
.L140:
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L149:
	mov	r2, #3
	ldr	r3, .L152+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToPause
.L151:
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	goToWin
.L153:
	.align	2
.L152:
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
	ldr	r3, .L166
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L166+16
	mov	r3, #1
	ldr	r2, .L166+20
	ldr	r1, .L166+24
	ldr	r0, .L166+28
	mov	lr, pc
	bx	r4
	ldr	r7, .L166+32
	ldr	r4, .L166+36
	ldr	r6, .L166+40
	ldr	fp, .L166+44
	ldr	r10, .L166+48
	ldr	r9, .L166+52
	ldr	r5, .L166+56
	ldr	r8, .L166+60
.L164:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L155
.L157:
	.word	.L156
	.word	.L158
	.word	.L159
	.word	.L160
	.word	.L161
	.word	.L155
	.word	.L155
	.word	.L162
	.word	.L163
	.word	.L163
.L163:
	mov	lr, pc
	bx	fp
.L155:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L164
.L162:
	ldr	r3, .L166+64
	mov	lr, pc
	bx	r3
	b	.L155
.L161:
	ldr	r3, .L166+68
	mov	lr, pc
	bx	r3
	b	.L155
.L160:
	ldr	r3, .L166+72
	mov	lr, pc
	bx	r3
	b	.L155
.L159:
	ldr	r3, .L166+76
	mov	lr, pc
	bx	r3
	b	.L155
.L156:
	ldr	r3, .L166+80
	mov	lr, pc
	bx	r3
	b	.L155
.L158:
	ldr	r3, .L166+84
	mov	lr, pc
	bx	r3
	b	.L155
.L167:
	.align	2
.L166:
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
