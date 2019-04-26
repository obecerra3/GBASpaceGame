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
	.file	"merchant.c"
	.text
	.align	2
	.global	initMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMerchant, %function
initMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L8
	mov	lr, pc
	bx	r6
	mov	r9, #0
	ldr	r3, .L8+4
	ldr	r8, .L8+8
	str	r0, [r3, #68]
	ldr	r4, .L8+12
	ldr	r5, .L8+16
	ldr	r7, .L8+20
.L2:
	mov	lr, pc
	bx	r8
	smull	r10, fp, r0, r7
	asr	r3, r0, #31
	rsb	r3, r3, fp, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #1
	str	r3, [r4, r9, lsl #2]
	mov	lr, pc
	bx	r6
	str	r0, [r5, r9, lsl #2]
	add	r9, r9, #1
	cmp	r9, #3
	bne	.L2
	mov	r2, #0
	mov	r8, #70
	ldr	ip, .L8+24
	ldr	r7, .L8+28
	ldr	r0, .L8+32
	ldr	r6, .L8+36
	ldr	lr, .L8+40
.L3:
	ldr	r1, [r4, r2, lsl #2]
	add	r1, r1, r1, lsl #1
	ldr	r10, [r0, r1, lsl #4]
	ldr	r3, [r5, r2, lsl #2]
	add	r9, r0, r1, lsl #4
	ldr	r1, [r7, r2, lsl #2]
	ldr	r9, [r9, #4]
	lsl	r3, r3, #3
	and	r1, r1, r6
	add	r2, r2, #1
	strh	r8, [ip, r3]	@ movhi
	add	r9, r10, r9, lsl #5
	add	r3, ip, r3
	orr	r1, r1, lr
	cmp	r2, #3
	strh	r9, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	getOAMIndex
	.word	player
	.word	rand
	.word	cardsForSale
	.word	deckOAM
	.word	1717986919
	.word	shadowOAM
	.word	.LANCHOR0
	.word	masterDeck
	.word	511
	.word	-16384
	.size	initMerchant, .-initMerchant
	.align	2
	.global	updateMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMerchant, %function
updateMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L11
	ldr	r3, .L15+4
	ldr	r2, [r3, #36]
	ldr	r1, [r3, #48]
	rsb	r2, r2, #238
	cmp	r1, r2
	ldrlt	r2, [r3, #56]
	addlt	r1, r2, r1
	strlt	r1, [r3, #48]
.L11:
	ldr	r3, .L15
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L12
	ldr	r2, .L15+4
	ldr	r3, [r2, #48]
	cmp	r3, #2
	ldrgt	r1, [r2, #56]
	subgt	r3, r3, r1
	strgt	r3, [r2, #48]
.L12:
	ldr	r3, .L15
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L13
	ldr	r2, .L15+4
	ldr	r3, [r2, #44]
	cmp	r3, #2
	ldrgt	r1, [r2, #52]
	subgt	r3, r3, r1
	strgt	r3, [r2, #44]
.L13:
	ldr	r3, .L15
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bxne	lr
	ldr	r3, .L15+4
	ldr	r2, [r3, #40]
	ldr	r1, [r3, #44]
	rsb	r2, r2, #158
	cmp	r1, r2
	ldrlt	r2, [r3, #52]
	addlt	r1, r2, r1
	strlt	r1, [r3, #44]
	bx	lr
.L16:
	.align	2
.L15:
	.word	67109120
	.word	player
	.size	updateMerchant, .-updateMerchant
	.align	2
	.global	drawMerchantCards
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMerchantCards, %function
drawMerchantCards:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #0
	mov	r8, #70
	ldr	r7, .L21
	ldr	ip, .L21+4
	ldr	r6, .L21+8
	ldr	r5, .L21+12
	ldr	r0, .L21+16
	ldr	r4, .L21+20
	ldr	lr, .L21+24
.L18:
	ldr	r1, [r5, r2, lsl #2]
	add	r1, r1, r1, lsl #1
	ldr	r10, [r0, r1, lsl #4]
	ldr	r3, [r7, r2, lsl #2]
	add	r9, r0, r1, lsl #4
	ldr	r1, [r6, r2, lsl #2]
	ldr	r9, [r9, #4]
	lsl	r3, r3, #3
	and	r1, r1, r4
	add	r2, r2, #1
	strh	r8, [ip, r3]	@ movhi
	add	r9, r10, r9, lsl #5
	add	r3, ip, r3
	orr	r1, r1, lr
	cmp	r2, #3
	strh	r9, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bne	.L18
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	deckOAM
	.word	shadowOAM
	.word	.LANCHOR0
	.word	cardsForSale
	.word	masterDeck
	.word	511
	.word	-16384
	.size	drawMerchantCards, .-drawMerchantCards
	.align	2
	.global	drawMerchant
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMerchant, %function
drawMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L25
	ldr	r3, [r2, #48]
	ldr	r1, [r2, #68]
	ldr	r0, [r2, #60]
	str	lr, [sp, #-4]!
	ldr	ip, .L25+4
	ldrb	lr, [r2, #44]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, [r2, #64]
	lsl	r1, r1, #3
	lsr	r3, r3, #23
	add	r2, r2, r0, lsl #5
	orr	r3, r3, #16384
	add	r0, ip, r1
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	player
	.word	shadowOAM
	.size	drawMerchant, .-drawMerchant
	.align	2
	.global	checkMerchantSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkMerchantSelector, %function
checkMerchantSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	checkMerchantSelector, .-checkMerchantSelector
	.global	cardsCol
	.comm	deckOAM,12,4
	.comm	cardsForSale,12,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cardsCol, %object
	.size	cardsCol, 12
cardsCol:
	.word	25
	.word	87
	.word	150
	.ident	"GCC: (devkitARM release 47) 7.1.0"
