
//{{BLOCK(battleScreen)

//======================================================================
//
//	battleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 130 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4160 + 2048 = 6720
//
//	Time-stamp: 2019-04-26, 04:10:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short battleScreenTiles[2080] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0777,0x0000,0x0777,0x0000,0x0777,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x7000,0x0077,0x7000,0x0077,0x7000,0x0077,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0xB440,0x0000,0xB440,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x999B,0x9999,0x999B,0x9999,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x9999,0xBBB9,0x9999,0xBBB9,0xB990,0x344B,
	0xB990,0x344B,0xB000,0x433B,0x0000,0xBBB0,0x0000,0xBBB0,
	0x0000,0x0000,0x999B,0x0009,0x999B,0x0009,0x9BB3,0x0999,
	0x9BB3,0x0999,0x9BB4,0x9999,0x999B,0x9999,0x999B,0x9999,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0009,0x0000,0x0999,0x0000,0x0999,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0xCCCC,0x9900,0x9999,0x9900,0x9999,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0xCC00,0x0000,
	0xCC00,0x0000,0x00CC,0x0000,0x0099,0x0000,0x0099,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0DDD,0x0000,0x0DDD,0x0000,0x0DDD,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x1770,0x0000,0x1770,0x0000,0x1770,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0717,0x0000,0x5717,0x8885,0x1717,0x1111,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x5885,0x5555,0x1111,0x1111,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1110,0x7000,0x5577,0x5555,0x8875,0x1111,0x1171,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x5517,0x5517,0x5888,0x5558,0x1111,0x1111,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0001,0x0000,0x0017,0x0000,0x0055,0x0000,0x0011,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0CCC,0xBBB0,0x0CCC,0xBBB0,0x0CC0,0xBBB0,0x0CC0,0xBBB0,
	0x0000,0x9990,0x0000,0x9990,0x0000,0xB000,0x0000,0xB000,
	0x000B,0x3000,0x000B,0x3000,0x0BBB,0x3330,0x0BBB,0x3330,

	0x9999,0xBBB9,0x9999,0xBBB9,0xBBBB,0x333B,0xBBBB,0x333B,
	0x3333,0xBBB3,0x3333,0xBBB3,0x3333,0xBBB3,0x3333,0xBBB3,
	0xBBBB,0x000B,0xBBBB,0x000B,0x3333,0x3333,0x3333,0x3333,
	0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,
	0x3339,0x3333,0x3339,0x3333,0xBB33,0x33BB,0xBB33,0x33BB,
	0xBB3B,0x33BB,0xBB3B,0x33BB,0xBB3B,0x33BB,0xBB3B,0x33BB,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xCC33,0x3333,0xCC33,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x33CC,0xCC33,0x33CC,0xCC33,0x3333,0x3333,0x3333,0x3333,
	0x0033,0x0000,0x0033,0x0000,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x33CC,0x3333,0x33CC,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0033,0x0000,0x0033,0x0000,
	0xCC33,0xCCCC,0xCC33,0xCCCC,0xCC33,0xCCCC,0xCC33,0xCCCC,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0xDCCC,0x0000,0xDCCC,0x0000,

	0x0000,0x7770,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,
	0x7000,0x1177,0x7000,0x7777,0x0000,0x1110,0x0000,0x7700,
	0xA000,0xAAAA,0x1100,0xAA11,0x1111,0x22A1,0xA111,0xAAAA,
	0x1177,0x1177,0x7777,0x7777,0x1111,0x1111,0x8877,0x7777,
	0x2222,0x2222,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x000A,0x0000,

	0x0077,0x0000,0x0077,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x2222,0x2222,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x1A00,0x1111,
	0x1111,0x1111,0x7700,0x7777,0x0000,0x1117,0x0000,0x7700,
	0x1122,0x2222,0x17AA,0xAAAA,0x17AA,0x11AA,0x17AA,0x000A,
	0x1111,0x1111,0x7777,0x7777,0x1111,0x1111,0x7777,0x7777,
	0x7112,0x17AA,0x711A,0x1111,0xA110,0x1111,0x1771,0x1711,
	0x111A,0x1111,0x7777,0x7777,0x1111,0x1111,0x7777,0x7777,
	0x1111,0x7711,0x1111,0x7777,0x7717,0x0077,0x7771,0x0000,

	0x1111,0x1117,0x7777,0x7777,0x1111,0x1117,0x8888,0x0007,
	0x8888,0x0007,0x7777,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x7711,0x0000,0x7777,0x0000,0x0771,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0070,0x0000,0x0070,0x0000,0x0000,0x0000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0x0000,0x0000,0x0000,
	0x0CCC,0xBBB0,0x0CCC,0xBBB0,0x0CC0,0xBBB0,0x0CC0,0xBBB0,
	0x0CCC,0xBBB0,0x0CCC,0xBBB0,0x0CC0,0xBBB0,0x0CC0,0xBBB0,

	0xBBBB,0x333B,0xBBBB,0x333B,0xBBBB,0x444B,0xBBBB,0x444B,
	0xBBBB,0x333B,0xBBBB,0x333B,0xBBBB,0x333B,0xBBBB,0x333B,
	0x3333,0x3333,0x3333,0x3333,0x4444,0x4444,0x4444,0x4444,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x4444,0x4444,0x4444,0x4444,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x9999,0x3333,0x9999,
	0x3333,0x3333,0x3333,0x3333,0x4444,0x4444,0x4444,0x4444,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x0099,0x9999,0x0099,

	0x3333,0x0093,0x3333,0x0093,0x4444,0x4444,0x4444,0x4444,
	0x0019,0x0000,0x0019,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1000,0x0000,0x7700,0x0000,0x1100,0x0000,0x0000,
	0x0000,0x1000,0x0000,0x1110,0x0000,0x1111,0x0000,0x1111,
	0x1111,0x1111,0x7777,0x1777,0x7111,0x11A7,0x7777,0x1777,
	0xA111,0xAAAA,0xAA11,0x000A,0xAAAA,0x000A,0xAAAA,0x000A,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1711,0x6671,

	0x000A,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0xE111,0x1111,0xEE11,0x1767,0xEEE1,
	0x1A00,0x1111,0x00A0,0x0000,0x00AA,0xA000,0x00AA,0xA000,
	0x1111,0x1111,0x17EE,0x11E1,0x17EE,0x111E,0x171E,0x1111,
	0x17AA,0x000A,0x17AA,0x7711,0x17AA,0x1177,0x17AA,0x1177,
	0x1111,0xEE11,0x1111,0x1111,0x1111,0xEEE1,0x1111,0xEE11,
	0x1771,0x1711,0x1117,0x1111,0x8117,0x8888,0x8117,0x8888,
	0x5551,0x5555,0x1111,0x7711,0x111E,0x7777,0x7111,0x7777,

	0x7771,0x0000,0x0777,0x0000,0x7888,0x8788,0x7888,0x8788,
	0x7555,0x5755,0x7887,0x0700,0x8888,0x0007,0x1177,0x7117,
	0x0000,0x0000,0x0000,0x0000,0x8888,0x8888,0x8888,0x8888,
	0x5555,0x5555,0x0000,0x0000,0x0000,0x0000,0x1111,0x7711,
	0x0000,0x0000,0x0000,0x0000,0x8888,0x0008,0x8888,0x0008,
	0x5555,0x0000,0x0000,0x0000,0x0000,0x0000,0xFFFF,0xFFFF,
	0x0CCC,0xBBB0,0x0CCC,0xBBB0,0x0CC0,0xBBB0,0x0CC0,0xBBB0,
	0x0CCC,0xBBB0,0x0CCC,0xBBB0,0x0000,0x0000,0x0000,0x0000,

	0xBBBB,0x999B,0xBBBB,0x999B,0x0BBB,0x9990,0x0BBB,0x9990,
	0x000B,0x9000,0x000B,0x9000,0x0000,0x0000,0x0000,0x0000,
	0x3339,0x3333,0x3339,0x3333,0x3999,0x3333,0x3999,0x3333,
	0x3999,0x3333,0x3999,0x3333,0x9990,0xB009,0x9990,0xB009,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xB333,0xBBBB,0xB333,0xBBBB,0x9BBB,0x9999,0x9BBB,0x9999,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x9909,0x3333,0x9909,
	0xBBBB,0x990E,0xBBBB,0x990E,0x9999,0x0001,0x9999,0x0001,

	0x3333,0x3333,0x3333,0x3333,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x0000,0x0000,0x0000,0x0000,
	0x9933,0x9999,0x9933,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x0000,0x0000,0x0000,0x0000,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x9999,0x0000,0x9999,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x7000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1110,
	0x1100,0x5111,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x7777,0x1111,0x7777,0x7777,0x7777,0x7777,0x1111,0x1111,
	0x5555,0x8855,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x7777,0x7777,0x7777,0x7777,0x1111,0x1111,
	0x5588,0x5555,0x0000,0x0000,0x5577,0x5555,0x7777,0x7777,
	0x1111,0xEEEE,0xE117,0x1EEE,0x7777,0x7777,0x1111,0xA111,
	0x5555,0x5555,0x7770,0x7777,0x88D7,0x8888,0x11D7,0x1111,

	0x17E1,0x1111,0x171E,0x1111,0x1777,0x7777,0x1111,0x7777,
	0x1555,0x1111,0x7777,0x7777,0x8888,0x7118,0x1111,0x8D11,
	0x1717,0x1111,0x1717,0x1111,0x7777,0x7777,0x7777,0x7777,
	0x1111,0x1111,0x7777,0x0077,0x7111,0x0017,0x5858,0x77D5,
	0x7111,0x7777,0x7771,0x8811,0x7777,0x1111,0x1777,0x5555,
	0x7001,0x7777,0x0000,0x0000,0x0000,0x0000,0x0007,0x0000,
	0x1117,0x7117,0x111A,0x7117,0x1A17,0x7711,0x7117,0x7777,
	0x7777,0x7111,0x0000,0x7000,0x0000,0x7000,0x0000,0x7000,

	0x1111,0x5511,0x1111,0x8811,0x7777,0x5517,0x7777,0x7717,
	0x1111,0x7711,0x0078,0x0000,0x0078,0x0000,0x0078,0x0000,
	0xFFFF,0xFFFF,0xBBBB,0xFBBB,0xFFFF,0xFFFF,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xFFFF,0x000F,0xFFFF,0x000F,0x0FFF,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x9000,0x0000,0x9000,0x0000,0x9000,0x0000,0x9000,
	0x0000,0x9990,0x0000,0x9990,0x9990,0x9999,0x9990,0x9999,

	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x0199,0x9999,0x0199,
	0x0199,0x0000,0x0199,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x0001,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1177,0x1111,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x55D7,0x5555,0x0000,0x7777,0x0000,0x7777,0x0000,0x7777,
	0x0000,0x7770,0x0000,0x7700,0x0000,0x7000,0x0000,0x0000,

	0x5555,0xDD15,0x7777,0x7777,0x7777,0x7777,0x7777,0xA777,
	0x7777,0x1777,0x7777,0x7777,0x7777,0x7077,0x7777,0x0077,
	0xDDDD,0x77DD,0x7777,0x0017,0x1177,0x0011,0x1177,0x0011,
	0x117A,0x0011,0x1111,0x0011,0x7117,0x001A,0x1177,0x0011,
	0x0007,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xB440,0x999B,0xB440,0x999B,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x9999,0x0009,0x9999,0x0009,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0CCC,
	0x0000,0x0000,0xCC00,0x000C,0xCC00,0x000C,0xCC00,0x000C,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x7770,0x0077,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x1770,0x0011,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0CCC,0x0000,0x0CCC,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,
	0x8800,0x0888,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,
	0x0000,0x0000,0x0008,0x0808,0x0008,0x0808,0x0008,0x0808,
	0x0008,0x0808,0x0008,0x0808,0x0008,0x0808,0x8880,0x8800,

	0x0000,0x0000,0x0000,0x0008,0x0000,0x0008,0x0000,0x0008,
	0x0000,0x0008,0x0000,0x0008,0x0000,0x0008,0x0888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0008,0x0000,
	0x0000,0x0000,0x0000,0x8000,0x0000,0x8000,0x0000,0x8000,
	0x0000,0x8000,0x0000,0x8000,0x0000,0x8000,0x0000,0x8000,
	0x0000,0x0000,0x8000,0x0080,0x8000,0x0080,0x8000,0x0080,
	0x8888,0x0080,0x8000,0x0080,0x8000,0x0080,0x8000,0x8880,

	0x0000,0x0000,0x8080,0x0000,0x8080,0x0000,0x8080,0x0000,
	0x8080,0x0000,0x8080,0x0000,0x8080,0x0000,0x8088,0x8888,
	0x0000,0x0000,0x0080,0x0000,0x0080,0x0000,0x0080,0x0000,
	0x0080,0x0000,0x0080,0x0000,0x0080,0x0000,0x8880,0x0088,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8800,0x0088,
	0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8888,0x8808,
	0x0008,0x0800,0x0008,0x0800,0x8888,0x8800,0x0008,0x0800,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0888,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0DDD,0x0000,0x0DDD,0x0000,0x0DDD,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8000,0x0888,
	0x8000,0x8000,0x8000,0x8000,0x8000,0x8000,0x8000,0x8000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8880,0x8088,
	0x0080,0x8000,0x0080,0x8000,0x8880,0x8008,0x0080,0x8000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8888,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0888,0x0000,0x0000,0x0000,
	0x0800,0x0080,0x8800,0x0008,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0008,0x0800,0x8888,0x0808,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8000,0x0008,0x8000,0x0008,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x8880,0x0008,0x0008,0x0080,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0008,0x0000,0x0008,0x0000,
	0x8000,0x0800,0x8000,0x0088,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0080,0x8000,0x8880,0x8088,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0088,0x0000,0x0088,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x6600,0x6666,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x6666,0x6666,0x6666,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x6666,0x6666,0x6666,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0777,0x0000,0x0777,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x6666,0x0066,0x6666,0x0066,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x8000,0x0000,0x8000,0x0000,0x0800,0x0000,0x0800,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0080,0x8888,0x0088,0x0008,0x0800,0x0008,0x0800,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0DDD,0x0000,
	0x0DDD,0x0000,0x0DDD,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0DDD,
	0x0000,0x0DDD,0x0000,0x0DDD,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0DDD,0x0000,0x0DDD,0x0000,0x0DDD,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0777,0x0000,0x0777,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0DDD,0x0000,
	0x0DDD,0x0000,0x0DDD,0x0000,0xD000,0x00DD,0xD000,0x00DD,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0777,0x0000,0x0777,0x0000,0x0777,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x7770,0x0000,
	0x0000,0x0000,0xDD00,0x000D,0xDD00,0x000D,0xDD00,0x000D,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0xD000,0x00DD,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0777,0x0000,0x0777,0x0000,0x0777,0x0000,0x0000,0x0000,
};

