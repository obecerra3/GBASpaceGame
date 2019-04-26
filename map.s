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
	.file	"map.c"
	.text
	.align	2
	.global	initMapOAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMapOAM, %function
initMapOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L6
	mov	lr, pc
	bx	r5
	ldr	r6, .L6+4
	str	r0, [r6, #68]
	mov	lr, pc
	bx	r5
	ldr	r4, .L6+8
	str	r0, [r6, #32]
	add	r6, r4, #800
.L2:
	mov	lr, pc
	bx	r5
	add	r4, r4, #32
	str	r0, [r4, #-4]
	cmp	r4, r6
	bne	.L2
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+12
	pop	{r4, r5, r6, lr}
	str	r0, [r3, #28]
	bx	lr
.L7:
	.align	2
.L6:
	.word	getOAMIndex
	.word	player
	.word	.LANCHOR0
	.word	bossNode
	.size	initMapOAM, .-initMapOAM
	.align	2
	.global	heal
	.syntax unified
	.arm
	.fpu softvfp
	.type	heal, %function
heal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2]
	cmp	r3, #80
	movgt	r3, #100
	addle	r3, r3, #20
	str	r3, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	player
	.size	heal, .-heal
	.align	2
	.global	drawMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMap, %function
drawMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #255
	mov	r0, #175
	mov	r3, #16
	ldr	fp, .L31
	ldr	r1, [fp]
	ldr	r4, .L31+4
	ldr	r8, .L31+8
	sub	sp, sp, #28
	sub	r1, r1, #15
	ldr	ip, [r4, #68]
	ldr	r2, [r4, #48]
	ldrb	r6, [r4, #44]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldr	r1, [r8]
	sub	r1, r1, #15
	str	r1, [sp]
	str	lr, [sp, #12]
	ldr	r1, [r4, #60]
	str	r0, [sp, #8]
	ldr	r5, .L31+12
	ldr	lr, [r4, #64]
	ldr	r10, .L31+16
	lsl	ip, ip, #3
	and	r2, r2, r5
	ldr	r0, [r4, #28]
	add	lr, lr, r1, lsl #5
	orr	r2, r2, #16384
	ldr	r1, [r4, #24]
	strh	r6, [r10, ip]	@ movhi
	add	ip, r10, ip
	strh	r2, [ip, #2]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	mov	r2, r3
	ldr	ip, .L31+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L14
	ldr	r1, [fp]
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #28]
	ldr	r2, [r8]
	sub	r3, r3, r1
	ldr	r0, .L31+24
	and	r5, r5, r3
	ldr	r3, [r4, #32]
	ldr	r0, [r0]
	sub	ip, ip, r2
	lsl	r3, r3, #3
	and	ip, ip, #255
	strh	ip, [r10, r3]	@ movhi
	orr	r5, r5, #16384
	cmp	r0, #26
	add	ip, r10, r3
	strh	r5, [ip, #2]	@ movhi
	movle	r0, #576
	bgt	.L29
.L15:
	add	r3, r10, r3
	strh	r0, [r3, #4]	@ movhi
.L16:
	mov	lr, #255
	mov	ip, #175
	mov	r3, #16
	sub	r1, r1, #15
	str	r1, [sp, #4]
	ldr	r4, .L31+28
	sub	r2, r2, #15
	ldr	r1, [r4, #4]
	str	r2, [sp]
	mov	r2, r3
	ldr	r0, [r4]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	ldr	ip, .L31+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L17
	ldr	r1, [fp]
	ldr	r3, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r8]
	sub	r3, r3, r1
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #8]
	sub	r2, r2, r0
	lsl	r3, r3, #23
	ldr	r0, [r4, #12]
	lsl	r1, r1, #3
	lsr	r3, r3, #23
	add	r0, r0, ip, lsl #5
	orr	r3, r3, #16384
	add	ip, r10, r1
	and	r2, r2, #255
	strh	r2, [r10, r1]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
.L19:
	ldr	r4, .L31+32
	b	.L18
.L20:
	mov	r3, #512	@ movhi
	lsl	r5, r5, #3
	strh	r3, [r10, r5]	@ movhi
	ldr	r3, .L31+36
	add	r4, r4, #32
	cmp	r3, r4
	beq	.L30
.L18:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ldr	r5, [r4, #28]
	bne	.L20
	mov	r0, #175
	mov	ip, #255
	mov	r3, #16
	ldr	r1, [fp]
	ldr	r2, [r8]
	sub	r1, r1, #15
	sub	r2, r2, #15
	ldr	r9, [r4]
	ldr	r6, [r4, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r0, [sp, #8]
	str	ip, [sp, #12]
	ldr	ip, [r4, #8]
	mov	r2, r3
	mov	r1, r6
	str	ip, [sp, #20]
	mov	r0, r9
	ldr	ip, .L31+20
	ldr	r7, [r4, #12]
	mov	lr, pc
	bx	ip
	ldr	ip, [sp, #20]
	lsl	r2, r5, #3
	cmp	r0, #0
	add	r1, r10, r2
	add	r7, r7, ip, lsl #5
	beq	.L20
	ldr	r3, [r8]
	ldr	r0, [fp]
	sub	r3, r9, r3
	and	r3, r3, #255
	sub	r6, r6, r0
	strh	r3, [r10, r2]	@ movhi
	lsl	r6, r6, #23
	ldr	r3, .L31+36
	lsr	r6, r6, #23
	add	r4, r4, #32
	orr	r6, r6, #16384
	cmp	r3, r4
	strh	r6, [r1, #2]	@ movhi
	strh	r7, [r1, #4]	@ movhi
	bne	.L18
.L30:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	mov	r2, #512
	ldr	r3, [r4, #28]
	lsl	r3, r3, #3
	strh	r2, [r10, r3]	@ movhi
	b	.L19
.L14:
	mov	r2, #512
	ldr	r3, [r4, #32]
	lsl	r3, r3, #3
	strh	r2, [r10, r3]	@ movhi
	ldr	r1, [fp]
	ldr	r2, [r8]
	b	.L16
.L29:
	cmp	r0, #53
	movgt	r0, #704
	movle	r0, #640
	b	.L15
.L32:
	.align	2
.L31:
	.word	mapCol
	.word	player
	.word	mapRow
	.word	511
	.word	shadowOAM
	.word	collision
	.word	frame
	.word	bossNode
	.word	.LANCHOR0
	.word	.LANCHOR0+800
	.size	drawMap, .-drawMap
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.align	2
	.global	distanceBetween
	.syntax unified
	.arm
	.fpu softvfp
	.type	distanceBetween, %function
distanceBetween:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	r0, r0, r2
	ldr	r4, .L35
	mov	r5, r3
	mov	r8, r1
	mov	lr, pc
	bx	r4
	mov	r6, r0
	sub	r0, r8, r5
	mov	r7, r1
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	ldr	r4, .L35+4
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r6, r0
	mov	r7, r1
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r4
	ldr	r4, .L35+8
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_dadd
	.word	sqrt
	.word	__aeabi_d2iz
	.size	distanceBetween, .-distanceBetween
	.align	2
	.global	checkMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkMap, %function
checkMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L47
	sub	sp, sp, #32
	ldr	r9, .L47+4
	add	r10, r4, #800
	b	.L40
.L46:
	cmp	r8, #0
	moveq	r5, #1
	moveq	r6, #18
.L39:
	mov	lr, sp
	mov	ip, r4
	str	r8, [sp, #16]
	str	r5, [sp, #20]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, #32
	ldm	lr, {r0, r1, r2, r3}
	cmp	r10, r4
	stm	ip, {r0, r1, r2, r3}
	beq	.L45
.L40:
	mov	lr, r4
	mov	ip, sp
	ldmia	lr!, {r0, r1, r2, r3}
	mov	r7, r1
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	mov	r3, r7
	ldr	r2, [r4]
	ldr	r1, [r9, #24]
	ldr	r0, [r9, #28]
	ldr	r6, [r4, #8]
	ldr	r8, [r4, #16]
	ldr	r5, [r4, #20]
	bl	distanceBetween
	cmp	r0, #100
	ble	.L46
	cmp	r8, #0
	moveq	r5, #0
	moveq	r6, #16
	b	.L39
.L45:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.word	player
	.size	checkMap, .-checkMap
	.align	2
	.global	initMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMap, %function
initMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mvn	r2, #39
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	ip, #19
	mvn	lr, #10
	ldr	r1, .L58
	ldr	r0, .L58+4
	sub	sp, sp, #44
	str	r3, [r0]
	str	r3, [r1]
	mov	r6, r3
	str	r3, [sp]
	ldr	r3, .L58+8
	ldr	r1, .L58+12
	ldr	r0, .L58+16
	str	r2, [r3]
	ldr	r3, .L58+20
	str	lr, [r1, #24]
	str	ip, [r1, #28]
	str	r2, [r0]
	str	r3, [sp, #4]
	ldr	r5, .L58+24
	ldr	r7, .L58+28
.L50:
	mov	r4, #0
	ldr	r9, [sp, #4]
.L53:
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	smull	r10, fp, r8, r7
	smull	r2, r3, r0, r7
	asr	r1, r8, #31
	rsb	fp, r1, fp, asr #4
	asr	r10, r0, #31
	rsb	r10, r10, r3, asr #4
	add	fp, fp, fp, lsl #2
	ldr	r3, [sp]
	add	r10, r10, r10, lsl #2
	sub	fp, r8, fp, lsl #3
	sub	r10, r0, r10, lsl #3
	add	fp, fp, r3
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	cmp	r0, #1
	add	r10, r10, r4
	ble	.L57
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #2
.L52:
	mov	r2, #16
	add	r4, r4, #64
	add	r3, r0, #1
	lsl	r3, r3, #1
	cmp	r4, #320
	str	fp, [r9]
	str	r10, [r9, #4]
	str	r2, [r9, #8]
	str	r6, [r9, #16]
	str	r6, [r9, #20]
	str	r0, [r9, #24]
	str	r3, [r9, #12]
	add	r9, r9, #32
	bne	.L53
	ldr	r3, [sp]
	add	r3, r3, #64
	str	r3, [sp]
	cmp	r3, #320
	ldr	r3, [sp, #4]
	add	r3, r3, #160
	str	r3, [sp, #4]
	bne	.L50
	mov	r3, #300
	mov	r0, #20
	mov	r1, #2
	mov	r2, #3
	str	r6, [sp, #24]
	str	r2, [sp, #32]
	str	r6, [sp, #28]
	str	r6, [sp, #36]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	add	lr, sp, #8
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	ip, .L58+32
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	checkMap
.L57:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	b	.L52
.L59:
	.align	2
.L58:
	.word	frame
	.word	stateToGo
	.word	mapCol
	.word	player
	.word	mapRow
	.word	.LANCHOR0
	.word	rand
	.word	1717986919
	.word	bossNode
	.size	initMap, .-initMap
	.align	2
	.global	checkMapSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkMapSelector, %function
checkMapSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L77
	ldr	r3, [r9, #44]
	sub	sp, sp, #60
	str	r3, [sp, #20]
	ldr	r3, .L77+4
	ldr	r4, .L77+8
	ldr	lr, [r3]
	ldr	r3, .L77+12
	ldr	fp, [r9, #48]
	ldr	r6, [r3]
	add	r7, r4, #800
	b	.L65
.L61:
	add	r4, r4, #32
	cmp	r7, r4
	beq	.L76
.L65:
	mov	r8, r4
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #16]
	adds	r10, r5, #0
	movne	r10, #1
	cmp	r3, #0
	movne	r10, #0
	ldmia	r8!, {r0, r1, r2, r3}
	add	ip, sp, #24
	stmia	ip!, {r0, r1, r2, r3}
	ldm	r8, {r0, r1, r2, r3}
	cmp	r10, #0
	stm	ip, {r0, r1, r2, r3}
	beq	.L61
	mov	r3, #16
	ldr	r8, [r4, #4]
	ldr	r10, [r4]
	sub	r6, r8, r6
	sub	lr, r10, lr
	lsl	r6, r6, #23
	lsr	r6, r6, #23
	and	lr, lr, #255
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	str	r6, [sp, #4]
	str	lr, [sp]
	mov	r2, r3
	mov	r1, fp
	ldr	r0, [sp, #20]
	ldr	ip, .L77+16
	ldr	r6, [r4, #24]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L62
.L75:
	ldr	r3, [r9, #44]
	str	r3, [sp, #20]
	ldr	r3, .L77+4
	add	r4, r4, #32
	ldr	lr, [r3]
	ldr	r3, .L77+12
	cmp	r7, r4
	ldr	fp, [r9, #48]
	ldr	r6, [r3]
	bne	.L65
.L76:
	mov	r3, #16
	ldr	r4, .L77+20
	ldr	r2, [r4, #4]
	sub	r6, r2, r6
	ldr	r2, [r4]
	lsl	r6, r6, #23
	sub	lr, r2, lr
	and	lr, lr, #255
	lsr	r6, r6, #23
	mov	r1, fp
	ldr	r0, [sp, #20]
	str	r6, [sp, #4]
	str	lr, [sp]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	r2, r3
	ldr	ip, .L77+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L60
	mov	r2, #1
	mov	r0, #3
	ldr	r3, .L77+24
	ldr	r1, .L77+28
	str	r2, [r3]
	ldm	r4, {r2, r3}
	str	r0, [r1]
	str	r2, [r9, #28]
	str	r3, [r9, #24]
.L60:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L62:
	str	r10, [r9, #28]
	str	r8, [r9, #24]
	bl	checkMap
	ldr	r2, .L77+28
	add	r3, r6, #3
	cmp	r6, #3
	str	r3, [r2]
	bne	.L63
	ldr	r3, [r9]
	cmp	r3, #80
	movgt	r3, #100
	addle	r3, r3, #20
	str	r3, [r9]
.L63:
	mov	r3, #1
	mov	ip, r4
	str	r5, [sp, #44]
	str	r6, [sp, #48]
	str	r3, [sp, #40]
	str	r8, [sp, #28]
	add	lr, sp, #24
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	b	.L75
.L78:
	.align	2
.L77:
	.word	player
	.word	mapRow
	.word	.LANCHOR0
	.word	mapCol
	.word	collision
	.word	bossNode
	.word	bossBattle
	.word	stateToGo
	.size	checkMapSelector, .-checkMapSelector
	.align	2
	.global	updateMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap, %function
updateMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L107
	ldrh	r3, [r3, #48]
	tst	r3, #16
	push	{r4, lr}
	bne	.L81
	ldr	r2, .L107+4
	ldr	r1, [r2, #36]
	ldr	r3, [r2, #48]
	rsb	r1, r1, #238
	cmp	r3, r1
	ldrlt	r1, [r2, #56]
	addlt	r3, r3, r1
	strlt	r3, [r2, #48]
	cmp	r3, #210
	bgt	.L104
.L81:
	ldr	r3, .L107
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L85
	ldr	r2, .L107+4
	ldr	r3, [r2, #48]
	cmp	r3, #4
	ble	.L86
	ldr	r1, [r2, #56]
	sub	r3, r3, r1
	cmp	r3, #29
	str	r3, [r2, #48]
	ble	.L86
.L85:
	ldr	r3, .L107
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L89
	ldr	r2, .L107+4
	ldr	r3, [r2, #44]
	cmp	r3, #2
	ble	.L90
	ldr	r1, [r2, #52]
	sub	r3, r3, r1
	cmp	r3, #29
	str	r3, [r2, #44]
	ble	.L90
.L89:
	ldr	r3, .L107
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L93
	ldr	r2, .L107+4
	add	r1, r2, #40
	ldm	r1, {r1, r3}
	rsb	r1, r1, #158
	cmp	r3, r1
	ldrlt	r1, [r2, #52]
	addlt	r3, r3, r1
	strlt	r3, [r2, #44]
	cmp	r3, #130
	bgt	.L105
.L93:
	ldr	r3, .L107+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L96
	ldr	r3, .L107+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L106
.L96:
	ldr	r2, .L107+16
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #81
	movgt	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	bx	lr
.L105:
	ldr	r2, .L107+20
	ldr	r3, [r2]
	cmp	r3, #179
	addle	r3, r3, #3
	strle	r3, [r2]
	b	.L93
.L90:
	ldr	r2, .L107+20
	ldr	r3, [r2]
	cmn	r3, #39
	subge	r3, r3, #3
	strge	r3, [r2]
	b	.L89
.L86:
	ldr	r2, .L107+24
	ldr	r3, [r2]
	cmn	r3, #29
	subge	r3, r3, #3
	strge	r3, [r2]
	b	.L85
.L104:
	ldr	r2, .L107+24
	ldr	r3, [r2]
	cmp	r3, #109
	addle	r3, r3, #3
	strle	r3, [r2]
	b	.L81
.L106:
	bl	checkMapSelector
	b	.L96
.L108:
	.align	2
.L107:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.word	frame
	.word	mapRow
	.word	mapCol
	.size	updateMap, .-updateMap
	.align	2
	.global	getShipFrame
	.syntax unified
	.arm
	.fpu softvfp
	.type	getShipFrame, %function
getShipFrame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L113
	ldr	r3, [r3]
	cmp	r3, #26
	ble	.L111
	cmp	r3, #54
	movlt	r0, #20
	movge	r0, #22
	bx	lr
.L111:
	mov	r0, #18
	bx	lr
.L114:
	.align	2
.L113:
	.word	frame
	.size	getShipFrame, .-getShipFrame
	.comm	frame,4,4
	.comm	bossNode,32,4
	.comm	mapCol,4,4
	.comm	mapRow,4,4
	.comm	stateToGo,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	map, %object
	.size	map, 800
map:
	.space	800
	.ident	"GCC: (devkitARM release 47) 7.1.0"
