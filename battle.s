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
	ldr	r3, [r2, #44]
	ldr	r1, [r2, #64]
	ldr	r0, [r2, #56]
	str	lr, [sp, #-4]!
	ldr	ip, .L4+4
	ldrb	lr, [r2, #40]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, [r2, #60]
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
	ldr	r5, [r1, #4]
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
	ldr	r5, .L49+12
	ldr	r3, .L49+16
	ldr	r10, .L49+20
	str	r1, [sp, #4]
.L43:
	ldr	r1, [r6, r2, lsl #2]
	add	r1, r1, #8
	add	r1, r5, r1, lsl #3
	ldr	r0, [r1, #4]
	cmp	r0, #0
	ldr	r0, [r7, r2, lsl #2]
	lsl	ip, r0, #3
	lslne	r0, r0, #3
	add	lr, r3, ip
	strhne	fp, [r3, r0]	@ movhi
	bne	.L42
	ldr	r1, [r1, #8]
	add	r0, r1, r1, lsl #2
	add	r1, r1, r0, lsl #1
	ldr	r0, [r8, r2, lsl #2]
	and	r0, r0, r10
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	add	r1, r9, r1, lsl #2
	add	r1, r1, #20
	ldm	r1, {r1, r4}
	add	r4, r1, r4, lsl #5
	ldrh	r1, [sp, #4]
	strh	r1, [r3, ip]	@ movhi
	strh	r4, [lr, #4]	@ movhi
	strh	r0, [lr, #2]	@ movhi
.L42:
	add	r2, r2, #1
	cmp	r2, #4
	bne	.L43
	mov	r2, #512
	ldr	r0, .L49+24
	ldr	r4, [r5, #8]
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
	ldr	r9, [r4, #12]
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
	str	r2, [r3, #68]
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	mov	r1, #80
	mov	r3, #3
	ldr	r6, .L81+4
	ldr	r2, [r6, #12]
	cmp	r2, #0
	str	r1, [r6]
	str	r3, [r6, #8]
	ble	.L70
	mov	r3, r6
	mov	r1, #0
	add	r2, r6, r2, lsl #3
.L71:
	str	r1, [r3, #68]
	add	r3, r3, #8
	cmp	r3, r2
	bne	.L71
.L70:
	mov	r4, #0
	mov	ip, #5
	ldr	r3, .L81+8
	ldr	r1, .L81+12
	ldr	r2, .L81+16
	ldr	r0, .L81+20
	ldr	r5, .L81+24
	str	ip, [r3]
	str	r4, [r3, #4]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r0]
	mov	lr, pc
	bx	r5
	str	r0, [r6, #64]
	mov	lr, pc
	bx	r5
	ldr	r7, .L81+28
	str	r0, [r6, #28]
	ldr	r9, .L81+32
	ldr	r6, .L81+36
	ldr	r8, .L81+40
	ldr	r10, .L81+44
	b	.L74
.L72:
	cmp	r4, #15
	beq	.L80
.L73:
	add	r4, r4, #1
.L74:
	mov	lr, pc
	bx	r5
	str	r0, [r7], #4
	mov	lr, pc
	bx	r5
	cmp	r4, #4
	str	r0, [r6], #4
	bhi	.L72
	mov	lr, pc
	bx	r5
	str	r0, [r9, r4, lsl #2]
	mov	lr, pc
	bx	r5
	cmp	r4, #4
	str	r0, [r8, r4, lsl #2]
	beq	.L73
	mov	lr, pc
	bx	r5
	cmp	r4, #15
	str	r0, [r10, r4, lsl #2]
	bne	.L73
.L80:
	bl	newHand
	bl	drawPlayerStatus
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawEnemyStatus
.L82:
	.align	2
.L81:
	.word	hideSprites
	.word	player
	.word	enemy
	.word	gameOver
	.word	gameWon
	.word	battleState
	.word	getOAMIndex
	.word	playerHealthOAM
	.word	playerBlockOAM
	.word	enemyHealthOAM
	.word	enemyBlockOAM
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
	ldr	r1, .L89
	ldr	ip, .L89+4
	ldr	r5, [r1, #4]
	ldr	lr, .L89+8
	ldr	r6, .L89+12
.L86:
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
	bne	.L86
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawPlayerStatus
.L90:
	.align	2
.L89:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, #0
	mvn	r7, #0
	ldr	r6, .L113
	ldr	r5, .L113+4
	ldr	r9, .L113+8
	sub	sp, sp, #20
	add	r8, r6, #4
.L93:
	ldr	lr, [r8, r4, lsl #2]
	ldr	ip, [r6]
	add	lr, lr, #12
	add	r0, r5, #40
	ldr	r3, [r5, #32]
	ldr	r2, [r5, #36]
	ldm	r0, {r0, r1}
	str	lr, [sp, #4]
	add	ip, ip, #4
	ldr	lr, [r6, #460]
	str	ip, [sp]
	ldr	ip, [r6, #464]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, r4
	add	r4, r4, #1
	cmp	r4, #4
	bne	.L93
	cmn	r7, #1
	beq	.L91
	ldr	r3, .L113+12
	ldr	r2, [r3, r7, lsl #2]
	add	r2, r2, #8
	add	ip, r5, r2, lsl #3
	ldr	r3, [ip, #8]
	add	r1, r3, r3, lsl #2
	add	r3, r3, r1, lsl #1
	add	r3, r6, r3, lsl #2
	ldr	r0, [r3, #28]
	ldr	r1, [r5, #8]
	cmp	r0, r1
	bgt	.L91
	ldr	lr, [ip, #4]
	cmp	lr, #0
	bne	.L91
	mov	r8, #1
	ldr	r4, .L113+16
	ldr	r7, [r3, #32]
	ldr	r3, [r4, #4]
	subs	r3, r3, r7
	ldrmi	r3, [r4]
	add	r2, r5, r2, lsl #3
	submi	r7, r3, r7
	strpl	r3, [r4, #4]
	ldr	r3, [r2, #8]
	add	r2, r3, r3, lsl #2
	add	r3, r3, r2, lsl #1
	add	r6, r6, r3, lsl #2
	stmmi	r4, {r7, lr}
	ldr	r2, [r6, #36]
	ldr	r7, [r5, #4]
	ldr	r3, [r6, #56]
	sub	r1, r1, r0
	add	r7, r7, r2
	cmp	r3, #0
	str	r1, [r5, #8]
	str	r8, [ip, #4]
	str	r7, [r5, #4]
	bne	.L112
	ldr	r3, [r6, #60]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r5, #8]
	add	r3, r3, #2
	cmp	r3, #5
	str	r3, [r5, #8]
	ble	.L111
	mov	r3, #5
	ldr	r1, .L113+20
	str	r3, [r5, #8]
	ldr	r2, [r1]
	b	.L98
.L91:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L112:
	bl	newHand
	ldr	r1, .L113+20
	ldr	r2, [r1]
	ldr	r7, [r5, #4]
	add	r2, r2, #1
.L98:
	mov	r3, #23
	mov	lr, #0
	mov	r6, #512
	mov	r5, #648
	sub	r2, r2, #1
	str	r2, [r1]
	ldr	ip, .L113+24
	ldr	r0, .L113+28
	ldr	r8, .L113+32
.L103:
	ldr	r2, [ip], #4
	lsl	r1, r2, #3
	cmp	lr, r7
	add	r4, r0, r1
	strhlt	r8, [r0, r1]	@ movhi
	lslge	r2, r2, #3
	strhlt	r3, [r4, #2]	@ movhi
	add	lr, lr, #6
	add	r3, r3, #5
	strhlt	r5, [r4, #4]	@ movhi
	strhge	r6, [r0, r2]	@ movhi
	lsl	r3, r3, #16
	cmp	lr, #30
	lsr	r3, r3, #16
	bne	.L103
	bl	drawHand
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawEnemyStatus
.L111:
	ldr	r1, .L113+20
	ldr	r2, [r1]
	b	.L98
.L114:
	.align	2
.L113:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L149
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L143
	cmp	r3, #1
	ldr	r4, .L149+4
	beq	.L144
.L148:
	ldr	r6, .L149+8
.L119:
	ldr	r3, .L149+12
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L125
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #44]
	rsb	r3, r3, #238
	cmp	r2, r3
	ldrlt	r3, [r4, #52]
	addlt	r2, r3, r2
	strlt	r2, [r4, #44]
.L125:
	ldr	r3, .L149+12
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L126
	ldr	r3, [r4, #44]
	cmp	r3, #2
	ldrgt	r2, [r4, #52]
	subgt	r3, r3, r2
	strgt	r3, [r4, #44]
.L126:
	ldr	r3, .L149+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L127
	ldr	r3, [r4, #40]
	cmp	r3, #2
	ldrgt	r2, [r4, #48]
	subgt	r3, r3, r2
	strgt	r3, [r4, #40]
.L127:
	ldr	r3, .L149+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L128
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #40]
	rsb	r3, r3, #158
	cmp	r2, r3
	ldrlt	r3, [r4, #48]
	addlt	r2, r3, r2
	strlt	r2, [r4, #40]
.L128:
	ldr	r3, [r4]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, .L149+16
	strle	r2, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, .L149+20
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	strle	r2, [r3]
	bx	lr
.L143:
	ldr	r3, .L149+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L117
	ldr	r3, .L149+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L147
.L117:
	ldr	r4, .L149+4
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L118
	ldr	r3, .L149+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L146
.L118:
	mov	r2, #1
	mov	r3, #3
	str	r2, [r7]
	str	r3, [r4, #8]
	bl	newHand
.L146:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L148
.L144:
	ldr	r5, [r4, #4]
	cmp	r5, #9
	mov	r1, #0
	movle	r5, #0
	ldrle	r3, [r4]
	suble	r3, r3, #10
	stmle	r4, {r3, r5}
	mov	r0, r1
	mov	r3, #23
	mov	r9, #512
	mov	r8, #648
	ldr	r6, .L149+8
	ldr	r2, [r6, #4]
	subgt	r5, r5, #10
	add	r2, r2, #5
	str	r1, [r7]
	strgt	r5, [r4, #4]
	str	r2, [r6, #4]
	ldr	ip, .L149+36
	ldr	lr, .L149+40
	ldr	r7, .L149+44
.L124:
	ldr	r2, [ip], #4
	lsl	r1, r2, #3
	cmp	r5, r0
	add	r10, lr, r1
	strhgt	r7, [lr, r1]	@ movhi
	lslle	r2, r2, #3
	strhgt	r3, [r10, #2]	@ movhi
	add	r0, r0, #6
	add	r3, r3, #5
	strhgt	r8, [r10, #4]	@ movhi
	strhle	r9, [lr, r2]	@ movhi
	lsl	r3, r3, #16
	cmp	r0, #30
	lsr	r3, r3, #16
	bne	.L124
	bl	drawPlayerStatus
	bl	drawEnemyStatus
	b	.L119
.L147:
	bl	checkSelector
	b	.L117
.L150:
	.align	2
.L149:
	.word	battleState
	.word	player
	.word	enemy
	.word	67109120
	.word	gameOver
	.word	gameWon
	.word	oldButtons
	.word	buttons
	.word	cardsRemaining
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
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	ip, .L155
	sub	sp, sp, #292
	mov	r1, r3
	mov	r2, #224
	ldr	r4, .L155+4
	str	r3, [sp, #52]
	str	r3, [sp, #56]
	add	r0, sp, #64
	mov	r5, #3
	str	r3, [ip]
	mov	r7, #65
	mov	lr, pc
	bx	r4
	mov	r6, #105
	mov	r4, #16
	mov	fp, #80
	mov	r10, #8
	mvn	r9, #10
	mvn	r8, #19
	str	r4, [sp, #48]
	str	r5, [sp, #40]
	str	r5, [sp, #44]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r7, [sp, #32]
	str	r6, [sp, #36]
	add	lr, sp, #24
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #92
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	mov	r2, #228
	str	r3, [ip]
	add	r1, sp, #60
	ldr	r3, .L155+8
	str	r5, [sp, #68]
	str	r4, [sp, #96]
	ldr	r0, .L155+12
	str	fp, [sp, #60]
	str	r10, [sp, #72]
	str	r9, [sp, #80]
	str	r8, [sp, #84]
	str	r7, [sp, #100]
	str	r6, [sp, #104]
	str	r5, [sp, #108]
	str	r5, [sp, #112]
	str	r4, [sp, #116]
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	lr, .L155+16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	ldr	r3, .L155+12
	stm	ip, {r0, r1}
	sub	r2, sp, #4
	add	r0, r3, #48
.L152:
	ldr	r1, [r2, #4]!
	add	r3, r3, #8
	str	r1, [r3, #64]
	cmp	r3, r0
	bne	.L152
	add	sp, sp, #292
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	bossBattle
	.word	memset
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
	.global	CARD_HEIGHT
	.global	CARD_WIDTH
	.comm	buffer,200,4
	.comm	enemy,8,4
	.comm	player,228,4
	.comm	currentDeck,16,4
	.comm	battleState,4,4
	.comm	cardsRemaining,4,4
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
	.size	masterDeck, 440
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
	.type	CARD_WIDTH, %object
	.size	CARD_WIDTH, 4
CARD_WIDTH:
	.word	39
	.type	CARD_HEIGHT, %object
	.size	CARD_HEIGHT, 4
CARD_HEIGHT:
	.word	51
	.ident	"GCC: (devkitARM release 47) 7.1.0"
