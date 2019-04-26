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
	.file	"battle.c"
	.text
	.align	2
	.global	drawBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBattle, %function
drawBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L4
	ldr	r3, [r2, #48]
	ldr	r1, [r2, #68]
	ldr	r0, [r2, #60]
	str	lr, [sp, #-4]!
	ldr	ip, .L4+4
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
.L5:
	.align	2
.L4:
	.word	player
	.word	shadowOAM
	.size	drawBattle, .-drawBattle
	.align	2
	.global	drawPlayerStatus
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerStatus, %function
drawPlayerStatus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L15
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, [r3]
	cmp	r5, #20
	movle	r6, #6
	ble	.L7
	cmp	r5, #50
	movgt	r6, #5
	movle	r6, #7
.L7:
	mov	r3, #0
	mov	r8, #512
	ldr	r0, .L15+4
	ldr	ip, .L15+8
	ldr	r7, .L15+12
	add	r6, r6, #640
.L10:
	ldr	r2, [r0], #4
	cmp	r5, r3
	lsl	r1, r2, #3
	add	r4, r3, #25
	add	lr, ip, r1
	lslle	r2, r2, #3
	add	r3, r3, #5
	strhgt	r7, [ip, r1]	@ movhi
	strhle	r8, [ip, r2]	@ movhi
	strhgt	r4, [lr, #2]	@ movhi
	strhgt	r6, [lr, #4]	@ movhi
	cmp	r3, #80
	bne	.L10
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	player
	.word	playerHealthOAM
	.word	shadowOAM
	.word	-32700
	.size	drawPlayerStatus, .-drawPlayerStatus
	.align	2
	.global	drawBlockMeter
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlockMeter, %function
drawBlockMeter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #23
	mov	r2, #0
	mov	r8, #512
	mov	r7, #648
	ldr	r1, .L23
	ldr	ip, .L23+4
	ldr	r5, [r1, #8]
	ldr	lr, .L23+8
	ldr	r6, .L23+12
.L20:
	ldr	r1, [ip], #4
	lsl	r0, r1, #3
	cmp	r5, r2
	add	r4, lr, r0
	strhgt	r6, [lr, r0]	@ movhi
	lslle	r1, r1, #3
	strhgt	r3, [r4, #2]	@ movhi
	add	r2, r2, #6
	add	r3, r3, #5
	strhgt	r7, [r4, #4]	@ movhi
	strhle	r8, [lr, r1]	@ movhi
	lsl	r3, r3, #16
	cmp	r2, #30
	lsr	r3, r3, #16
	bne	.L20
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	player
	.word	playerBlockOAM
	.word	shadowOAM
	.word	-32689
	.size	drawBlockMeter, .-drawBlockMeter
	.align	2
	.global	drawEnemyStatus
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyStatus, %function
drawEnemyStatus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r7, .L38
	ldr	r5, [r7]
	cmp	r5, #20
	movle	r6, #6
	ble	.L26
	cmp	r5, #50
	movgt	r6, #5
	movle	r6, #7
.L26:
	mov	r3, #0
	mov	r9, #512
	ldr	ip, .L38+4
	ldr	r1, .L38+8
	ldr	r8, .L38+12
	add	r6, r6, #640
.L29:
	ldr	r2, [ip], #4
	cmp	r5, r3
	lsl	r0, r2, #3
	rsb	r4, r3, #205
	add	lr, r1, r0
	lslle	r2, r2, #3
	add	r3, r3, #5
	strhgt	r8, [r1, r0]	@ movhi
	strhle	r9, [r1, r2]	@ movhi
	strhgt	r4, [lr, #2]	@ movhi
	strhgt	r6, [lr, #4]	@ movhi
	cmp	r3, #80
	bne	.L29
	mov	r3, #207
	mov	r0, #0
	mov	r9, #512
	mov	r8, #648
	ldr	r5, [r7, #4]
	ldr	lr, .L38+16
	ldr	r6, .L38+20
.L32:
	ldr	r2, [lr], #4
	lsl	ip, r2, #3
	cmp	r5, r0
	add	r4, r1, ip
	strhgt	r6, [r1, ip]	@ movhi
	strhgt	r3, [r4, #2]	@ movhi
	sub	r3, r3, #5
	lsl	r3, r3, #16
	lslle	r2, r2, #3
	lsr	r3, r3, #16
	strhgt	r8, [r4, #4]	@ movhi
	strhle	r9, [r1, r2]	@ movhi
	cmp	r3, #182
	add	r0, r0, #6
	bne	.L32
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	enemy
	.word	enemyHealthOAM
	.word	shadowOAM
	.word	-32700
	.word	enemyBlockOAM
	.word	-32689
	.size	drawEnemyStatus, .-drawEnemyStatus
	.align	2
	.global	drawHand
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHand, %function
drawHand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L49
	mov	r8, r9
	mov	r2, #0
	mov	fp, #512
	ldr	r1, [r8], #4
	sub	sp, sp, #12
	and	r1, r1, #255
	ldr	r7, .L49+4
	ldr	r6, .L49+8
	ldr	lr, .L49+12
	ldr	r3, .L49+16
	ldr	r10, .L49+20
	str	r1, [sp, #4]
.L43:
	ldr	r1, [r6, r2, lsl #2]
	add	r1, r1, #9
	add	r0, lr, r1, lsl #3
	ldr	r1, [lr, r1, lsl #3]
	cmp	r1, #0
	ldr	r1, [r7, r2, lsl #2]
	lsl	ip, r1, #3
	lslne	r1, r1, #3
	add	r4, r3, ip
	strhne	fp, [r3, r1]	@ movhi
	bne	.L42
	ldr	r1, [r0, #4]
	ldr	r0, [r8, r2, lsl #2]
	and	r0, r0, r10
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	add	r1, r1, r1, lsl #1
	add	r1, r9, r1, lsl #4
	add	r1, r1, #20
	ldm	r1, {r1, r5}
	add	r5, r1, r5, lsl #5
	ldrh	r1, [sp, #4]
	strh	r1, [r3, ip]	@ movhi
	strh	r5, [r4, #4]	@ movhi
	strh	r0, [r4, #2]	@ movhi
.L42:
	add	r2, r2, #1
	cmp	r2, #4
	bne	.L43
	mov	r2, #512
	ldr	r0, .L49+24
	ldr	r4, [lr, #12]
	ldm	r0, {r1, r5, lr}
	lsl	r1, r1, #3
	ldr	ip, [r0, #12]
	strh	r2, [r3, r1]	@ movhi
	ldr	r1, [r0, #16]
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r1, r1, #3
	cmp	r4, #0
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	strh	r2, [r3, ip]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	ble	.L40
	mov	r2, #110
	mov	r6, #644
	ldr	r5, .L49+28
	add	r4, r0, r4, lsl #2
.L45:
	ldr	r1, [r0], #4
	lsl	r1, r1, #3
	add	ip, r3, r1
	add	lr, r2, #7
	strh	r5, [r3, r1]	@ movhi
	cmp	r0, r4
	strh	r2, [ip, #2]	@ movhi
	lsl	r2, lr, #16
	strh	r6, [ip, #4]	@ movhi
	lsr	r2, r2, #16
	bne	.L45
.L40:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.word	deckOAM
	.word	currentDeck
	.word	player
	.word	shadowOAM
	.word	511
	.word	actionPointsOAM
	.word	-32681
	.size	drawHand, .-drawHand
	.global	__aeabi_idivmod
	.align	2
	.global	newHand
	.syntax unified
	.arm
	.fpu softvfp
	.type	newHand, %function
newHand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, #0
	mov	r2, #4
	mov	r6, r5
	ldr	r3, .L67
	ldr	r8, .L67+4
	str	r2, [r3]
	ldr	r4, .L67+8
	ldr	r7, .L67+12
	sub	sp, sp, #20
.L52:
	mov	lr, pc
	bx	r8
	ldr	r9, [r4, #16]
	mov	r1, r9
	mov	lr, pc
	bx	r7
	cmp	r5, #0
	beq	.L53
	mov	r3, sp
	mov	r2, #0
	add	ip, r6, r3
.L55:
	ldr	r0, [r3], #4
	cmp	r0, r1
	moveq	r2, #1
	cmp	r3, ip
	bne	.L55
	cmp	r2, #0
	bne	.L52
.L53:
	add	r5, r5, #1
	add	r3, sp, #16
	add	r6, r3, r6
	cmp	r5, #4
	str	r1, [r6, #-16]
	lslne	r6, r5, #2
	bne	.L52
.L65:
	ldr	r3, .L67+16
	ldr	r2, [sp]
	ldmib	sp, {r0, r1}
	str	r2, [r3]
	ldr	r2, [sp, #12]
	cmp	r9, #0
	stmib	r3, {r0, r1, r2}
	ble	.L57
	mov	r2, #0
	ldr	r3, .L67+8
	add	r4, r4, r9, lsl #3
.L58:
	str	r2, [r3, #72]
	add	r3, r3, #8
	cmp	r4, r3
	bne	.L58
.L57:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawHand
.L68:
	.align	2
.L67:
	.word	cardsRemaining
	.word	rand
	.word	player
	.word	__aeabi_idivmod
	.word	currentDeck
	.size	newHand, .-newHand
	.align	2
	.global	initBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBattle, %function
initBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L84
	ldr	r3, .L84+4
	str	r2, [r6, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+8
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r0, #5
	beq	.L70
	ldr	r3, .L84+12
	ldr	r3, [r3]
	cmp	r3, #1
	movne	r0, #55
	moveq	r0, #80
.L70:
	mov	r3, #3
	ldr	r2, [r6, #16]
	cmp	r2, #0
	str	r3, [r6, #12]
	ble	.L71
	mov	r1, #0
	ldr	r3, .L84
	add	r2, r6, r2, lsl #3
.L72:
	str	r1, [r3, #72]
	add	r3, r3, #8
	cmp	r3, r2
	bne	.L72
.L71:
	mov	r4, #0
	ldr	r3, .L84+16
	ldr	ip, .L84+20
	ldr	r1, .L84+24
	ldr	r2, .L84+28
	ldr	r5, .L84+32
	stm	r3, {r0, r4}
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r5
	str	r0, [r6, #68]
	mov	lr, pc
	bx	r5
	ldr	r7, .L84+36
	str	r0, [r6, #32]
	ldr	r10, .L84+40
	ldr	r6, .L84+44
	ldr	r9, .L84+48
	ldr	r8, .L84+52
	ldr	fp, .L84+56
	b	.L75
.L73:
	cmp	r4, #15
	beq	.L83
.L74:
	add	r4, r4, #1
.L75:
	mov	lr, pc
	bx	r5
	str	r0, [r7], #4
	mov	lr, pc
	bx	r5
	cmp	r4, #4
	str	r0, [r6], #4
	bhi	.L73
	mov	lr, pc
	bx	r5
	str	r0, [r10, r4, lsl #2]
	mov	lr, pc
	bx	r5
	str	r0, [r9, r4, lsl #2]
	mov	lr, pc
	bx	r5
	cmp	r4, #4
	str	r0, [r8, r4, lsl #2]
	beq	.L74
	mov	lr, pc
	bx	r5
	cmp	r4, #15
	str	r0, [fp, r4, lsl #2]
	bne	.L74
.L83:
	bl	newHand
	bl	drawPlayerStatus
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawEnemyStatus
.L85:
	.align	2
.L84:
	.word	player
	.word	hideSprites
	.word	cheatOn
	.word	bossBattle
	.word	enemy
	.word	battleState
	.word	gameOver
	.word	gameWon
	.word	getOAMIndex
	.word	playerHealthOAM
	.word	playerBlockOAM
	.word	enemyHealthOAM
	.word	enemyBlockOAM
	.word	actionPointsOAM
	.word	deckOAM
	.size	initBattle, .-initBattle
	.align	2
	.global	drawBattleAfterPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBattleAfterPause, %function
drawBattleAfterPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawHand
	mov	r8, #512
	bl	drawEnemyStatus
	mov	r7, #648
	mov	r3, #23
	mov	r2, #0
	ldr	r1, .L92
	ldr	ip, .L92+4
	ldr	r5, [r1, #8]
	ldr	lr, .L92+8
	ldr	r6, .L92+12
.L89:
	ldr	r1, [ip], #4
	lsl	r0, r1, #3
	cmp	r5, r2
	add	r4, lr, r0
	strhgt	r6, [lr, r0]	@ movhi
	lslle	r1, r1, #3
	strhgt	r3, [r4, #2]	@ movhi
	add	r2, r2, #6
	add	r3, r3, #5
	strhgt	r7, [r4, #4]	@ movhi
	strhle	r8, [lr, r1]	@ movhi
	lsl	r3, r3, #16
	cmp	r2, #30
	lsr	r3, r3, #16
	bne	.L89
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawPlayerStatus
.L93:
	.align	2
.L92:
	.word	player
	.word	playerBlockOAM
	.word	shadowOAM
	.word	-32689
	.size	drawBattleAfterPause, .-drawBattleAfterPause
	.align	2
	.global	checkSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkSelector, %function
checkSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mvn	r6, #0
	mov	fp, #39
	mov	r10, #51
	ldr	r7, .L116
	ldr	r5, .L116+4
	ldr	r9, .L116+8
	sub	sp, sp, #20
	add	r8, r7, #4
.L96:
	ldr	r0, [r8, r4, lsl #2]
	add	r0, r0, #12
	ldr	ip, [r7]
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	ldr	r1, [r5, #48]
	stmib	sp, {r0, r10, fp}
	add	ip, ip, #4
	ldr	r0, [r5, #44]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r6, r4
	add	r4, r4, #1
	cmp	r4, #4
	bne	.L96
	cmn	r6, #1
	beq	.L94
	ldr	r3, .L116+12
	ldr	r3, [r3, r6, lsl #2]
	add	r2, r3, #9
	add	r3, r5, r2, lsl #3
	ldr	r3, [r3, #4]
	add	r3, r3, r3, lsl #1
	add	r3, r7, r3, lsl #4
	ldr	r0, [r3, #28]
	ldr	r1, [r5, #12]
	cmp	r0, r1
	bgt	.L94
	ldr	ip, [r5, r2, lsl #3]
	cmp	ip, #0
	bne	.L94
	mov	r6, #1
	ldr	lr, .L116+16
	ldr	r4, [r3, #32]
	ldr	r3, [lr, #4]
	subs	r3, r3, r4
	ldrmi	r3, [lr]
	strpl	r3, [lr, #4]
	submi	r4, r3, r4
	add	r3, r5, r2, lsl #3
	ldr	r3, [r3, #4]
	add	r3, r3, r3, lsl #1
	add	r7, r7, r3, lsl #4
	str	r6, [r5, r2, lsl #3]
	ldr	r3, [r7, #56]
	ldr	r6, [r5, #8]
	ldr	r2, [r7, #36]
	sub	r1, r1, r0
	stmmi	lr, {r4, ip}
	add	r6, r6, r2
	cmp	r3, #0
	str	r1, [r5, #12]
	str	r6, [r5, #8]
	bne	.L115
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r5, #12]
	add	r3, r3, #2
	cmp	r3, #5
	str	r3, [r5, #12]
	ble	.L114
	mov	r3, #5
	ldr	r1, .L116+20
	str	r3, [r5, #12]
	ldr	r2, [r1]
	b	.L101
.L94:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L115:
	bl	newHand
	ldr	r1, .L116+20
	ldr	r2, [r1]
	ldr	r6, [r5, #8]
	add	r2, r2, #1
.L101:
	mov	r3, #23
	mov	lr, #0
	mov	r7, #512
	mov	r5, #648
	sub	r2, r2, #1
	str	r2, [r1]
	ldr	ip, .L116+24
	ldr	r0, .L116+28
	ldr	r8, .L116+32
.L106:
	ldr	r2, [ip], #4
	lsl	r1, r2, #3
	cmp	lr, r6
	add	r4, r0, r1
	strhlt	r8, [r0, r1]	@ movhi
	lslge	r2, r2, #3
	strhlt	r3, [r4, #2]	@ movhi
	add	lr, lr, #6
	add	r3, r3, #5
	strhlt	r5, [r4, #4]	@ movhi
	strhge	r7, [r0, r2]	@ movhi
	lsl	r3, r3, #16
	cmp	lr, #30
	lsr	r3, r3, #16
	bne	.L106
	bl	drawHand
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawEnemyStatus
.L114:
	ldr	r1, .L116+20
	ldr	r2, [r1]
	b	.L101
.L117:
	.align	2
.L116:
	.word	.LANCHOR0
	.word	player
	.word	collision
	.word	currentDeck
	.word	enemy
	.word	cardsRemaining
	.word	playerBlockOAM
	.word	shadowOAM
	.word	-32689
	.size	checkSelector, .-checkSelector
	.align	2
	.global	updateBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBattle, %function
updateBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L159
	ldr	r3, [r7]
	cmp	r3, #0
	ldr	r9, .L159+4
	beq	.L152
	cmp	r3, #1
	ldr	r4, .L159+8
	beq	.L153
.L158:
	ldr	r8, .L159+12
.L122:
	ldr	r3, .L159+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L129
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #48]
	rsb	r3, r3, #238
	cmp	r2, r3
	ldrlt	r3, [r4, #56]
	addlt	r2, r3, r2
	strlt	r2, [r4, #48]
.L129:
	ldr	r3, .L159+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L130
	ldr	r3, [r4, #48]
	cmp	r3, #2
	ldrgt	r2, [r4, #56]
	subgt	r3, r3, r2
	strgt	r3, [r4, #48]
.L130:
	ldr	r3, .L159+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L131
	ldr	r3, [r4, #44]
	cmp	r3, #2
	ldrgt	r2, [r4, #52]
	subgt	r3, r3, r2
	strgt	r3, [r4, #44]
.L131:
	ldr	r3, .L159+16
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L132
	ldr	r3, [r4, #40]
	ldr	r2, [r4, #44]
	rsb	r3, r3, #158
	cmp	r2, r3
	ldrlt	r3, [r4, #52]
	addlt	r2, r3, r2
	strlt	r2, [r4, #44]
.L132:
	ldrh	r3, [r9]
	tst	r3, #2
	beq	.L133
	ldr	r3, .L159+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L156
.L133:
	ldr	r3, [r4]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, .L159+24
	strle	r2, [r3]
	ldr	r3, [r8]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, .L159+28
	strle	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L152:
	ldrh	r3, [r9]
	tst	r3, #1
	beq	.L120
	ldr	r3, .L159+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L157
.L120:
	ldr	r4, .L159+8
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L121
	ldr	r3, .L159+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L155
.L121:
	mov	r2, #1
	mov	r3, #3
	str	r2, [r7]
	str	r3, [r4, #12]
	bl	newHand
.L155:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L158
.L153:
	ldr	r3, .L159+36
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r3, #30
	movne	r3, #20
	mov	r0, #0
	ldr	ip, [r4, #8]
	subs	ip, ip, r3
	ldrmi	r2, [r4]
	movmi	ip, #0
	submi	r3, r2, r3
	strmi	r3, [r4]
	mov	r2, r0
	mov	r3, #23
	mov	fp, #512
	mov	r10, #648
	ldr	r8, .L159+12
	ldr	r1, [r8, #4]
	add	r1, r1, #5
	str	ip, [r4, #8]
	str	r1, [r8, #4]
	str	r0, [r7]
	ldr	lr, .L159+40
	ldr	r5, .L159+44
.L128:
	ldr	r1, [lr], #4
	cmp	ip, r2
	lsl	r0, r1, #3
	ldrgt	r1, .L159+48
	add	r6, r5, r0
	strhgt	r1, [r5, r0]	@ movhi
	lslle	r1, r1, #3
	strhgt	r3, [r6, #2]	@ movhi
	add	r2, r2, #6
	add	r3, r3, #5
	strhgt	r10, [r6, #4]	@ movhi
	strhle	fp, [r5, r1]	@ movhi
	lsl	r3, r3, #16
	cmp	r2, #30
	lsr	r3, r3, #16
	bne	.L128
	bl	drawPlayerStatus
	bl	drawEnemyStatus
	b	.L122
.L156:
	mov	r2, #1
	mov	r3, #3
	str	r2, [r7]
	str	r3, [r4, #12]
	bl	newHand
	b	.L133
.L157:
	bl	checkSelector
	b	.L120
.L160:
	.align	2
.L159:
	.word	battleState
	.word	oldButtons
	.word	player
	.word	enemy
	.word	67109120
	.word	buttons
	.word	gameOver
	.word	gameWon
	.word	cardsRemaining
	.word	bossBattle
	.word	playerBlockOAM
	.word	shadowOAM
	.word	-32689
	.size	updateBattle, .-updateBattle
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 464
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	ip, .L165
	sub	sp, sp, #468
	ldr	lr, .L165+4
	mov	r1, r3
	mov	r2, #392
	ldr	r4, .L165+8
	str	r3, [sp, #64]
	str	r3, [sp, #68]
	add	r0, sp, #72
	str	r3, [lr]
	str	r3, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L165+12
	mov	lr, pc
	bx	r3
	mov	r5, #3
	mov	r4, #16
	mov	r8, #65
	mov	r7, #105
	ldr	r3, .L165+16
	smull	r1, r2, r0, r3
	str	r4, [sp, #60]
	str	r5, [sp, #52]
	str	r5, [sp, #56]
	str	r4, [sp, #36]
	str	r4, [sp, #40]
	str	r8, [sp, #44]
	str	r7, [sp, #48]
	add	lr, sp, #36
	mov	r6, r0
	stm	sp, {r1-r2}
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #108
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	mov	fp, #70
	str	r3, [ip]
	mov	r10, #6
	mvn	ip, #19
	mvn	r9, #10
	add	r2, sp, #72
	mov	r1, r2
	ldr	r2, [sp, #4]
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	sub	r6, r6, r3, lsl r5
	mov	r2, #392
	ldr	r3, .L165+20
	str	r5, [sp, #84]
	ldr	r0, .L165+24
	str	r6, [sp, #76]
	str	fp, [sp, #72]
	str	r10, [sp, #88]
	str	r9, [sp, #96]
	str	ip, [sp, #100]
	str	r4, [sp, #112]
	str	r8, [sp, #116]
	str	r7, [sp, #120]
	str	r5, [sp, #124]
	str	r5, [sp, #128]
	str	r4, [sp, #132]
	mov	lr, pc
	bx	r3
	ldr	lr, .L165+28
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #12
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	ldr	r3, .L165+24
	stm	ip, {r0, r1}
	add	r2, sp, #8
	add	r0, r3, #48
.L162:
	ldr	r1, [r2, #4]!
	add	r3, r3, #8
	str	r1, [r3, #68]
	cmp	r3, r0
	bne	.L162
	add	sp, sp, #468
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	bossBattle
	.word	cheatOn
	.word	memset
	.word	rand
	.word	1717986919
	.word	memcpy
	.word	player
	.word	.LANCHOR1
	.size	initGame, .-initGame
	.comm	actionPointsOAM,20,4
	.comm	deckOAM,16,4
	.comm	enemyBlockOAM,20,4
	.comm	enemyHealthOAM,64,4
	.comm	playerBlockOAM,20,4
	.comm	playerHealthOAM,64,4
	.global	masterDeck
	.comm	buffer,200,4
	.comm	enemy,8,4
	.comm	player,392,4
	.comm	currentDeck,16,4
	.comm	battleState,4,4
	.comm	cardsRemaining,4,4
	.comm	cheatOn,4,4
	.comm	bossBattle,4,4
	.comm	gameWon,4,4
	.comm	gameOver,4,4
	.global	currentCardsRow
	.global	currentCardsCols
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	8
	.word	9
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	currentCardsRow, %object
	.size	currentCardsRow, 4
currentCardsRow:
	.word	101
	.type	currentCardsCols, %object
	.size	currentCardsCols, 16
currentCardsCols:
	.word	15
	.word	65
	.word	115
	.word	165
	.type	masterDeck, %object
	.size	masterDeck, 480
masterDeck:
	.word	16
	.word	0
	.word	1
	.word	7
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	0
	.word	0
	.word	1
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	8
	.word	24
	.word	0
	.word	2
	.word	19
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	33
	.word	8
	.word	0
	.word	2
	.word	0
	.word	15
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.word	16
	.word	8
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	21
	.word	8
	.word	8
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	18
	.word	0
	.word	8
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	25
	.word	24
	.word	16
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	31
	.word	24
	.word	8
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	58
	.word	24
	.word	24
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	65
	.ident	"GCC: (devkitARM release 47) 7.1.0"
