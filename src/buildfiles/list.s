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
	.file	"list.c"
	.text
	.align	2
	.global	create_list
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_list, %function
create_list:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	push	{r4, lr}
	mov	r0, #8
	mov	lr, pc
	bx	r3
	subs	r3, r0, #0
	beq	.L5
	mov	r2, #0
	pop	{r4, lr}
	str	r2, [r3]
	str	r2, [r3, #4]
	bx	lr
.L5:
	ldr	r3, .L6+4
	ldr	r0, .L6+8
	mov	lr, pc
	bx	r3
	mov	r0, #1
	ldr	r3, .L6+12
	mov	lr, pc
	bx	r3
.L7:
	.align	2
.L6:
	.word	malloc
	.word	printf
	.word	.LC0
	.word	exit
	.size	create_list, .-create_list
	.align	2
	.global	push_front
	.syntax unified
	.arm
	.fpu softvfp
	.type	push_front, %function
push_front:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L14
	mov	r4, r0
	mov	r0, #12
	mov	r5, r1
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L13
	mov	r2, #0
	ldr	r3, [r4]
	cmp	r3, r2
	str	r5, [r0, #8]
	str	r2, [r0, #4]
	str	r2, [r0]
	strne	r3, [r0, #4]
	streq	r0, [r4, #4]
	strne	r0, [r3]
	str	r0, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	ldr	r3, .L14+4
	ldr	r0, .L14+8
	mov	lr, pc
	bx	r3
	mov	r0, #1
	ldr	r3, .L14+12
	mov	lr, pc
	bx	r3
.L15:
	.align	2
.L14:
	.word	malloc
	.word	printf
	.word	.LC1
	.word	exit
	.size	push_front, .-push_front
	.align	2
	.global	push_back
	.syntax unified
	.arm
	.fpu softvfp
	.type	push_back, %function
push_back:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L22
	mov	r4, r0
	mov	r0, #12
	mov	r5, r1
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L21
	mov	r3, #0
	ldr	r2, [r4]
	cmp	r2, r3
	str	r3, [r0]
	str	r3, [r0, #4]
	ldrne	r3, [r4, #4]
	str	r5, [r0, #8]
	strne	r3, [r0]
	streq	r0, [r4]
	strne	r0, [r3, #4]
	str	r0, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	ldr	r3, .L22+4
	ldr	r0, .L22+8
	mov	lr, pc
	bx	r3
	mov	r0, #1
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r3
.L23:
	.align	2
.L22:
	.word	malloc
	.word	printf
	.word	.LC1
	.word	exit
	.size	push_back, .-push_back
	.align	2
	.global	pop_front
	.syntax unified
	.arm
	.fpu softvfp
	.type	pop_front, %function
pop_front:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L27
	ldr	r2, [r3, #4]
	cmp	r2, #0
	ldr	r4, [r3, #8]
	str	r2, [r0]
	streq	r2, [r0, #4]
	mov	r0, r3
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
.L24:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
.L27:
	mvn	r4, #0
	b	.L24
.L30:
	.align	2
.L29:
	.word	free
	.size	pop_front, .-pop_front
	.align	2
	.global	pop_back
	.syntax unified
	.arm
	.fpu softvfp
	.type	pop_back, %function
pop_back:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L35
	ldr	r3, [r0, #4]
	ldr	r2, [r3]
	cmp	r2, #0
	movne	r1, #0
	ldr	r4, [r3, #8]
	streq	r2, [r0]
	strne	r1, [r2, #4]
	str	r2, [r0, #4]
	mov	r0, r3
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
.L31:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
.L35:
	mvn	r4, #0
	b	.L31
.L38:
	.align	2
.L37:
	.word	free
	.size	pop_back, .-pop_back
	.align	2
	.global	size
	.syntax unified
	.arm
	.fpu softvfp
	.type	size, %function
size:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L42
	mov	r0, #0
.L41:
	ldr	r3, [r3, #4]
	cmp	r3, #0
	add	r0, r0, #1
	bne	.L41
	bx	lr
.L42:
	mov	r0, r3
	bx	lr
	.size	size, .-size
	.align	2
	.global	empty_list
	.syntax unified
	.arm
	.fpu softvfp
	.type	empty_list, %function
empty_list:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	mov	r4, r0
.L47:
	mov	r0, r4
	bl	pop_front
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L47
	pop	{r4, lr}
	bx	lr
	.size	empty_list, .-empty_list
	.align	2
	.global	traverse
	.syntax unified
	.arm
	.fpu softvfp
	.type	traverse, %function
traverse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.L56
	mov	r5, r1
.L58:
	ldr	r0, [r4, #8]
	mov	lr, pc
	bx	r5
	str	r0, [r4, #8]
	ldr	r4, [r4, #4]
	cmp	r4, #0
	bne	.L58
.L56:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	traverse, .-traverse
	.align	2
	.global	helper
	.syntax unified
	.arm
	.fpu softvfp
	.type	helper, %function
helper:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r0, lsl #10
	mvngt	r0, #-2147483648
	movle	r0, r0, lsl #10
	bx	lr
	.size	helper, .-helper
	.align	2
	.global	scale_up
	.syntax unified
	.arm
	.fpu softvfp
	.type	scale_up, %function
scale_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cmp	r3, #0
	bxeq	lr
.L69:
	ldr	r1, [r3, #8]
	lsl	r2, r1, #10
	cmp	r1, r2
	mvngt	r2, #-2147483648
	str	r2, [r3, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L69
	bx	lr
	.size	scale_up, .-scale_up
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Failed to allocate memory for list\000"
	.space	1
.LC1:
	.ascii	"Failed to allocate memory for node\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