const unsigned short battleScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0002,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0003,0x0004,0x0005,0x0006,0x0007,0x0000,0x0008,
	0x0009,0x0000,0x0000,0x0000,0x000A,0x0000,0x0000,0x0000,
	0x0000,0x000B,0x000C,0x000D,0x000E,0x000F,0x0010,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0011,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,
	0x0018,0x0019,0x001A,0x001B,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x001C,0x041C,0x001D,0x001E,0x001F,0x0020,0x0021,
	0x0022,0x0023,0x0024,0x0025,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0026,0x0027,0x0028,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x002A,0x002B,0x002C,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x002D,0x002E,0x002F,0x0030,0x0031,0x0032,
	0x0033,0x0034,0x0035,0x0036,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0026,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,
	0x003D,0x003E,0x003F,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0C01,0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,
	0x0046,0x0047,0x0048,0x0049,0x004A,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x004B,0x004C,0x004D,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x004E,0x004F,0x0050,0x0051,
	0x0052,0x0000,0x0052,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0053,0x0054,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0055,0x0056,0x0000,0x0057,0x0058,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0059,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x005A,0x005B,0x005C,0x005D,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x005E,0x005F,0x0060,0x0061,0x0000,0x0000,

	0x0062,0x0063,0x0064,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0065,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0066,0x0067,0x0068,0x0000,0x0000,
	0x0069,0x006A,0x006B,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x045D,0x006C,0x006D,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x006E,0x006F,0x0070,0x0000,0x0000,

	0x0071,0x0072,0x0072,0x0073,0x0072,0x0072,0x0072,0x0072,
	0x0072,0x0072,0x0074,0x0075,0x0076,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0077,0x0474,0x0072,0x0072,0x0072,0x0072,
	0x0072,0x0072,0x0072,0x0072,0x0072,0x0471,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x041C,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0078,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0C01,
	0x0000,0x0079,0x0000,0x0000,0x007A,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0C0A,0x0000,0x0000,0x0000,0x0000,0x007B,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x007C,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x007D,0x0000,0x0000,0x007E,0x0000,0x0000,0x0C7E,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0000,0x007F,
	0x0080,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0C7B,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0C02,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0081,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short battleScreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x2D45,0x5293,0x4BC1,0x0C9F,0x4DEB,0x7A47,0x1C62,
	0x7FDD,0x3223,0x398D,0x53FE,0x7567,0x4921,0x3EEC,0x1A1D,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(battleScreen)
