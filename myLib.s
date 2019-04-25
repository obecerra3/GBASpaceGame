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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, [r3]
	add	r0, r0, r0, lsr #31
	bic	r0, r0, #1
	ldrh	r3, [ip, r0]
	tst	r1, #1
	andne	r3, r3, #255
	andeq	r3, r3, #65280
	orrne	r2, r3, r2, lsl #8
	orreq	r2, r3, r2
	strh	r2, [ip, r0]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, lr}
	mov	lr, #0
	ldr	r4, .L18
	add	r2, r0, r2
	rsb	ip, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r4]
	add	ip, r1, ip, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r0, [r4, #4]
	orr	r3, r3, #-2130706432
	add	ip, r2, ip, lsl #1
	add	r1, r2, r1, lsl #1
.L12:
	add	r2, sp, #8
	str	lr, [r0, #44]
	str	r2, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, ip
	str	r3, [r0, #44]
	bne	.L12
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	cmp	r2, #0
	orr	ip, ip, lr, lsl #8
	strh	ip, [sp, #14]	@ movhi
	ble	.L20
	add	r6, r0, r2
	add	r2, r3, r3, lsr #31
	asr	r9, r3, #1
	asr	r2, r2, #1
	ldr	lr, .L38
	add	r8, r1, r3
	sub	ip, r9, #1
	orr	r2, r2, #-2130706432
	rsb	r6, r6, r6, lsl #4
	rsb	r0, r0, r0, lsl #4
	sub	r8, r8, #1
	str	r2, [sp]
	orr	r2, ip, #-2130706432
	add	r6, r1, r6, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	r5, [lr]
	ldr	r4, [lr, #4]
	str	r2, [sp, #4]
	orr	r9, r9, #-2130706432
	and	r8, r8, #1
	and	r1, r1, #1
	and	r7, r3, #1
	add	r10, sp, #14
	sub	fp, r3, #1
	b	.L32
.L37:
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	cmp	r7, #0
	ldrb	ip, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	beq	.L23
	orr	ip, ip, lr, lsl #8
	cmp	r3, #1
	strh	ip, [r5, r2]	@ movhi
	ble	.L24
	mov	ip, #0
	add	r2, r0, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	ip, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	str	r9, [r4, #44]
.L24:
	add	r0, r0, #240
	cmp	r6, r0
	beq	.L20
.L32:
	cmp	r1, #0
	bne	.L37
	cmp	r7, #0
	beq	.L28
	cmp	r3, #1
	ble	.L29
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r1, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	str	r9, [r4, #44]
.L29:
	add	r2, fp, r0
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	ldrh	lr, [r5, r2]
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	cmp	r8, #0
	andne	lr, lr, #255
	andeq	lr, lr, #65280
	and	ip, ip, #255
	add	r0, r0, #240
	orrne	lr, lr, ip, lsl #8
	orreq	lr, lr, ip
	cmp	r6, r0
	strh	lr, [r5, r2]	@ movhi
	bne	.L32
.L20:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L28:
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r7, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	ldr	r2, [sp]
	str	r2, [r4, #44]
	b	.L24
.L23:
	orr	ip, ip, lr, lsl #8
	cmp	r3, #2
	strh	ip, [r5, r2]	@ movhi
	ble	.L29
	add	r2, r0, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r7, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	ldr	r2, [sp, #4]
	str	r2, [r4, #44]
	b	.L29
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #8
	ldr	r1, .L42
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L42+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #16
	strb	r0, [sp, #7]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L46
	add	r2, sp, #16
	orr	r3, r3, r0, lsl #8
	strh	r3, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L46+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L56
	add	r2, r0, r2
	rsb	lr, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r5]
	add	lr, r1, lr, lsl #4
	ldr	ip, [sp, #12]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r5, #4]
	add	lr, r2, lr, lsl #1
	add	r1, r2, r1, lsl #1
	orr	r2, r3, #-2147483648
	lsl	r3, r3, #1
.L50:
	str	r4, [r0, #44]
	str	ip, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, lr
	str	r2, [r0, #44]
	add	ip, ip, r3
	bne	.L50
	pop	{r4, r5, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	cmp	r2, #0
	ldr	r6, [sp, #24]
	ble	.L58
	mov	ip, #0
	mov	r8, ip
	ldr	lr, .L63
	add	r4, r0, r2
	add	r5, r3, r3, lsr #31
	rsb	r4, r4, r4, lsl #4
	rsb	r0, r0, r0, lsl #4
	asr	r5, r5, #1
	ldm	lr, {r7, lr}
	add	r4, r1, r4, lsl #4
	orr	r5, r5, #-2147483648
	add	r1, r1, r0, lsl #4
.L60:
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	bic	r0, r0, #1
	bic	r2, r2, #1
	add	r1, r1, #240
	add	r0, r6, r0
	add	r2, r7, r2
	cmp	r4, r1
	str	r8, [lr, #44]
	add	ip, ip, r3
	str	r0, [lr, #36]
	str	r2, [lr, #40]
	str	r5, [lr, #44]
	bne	.L60
.L58:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L66
	ldr	r1, .L66+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L69
	ldr	r1, .L69+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L72:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L72
	mov	r2, #67108864
.L73:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L73
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r3, [r3]
	tst	r3, #16
	moveq	r1, #100663296
	ldrne	r2, .L80
	ldreq	r2, .L80
	ldrne	r1, .L80+4
	str	r1, [r2]
	mov	r2, #67108864
	eor	r3, r3, #16
	strh	r3, [r2]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	100704256
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L84
	add	r0, r0, r0, lsl #1
	ldr	lr, [ip, #4]
	lsl	r0, r0, #2
	add	ip, lr, r0
	orr	r3, r3, #-2147483648
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #4]
	ldr	ip, [sp, #12]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r0
	ble	.L90
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L92
.L90:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L92:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L90
	add	r0, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	spriteCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	spriteCollision, %function
spriteCollision:
	@ Function supports interworking.
	@ args = 136, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	add	ip, sp, #12
	stmib	ip, {r0, r1, r2, r3}
	ldr	r3, [sp, #92]
	ldr	r1, [sp, #84]
	ldr	r2, [sp, #120]
	add	r1, r1, r3
	ldr	r0, [sp, #24]
	ldr	r3, [sp, #16]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	r3, r3, r0
	cmp	r3, r2
	add	r5, sp, #48
	ldr	r2, [sp, #20]
	ldr	r4, [sp, #28]
	ldm	r5, {r5, lr}
	ldr	r0, [sp, #88]
	ldr	r6, [sp, #96]
	ldr	ip, [sp, #116]
	bge	.L97
	add	r3, r3, lr
	sub	r3, r3, #1
	cmp	r1, r3
	blt	.L99
.L97:
	pop	{r4, r5, r6, lr}
	mov	r0, #0
	add	sp, sp, #16
	bx	lr
.L99:
	add	r0, r0, r6
	add	ip, r0, ip
	sub	ip, ip, #1
	add	r2, r2, r4
	cmp	r2, ip
	bge	.L97
	add	r2, r2, r5
	sub	r2, r2, #1
	pop	{r4, r5, r6, lr}
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	sp, sp, #16
	bx	lr
	.size	spriteCollision, .-spriteCollision
	.align	2
	.global	hideSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #512
	ldr	r3, .L104
	add	r2, r3, #1000
.L101:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L101
	bx	lr
.L105:
	.align	2
.L104:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	getOAMIndex
	.syntax unified
	.arm
	.fpu softvfp
	.type	getOAMIndex, %function
getOAMIndex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	ldr	r3, .L112
	b	.L109
.L107:
	add	r0, r0, #1
	cmp	r0, #125
	beq	.L111
.L109:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L107
	mov	r2, #1
	ldr	r3, .L112+4
	str	r2, [r3, r0, lsl #2]
	bx	lr
.L111:
	mvn	r0, #0
	bx	lr
.L113:
	.align	2
.L112:
	.word	oamIndexMask-4
	.word	oamIndexMask
	.size	getOAMIndex, .-getOAMIndex
	.align	2
	.global	freeOAMIndex
	.syntax unified
	.arm
	.fpu softvfp
	.type	freeOAMIndex, %function
freeOAMIndex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L115
	str	r2, [r3, r0, lsl #2]
	bx	lr
.L116:
	.align	2
.L115:
	.word	oamIndexMask
	.size	freeOAMIndex, .-freeOAMIndex
	.align	2
	.global	clearAllOAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearAllOAM, %function
clearAllOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	ldr	r3, .L121
	add	r2, r3, #512
.L118:
	str	r1, [r3, #4]!
	cmp	r3, r2
	bne	.L118
	bx	lr
.L122:
	.align	2
.L121:
	.word	oamIndexMask-4
	.size	clearAllOAM, .-clearAllOAM
	.align	2
	.global	printNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	printNum, %function
printNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r2
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L140
	sub	sp, sp, #16
	mov	r4, r0
	mov	lr, r1
	ldm	r3, {r0, r1, r2}
	cmp	ip, #0
	add	r3, sp, #4
	stm	r3, {r0, r1, r2}
	ble	.L124
	mov	r2, r3
	ldr	r8, .L140+4
	ldr	r5, .L140+8
.L125:
	smull	r6, r7, ip, r8
	umull	r0, r1, ip, r5
	asr	r3, ip, #31
	rsb	r3, r3, r7, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, ip, r3, lsl #1
	lsrs	ip, r1, #3
	str	r3, [r2], #4
	bne	.L125
.L124:
	ldr	r3, [sp, #12]
	cmn	r3, #1
	beq	.L126
	and	r2, r4, #255
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r1, .L140+12
	lsl	r0, lr, #23
	add	r3, r3, #768
	lsr	r0, r0, #23
	strh	r3, [r1, #4]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
.L126:
	ldr	r2, [sp, #8]
	cmn	r2, #1
	beq	.L127
	and	r1, r4, #255
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	add	r3, lr, #5
	ldr	r0, .L140+16
	lsl	r3, r3, #23
	add	r2, r2, #768
	lsr	r3, r3, #23
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
.L127:
	ldr	r3, [sp, #4]
	cmn	r3, #1
	beq	.L123
	and	r4, r4, #255
	mvn	r4, r4, lsl #17
	mvn	r4, r4, lsr #17
	add	lr, lr, #10
	ldr	r2, .L140+20
	lsl	lr, lr, #23
	lsr	lr, lr, #23
	add	r3, r3, #768
	strh	r4, [r2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
.L123:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L141:
	.align	2
.L140:
	.word	.LANCHOR1
	.word	1717986919
	.word	-858993459
	.word	shadowOAM+1000
	.word	shadowOAM+1008
	.word	shadowOAM+1016
	.size	printNum, .-printNum
	.global	dma
	.global	videoBuffer
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	-1
	.word	-1
	.word	-1
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.ident	"GCC: (devkitARM release 47) 7.1.0"
