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
	.file	"shop.c"
	.text
	.align	2
	.global	drawShopCards
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShopCards, %function
drawShopCards:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L8
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r2, .L8+4
	mov	r3, #0
	ldr	r2, [r2, #4]
	mov	r1, #218
	mov	r0, #5
	ldr	ip, .L8+8
	mov	lr, pc
	bx	ip
	mov	r4, #0
	ldr	r5, .L8+12
	ldr	r7, .L8+16
	ldr	r6, .L8+20
	ldr	fp, .L8+24
.L4:
	ldr	r1, [r6, r4, lsl #2]
	lsl	r10, r1, #23
	lsr	r10, r10, #23
	mvn	r10, r10, lsl #18
	ldr	r0, [r5, r4, lsl #2]
	ldr	r2, .L8+28
	add	r0, r0, r0, lsl #1
	add	r9, r2, r0, lsl #4
	ldr	ip, [r9, #44]
	ldr	r3, .L8+32
	str	ip, [sp, #4]
	ldr	r3, [r3, r4, lsl #2]
	ldr	ip, [r7, r4, lsl #2]
	cmp	r3, #0
	lsl	lr, ip, #3
	mvn	r10, r10, lsr #18
	add	r1, r1, #23
	add	r8, fp, lr
	mov	ip, lr
	bne	.L2
	mov	ip, #70
	ldr	r0, [r2, r0, lsl #4]
	ldr	r9, [r9, #4]
	add	r9, r0, r9, lsl #5
	ldr	r2, [sp, #4]
	mov	r0, #61
	strh	ip, [fp, lr]	@ movhi
	strh	r9, [r8, #4]	@ movhi
	strh	r10, [r8, #2]	@ movhi
	ldr	ip, .L8+8
	mov	lr, pc
	bx	ip
.L3:
	add	r4, r4, #1
	cmp	r4, #3
	bne	.L4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L2:
	mov	lr, #512	@ movhi
	ldr	r2, [sp, #4]
	mov	r3, #1
	strh	lr, [fp, ip]	@ movhi
	mov	r0, #61
	ldr	ip, .L8+8
	mov	lr, pc
	bx	ip
	b	.L3
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	player
	.word	printNum
	.word	.LANCHOR1
	.word	deckOAM
	.word	.LANCHOR0
	.word	shadowOAM
	.word	masterDeck
	.word	.LANCHOR1+12
	.size	drawShopCards, .-drawShopCards
	.align	2
	.global	initShop
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShop, %function
initShop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r2
	ldr	r1, .L18
	sub	sp, sp, #44
	ldr	r4, .L18+4
	str	r2, [r1]
	mov	r7, r0
	mov	lr, pc
	bx	r4
	mov	fp, r9
	ldr	r2, .L18+8
	ldr	r8, .L18+12
	str	r0, [r2, #68]
	ldr	r6, .L18+16
	ldr	r10, .L18+20
.L12:
	cmp	r7, #1
	beq	.L15
.L17:
	mov	lr, pc
	bx	r4
	lsl	r5, r9, #2
	add	r9, r9, #1
	cmp	r9, #3
	str	r0, [r6, r5]
	bne	.L12
	mov	r3, #0
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	lr, #140
	mov	ip, #215
	mov	r1, #22
	mov	r2, #6
	str	r0, [sp, #36]
	str	lr, [sp, #12]
	str	ip, [sp, #16]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	add	lr, sp, #4
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	ip, .L18+24
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawShopCards
.L15:
	mov	lr, pc
	bx	r10
	ldr	r1, .L18+28
	smull	r2, r3, r0, r1
	asr	r1, r0, #31
	rsb	r2, r1, r3, asr #2
	add	r2, r2, r2, lsl #2
	ldr	r3, .L18+32
	sub	r2, r0, r2, lsl #1
	str	fp, [r3, r9, lsl #2]
	str	r2, [r8, r9, lsl #2]
	b	.L17
.L19:
	.align	2
.L18:
	.word	leaveShop
	.word	getOAMIndex
	.word	player
	.word	.LANCHOR1
	.word	deckOAM
	.word	rand
	.word	exitButton
	.word	1717986919
	.word	.LANCHOR1+12
	.size	initShop, .-initShop
	.align	2
	.global	drawShop
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShop, %function
drawShop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L22
	push	{r4, r5, lr}
	ldr	r3, [r1, #68]
	ldr	lr, .L22+4
	ldr	r0, [r1, #48]
	ldr	r4, .L22+8
	ldrb	r5, [r1, #44]	@ zero_extendqisi2
	ldr	ip, .L22+12
	ldr	r2, [lr, #12]
	lsl	r3, r3, #3
	and	r0, r0, r4
	strh	r5, [ip, r3]	@ movhi
	orr	r0, r0, #16384
	add	r3, ip, r3
	and	r2, r2, r4
	ldr	r4, [lr, #32]
	strh	r0, [r3, #2]	@ movhi
	add	r0, r1, #60
	ldm	r0, {r0, r1}
	add	r1, r1, r0, lsl #5
	ldr	r5, [lr, #24]
	strh	r1, [r3, #4]	@ movhi
	ldr	r3, [lr, #28]
	ldrb	r0, [lr, #8]	@ zero_extendqisi2
	lsl	r4, r4, #3
	add	r1, ip, r4
	add	r3, r3, r5, lsl #5
	orr	r2, r2, #16384
	strh	r0, [ip, r4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	player
	.word	exitButton
	.word	511
	.word	shadowOAM
	.size	drawShop, .-drawShop
	.align	2
	.global	checkShopSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkShopSelector, %function
checkShopSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r8, .L37
	ldr	r4, .L37+4
	ldr	r7, .L37+8
	ldr	r6, .L37+12
	ldr	r9, .L37+16
	sub	sp, sp, #20
	add	r10, r8, #12
.L26:
	mov	r1, #39
	mov	r0, #51
	mov	ip, #74
	ldr	r2, [r7, r5, lsl #2]
	add	r2, r2, #12
	str	r2, [sp, #4]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #40]
	ldr	r1, [r4, #48]
	ldr	r0, [r4, #44]
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	lsl	fp, r5, #2
	beq	.L25
	ldr	r3, [r8, r5, lsl #2]
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #4
	ldr	r2, [r3, #44]
	ldr	r3, [r4, #4]
	cmp	r2, r3
	bgt	.L25
	ldr	r1, [r4, #16]
	cmp	r1, #39
	ble	.L36
.L25:
	add	r5, r5, #1
	cmp	r5, #3
	bne	.L26
	mov	ip, #15
	ldr	r3, .L37+20
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	str	r2, [sp, #4]
	str	r1, [sp]
	add	r0, r4, #44
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #40]
	ldm	r0, {r0, r1}
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L37+24
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	mov	r1, #1
	sub	r3, r3, r2
	str	r1, [fp, r10]
	str	r3, [r4, #4]
	bl	drawShopCards
	mov	r0, #0
	ldr	r3, [r4, #16]
	ldr	r1, [fp, r8]
	add	r3, r3, #9
	add	r2, r4, r3, lsl #3
	str	r0, [r4, r3, lsl #3]
	str	r1, [r2, #4]
	ldr	r3, [r4, #16]
	add	r3, r3, #1
	str	r3, [r4, #16]
	b	.L25
.L38:
	.align	2
.L37:
	.word	.LANCHOR1
	.word	player
	.word	.LANCHOR0
	.word	collision
	.word	masterDeck
	.word	exitButton
	.word	leaveShop
	.size	checkShopSelector, .-checkShopSelector
	.align	2
	.global	updateShop
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShop, %function
updateShop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L40
	ldr	r3, .L48+4
	ldr	r2, [r3, #36]
	ldr	r1, [r3, #48]
	rsb	r2, r2, #238
	cmp	r1, r2
	ldrlt	r2, [r3, #56]
	addlt	r1, r2, r1
	strlt	r1, [r3, #48]
.L40:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L41
	ldr	r2, .L48+4
	ldr	r3, [r2, #48]
	cmp	r3, #2
	ldrgt	r1, [r2, #56]
	subgt	r3, r3, r1
	strgt	r3, [r2, #48]
.L41:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L42
	ldr	r2, .L48+4
	ldr	r3, [r2, #44]
	cmp	r3, #2
	ldrgt	r1, [r2, #52]
	subgt	r3, r3, r1
	strgt	r3, [r2, #44]
.L42:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L43
	ldr	r3, .L48+4
	ldr	r2, [r3, #40]
	ldr	r1, [r3, #44]
	rsb	r2, r2, #158
	cmp	r1, r2
	ldrlt	r2, [r3, #52]
	addlt	r1, r2, r1
	strlt	r1, [r3, #44]
.L43:
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L48+12
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	checkShopSelector
.L49:
	.align	2
.L48:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.size	updateShop, .-updateShop
	.comm	exitButton,36,4
	.global	cardsCol
	.comm	leaveShop,4,4
	.comm	deckOAM,12,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cardsCol, %object
	.size	cardsCol, 12
cardsCol:
	.word	25
	.word	87
	.word	150
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cardsForSale, %object
	.size	cardsForSale, 12
cardsForSale:
	.space	12
	.type	cardsBought, %object
	.size	cardsBought, 12
cardsBought:
	.space	12
	.ident	"GCC: (devkitARM release 47) 7.1.0"
