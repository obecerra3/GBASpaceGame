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
	.file	"restSpot.c"
	.text
	.align	2
	.global	initRestSpot
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRestSpot, %function
initRestSpot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initRestSpot, .-initRestSpot
	.align	2
	.global	updateRestSpot
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRestSpot, %function
updateRestSpot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateRestSpot, .-updateRestSpot
	.align	2
	.global	drawRestSpot
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRestSpot, %function
drawRestSpot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawRestSpot, .-drawRestSpot
	.ident	"GCC: (devkitARM release 47) 7.1.0"
