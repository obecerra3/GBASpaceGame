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
	@ link register save eliminated.
	bx	lr
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
	bx	lr
	.size	updateMerchant, .-updateMerchant
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
	@ link register save eliminated.
	bx	lr
	.size	drawMerchant, .-drawMerchant
	.ident	"GCC: (devkitARM release 47) 7.1.0"
