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
	ldr	r4, .L25+8
	mov	r3, #0
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	ldr	r0, .L25+20
	mov	lr, pc
	bx	r4
	ldr	r4, .L25+24
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L25+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	ldr	r1, .L25+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L25+36
	ldr	r1, .L25+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
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
	.global	goToMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMerchant, %function
goToMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L63+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	ldr	r1, .L63+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L63+16
	ldr	r1, .L63+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L63+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	clearAllOAM
	.word	DMANow
	.word	eventScreenPal
	.word	eventScreenTiles
	.word	100726784
	.word	eventScreenMap
	.word	state
	.size	goToMerchant, .-goToMerchant
	.align	2
	.global	goToUnknownEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToUnknownEvent, %function
goToUnknownEvent:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L67+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	ldr	r1, .L67+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L67+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
	.word	clearAllOAM
	.word	DMANow
	.word	eventScreenPal
	.word	eventScreenTiles
	.word	100726784
	.word	eventScreenMap
	.word	state
	.size	goToUnknownEvent, .-goToUnknownEvent
	.align	2
	.global	goToRestSpot
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToRestSpot, %function
goToRestSpot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r4, .L71+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L71+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	ldr	r1, .L71+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L71+16
	ldr	r1, .L71+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L71+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L72:
	.align	2
.L71:
	.word	clearAllOAM
	.word	DMANow
	.word	eventScreenPal
	.word	eventScreenTiles
	.word	100726784
	.word	eventScreenMap
	.word	state
	.size	goToRestSpot, .-goToRestSpot
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
	ldr	r2, .L75
	ldr	r1, .L75+4
	ldr	r0, .L75+8
	mov	r3, #0
	ldr	r4, .L75+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L75+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L75+20
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L75+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	ldr	r1, .L75+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L75+32
	ldr	r1, .L75+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L75+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L78
	ldr	r3, .L90+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L89
.L78:
	ldr	r2, .L90+20
	ldr	r3, [r2]
	sub	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L77
.L81:
	.word	.L80
	.word	.L82
	.word	.L83
	.word	.L84
.L84:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	goToRestSpot
.L83:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	goToUnknownEvent
.L82:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	goToMerchant
.L80:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	b	goToBattle
.L77:
	pop	{r4, lr}
	bx	lr
.L89:
	mov	r2, #2
	ldr	r3, .L90+24
	str	r2, [r3]
	bl	goToPause
	b	.L78
.L91:
	.align	2
.L90:
	.word	updateMap
	.word	waitForVBlank
	.word	drawMap
	.word	oldButtons
	.word	buttons
	.word	stateToGo
	.word	stateBeforePause
	.size	map, .-map
	.align	2
	.global	merchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	merchant, %function
merchant:
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
	beq	.L92
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
.L92:
	pop	{r4, lr}
	bx	lr
.L98:
	mov	r2, #4
	ldr	r3, .L99+20
	pop	{r4, lr}
	str	r2, [r3]
	b	goToPause
.L100:
	.align	2
.L99:
	.word	updateMerchant
	.word	waitForVBlank
	.word	drawMerchant
	.word	oldButtons
	.word	buttons
	.word	stateBeforePause
	.size	merchant, .-merchant
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
	push	{r4, lr}
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L108+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L107
.L101:
	pop	{r4, lr}
	bx	lr
.L107:
	mov	r2, #5
	ldr	r3, .L108+20
	pop	{r4, lr}
	str	r2, [r3]
	b	goToPause
.L109:
	.align	2
.L108:
	.word	updateUnknownEvent
	.word	waitForVBlank
	.word	drawUnknownEvent
	.word	oldButtons
	.word	buttons
	.word	stateBeforePause
	.size	unknownEvent, .-unknownEvent
	.align	2
	.global	restSpot
	.syntax unified
	.arm
	.fpu softvfp
	.type	restSpot, %function
restSpot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L117
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
	ldr	r3, .L117+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L116
.L110:
	pop	{r4, lr}
	bx	lr
.L116:
	mov	r2, #6
	ldr	r3, .L117+20
	pop	{r4, lr}
	str	r2, [r3]
	b	goToPause
.L118:
	.align	2
