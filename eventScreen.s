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
	.file	"eventScreen.c"
	.global	eventScreenPal
	.global	eventScreenMap
	.global	eventScreenTiles
	.section	.rodata
	.align	2
	.type	eventScreenPal, %object
	.size	eventScreenPal, 512
eventScreenPal:
	.space	512
	.type	eventScreenMap, %object
	.size	eventScreenMap, 2048
eventScreenMap:
	.space	2048
	.type	eventScreenTiles, %object
	.size	eventScreenTiles, 32
eventScreenTiles:
	.space	32
	.ident	"GCC: (devkitARM release 47) 7.1.0"
