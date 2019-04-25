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
	.file	"unknownEvent.c"
	.text
	.align	2
	.global	initUnknownEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	initUnknownEvent, %function
initUnknownEvent:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initUnknownEvent, .-initUnknownEvent
	.align	2
	.global	updateUnknownEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUnknownEvent, %function
updateUnknownEvent:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateUnknownEvent, .-updateUnknownEvent
	.align	2
	.global	drawUnknownEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUnknownEvent, %function
drawUnknownEvent:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawUnknownEvent, .-drawUnknownEvent
	.ident	"GCC: (devkitARM release 47) 7.1.0"