.L117:
	.word	updateRestSpot
	.word	waitForVBlank
	.word	drawRestSpot
	.word	oldButtons
	.word	buttons
	.word	stateBeforePause
	.size	restSpot, .-restSpot
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
	ldr	r3, .L136
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldr	r2, .L136+8
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L120
	ldr	r3, .L136+12
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L119
.L123:
	.word	.L122
	.word	.L124
	.word	.L125
	.word	.L126
	.word	.L127
.L120:
	tst	r3, #4
	beq	.L119
	ldr	r3, .L136+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L135
.L119:
	pop	{r4, lr}
	bx	lr
.L135:
	pop	{r4, lr}
	b	goToStart
.L127:
	pop	{r4, lr}
	b	goToRestSpot
.L122:
	pop	{r4, lr}
	b	goToMap
.L124:
	bl	goToBattle
	ldr	r3, .L136+16
	mov	lr, pc
	bx	r3
	b	.L119
.L125:
	pop	{r4, lr}
	b	goToMerchant
.L126:
	pop	{r4, lr}
	b	goToUnknownEvent
.L137:
	.align	2
.L136:
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
	mov	r3, #144
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
	mov	r2, #8
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
	ldr	r3, .L149
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L149+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L142
	ldr	r3, .L149+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L148
.L142:
	pop	{r4, lr}
	bx	lr
.L148:
	pop	{r4, lr}
	b	goToStart
.L150:
	.align	2
.L149:
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
	ldr	r3, .L153
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L153+8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L153+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r2, #100663296
	ldr	r1, .L153+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L153+20
	ldr	r1, .L153+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L153+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L154:
	.align	2
.L153:
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
	push	{r4, lr}
	ldr	r3, .L167
	mov	lr, pc
	bx	r3
	ldr	r3, .L167+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L167+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L167+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L156
	ldr	r3, .L167+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L164
.L156:
	ldr	r3, .L167+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L165
	ldr	r2, .L167+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L155
	ldr	r2, .L167+28
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L166
	ldr	r3, .L167+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMap
.L155:
	pop	{r4, lr}
	bx	lr
.L165:
	pop	{r4, lr}
	b	goToLose
.L164:
	mov	r2, #3
	ldr	r3, .L167+36
	pop	{r4, lr}
	str	r2, [r3]
	b	goToPause
.L166:
	pop	{r4, lr}
	str	r3, [r2]
	b	goToWin
.L168:
	.align	2
.L167:
	.word	updateBattle
	.word	waitForVBlank
	.word	drawBattle
	.word	oldButtons
	.word	buttons
	.word	gameOver
	.word	gameWon
	.word	bossBattle
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
	ldr	r3, .L183
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L183+16
	mov	r3, #1
	ldr	r2, .L183+20
	ldr	r1, .L183+24
	ldr	r0, .L183+28
	mov	lr, pc
	bx	r4
	ldr	r7, .L183+32
	ldr	r4, .L183+36
	ldr	r6, .L183+40
	ldr	fp, .L183+44
	ldr	r10, .L183+48
	ldr	r9, .L183+52
	ldr	r5, .L183+56
	ldr	r8, .L183+60
.L181:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L170
.L172:
	.word	.L171
	.word	.L173
	.word	.L174
	.word	.L175
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L179
	.word	.L180
	.word	.L180
.L180:
	mov	lr, pc
	bx	fp
.L170:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L181
.L179:
	ldr	r3, .L183+64
	mov	lr, pc
	bx	r3
	b	.L170
.L178:
	ldr	r3, .L183+68
	mov	lr, pc
	bx	r3
	b	.L170
.L177:
	ldr	r3, .L183+72
	mov	lr, pc
	bx	r3
	b	.L170
.L176:
	ldr	r3, .L183+76
	mov	lr, pc
	bx	r3
	b	.L170
.L175:
	ldr	r3, .L183+80
	mov	lr, pc
	bx	r3
	b	.L170
.L174:
	ldr	r3, .L183+84
	mov	lr, pc
	bx	r3
	b	.L170
.L171:
	ldr	r3, .L183+88
	mov	lr, pc
	bx	r3
	b	.L170
.L173:
	ldr	r3, .L183+92
	mov	lr, pc
	bx	r3
	b	.L170
.L184:
	.align	2
.L183:
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
	.word	restSpot
	.word	unknownEvent
	.word	merchant
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
	.comm	oamIndexMask,512,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	stateBeforePause,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
