	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"Equip.c"
@ GNU C17 (devkitARM release 55) version 10.2.0 (arm-none-eabi)
@	compiled by GNU C version 6.4.0, GMP version 6.0.0, MPFR version 3.1.2, MPC version 1.0.2, isl version none
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -I C://devkitpro/FE-CLib/include -imultilib thumb
@ -iprefix c:\devkitpro\devkitarm\bin\../lib/gcc/arm-none-eabi/10.2.0/
@ -D__USES_INITFINI__ Equip.c -mcpu=arm7tdmi -mthumb -mthumb-interwork
@ -mtune=arm7tdmi -mlong-calls -march=armv4t -auxbase-strip Equip.asm -Os
@ -Wall -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -fallocation-dce
@ -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
@ -fgcse-lm -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads
@ -fident -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-reference-addressable -fipa-sra
@ -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -fpartial-inlining
@ -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
@ -fsection-anchors -fsemantic-interposition -fshow-column -fshrink-wrap
@ -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
@ -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
@ -fstore-merging -fstrict-aliasing -fstrict-volatile-bitfields
@ -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
@ -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
@ -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
@ -fzero-initialized-in-bss -mbe32 -mlittle-endian -mlong-calls
@ -mpic-data-is-text-relative -msched-prolog -mthumb -mthumb-interwork
@ -mvectorize-with-neon-quad

	.text
	.align	1
	.global	IsItemEquipment
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemEquipment, %function
IsItemEquipment:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8	@,,
@ Core.c:1: bool IsItemEquipment (Item item){
	add	r3, sp, #4	@ tmp118,,
	strh	r0, [r3]	@,
	lsls	r3, r0, #24	@ item$number, tmp122,
	lsrs	r3, r3, #24	@ item$number, item$number,
@ Core.c:5: 		return false;
	subs	r0, r3, #0	@ <retval>, item$number,
	ldr	r2, .L7	@ ivtmp.35,
@ Core.c:4: 	if (item.number == 0) {
	bne	.L3		@,
.L2:
@ Core.c:18: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	bx	lr
.L4:
@ Core.c:11: 		if (item.number == EquipmentList[cnt]){
	adds	r2, r2, #1	@ ivtmp.35,
	cmp	r0, r3	@ _1, item$number
	beq	.L6		@,
.L3:
@ Core.c:10: 	while(EquipmentList[cnt] != 0){
	ldrb	r0, [r2]	@ _1, MEM[base: _10, offset: 0B]
@ Core.c:10: 	while(EquipmentList[cnt] != 0){
	cmp	r0, #0	@ _1,
	bne	.L4		@,
	b	.L2		@
.L6:
@ Core.c:12: 			return true;
	movs	r0, #1	@ <retval>,
	b	.L2		@
.L8:
	.align	2
.L7:
	.word	EquipmentList
	.size	IsItemEquipment, .-IsItemEquipment
	.align	1
	.global	CanUnitEquipItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CanUnitEquipItem, %function
CanUnitEquipItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
@ Core.c:20: bool CanUnitEquipItem (Unit* unit, Item item){
	add	r3, sp, #4	@ tmp116,,
	strh	r1, [r3]	@,
@ Core.c:21: 	if (item.number == 0){
	lsls	r1, r1, #24	@ item, tmp124,
	lsrs	r1, r1, #24	@ item, item,
@ Core.c:22: 		return false;
	subs	r0, r1, #0	@ <retval>, item,
@ Core.c:21: 	if (item.number == 0){
	beq	.L10		@,
@ Core.c:25: 	if (!IsItemEquipment(item)){
	ldr	r0, [sp, #4]	@, item
	bl	IsItemEquipment		@
.L10:
@ Core.c:32: }
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r1}
	bx	r1
	.size	CanUnitEquipItem, .-CanUnitEquipItem
	.align	1
	.global	GetUnitEquippedItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitEquippedItem, %function
GetUnitEquippedItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	movs	r6, #0	@ item$number,
	movs	r5, r0	@ unit, tmp157
@ Core.c:35: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	movs	r4, r6	@ i, item$number
@ Core.c:34: Item GetUnitEquippedItem (Unit* unit){
	sub	sp, sp, #20	@,,
@ Core.c:36: 		if (CanUnitEquipItem(unit, unit->items[i])){
	adds	r3, r0, #6	@ tmp120, unit,
	str	r3, [sp, #4]	@ tmp120, %sfp
.L15:
	movs	r3, r4	@ tmp119, i
	ldr	r2, [sp, #4]	@ tmp120, %sfp
	adds	r3, r3, #12	@ tmp119,
	lsls	r3, r3, #1	@ tmp121, tmp119,
	ldrh	r7, [r3, r2]	@ unit_7(D)->items[i_18], unit_7(D)->items[i_18]
	movs	r0, r5	@, unit
	movs	r1, r7	@ tmp124, unit_7(D)->items[i_18]
	bl	CanUnitEquipItem		@
@ Core.c:36: 		if (CanUnitEquipItem(unit, unit->items[i])){
	cmp	r0, #0	@ tmp158,
	beq	.L13		@,
@ Core.c:37: 			return unit->items[i];
	add	r3, sp, #12	@ tmp131,,
	strh	r7, [r3]	@ unit_7(D)->items[i_18], D.7736
.L14:
@ Core.c:43: }
	add	r3, sp, #12	@ tmp141,,
	ldrb	r0, [r3]	@ tmp144, D.7736
	ldrb	r3, [r3, #1]	@ tmp150, D.7736
	lsls	r3, r3, #8	@ tmp152, tmp150,
	orrs	r0, r3	@ tmp155, tmp152
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L13:
@ Core.c:35: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	adds	r4, r4, #1	@ i,
@ Core.c:35: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	cmp	r4, #5	@ i,
	bne	.L15		@,
@ Core.c:42: 	return item;
	add	r3, sp, #12	@ tmp137,,
	strb	r6, [r3]	@ item$number, D.7736.number
	strb	r6, [r3, #1]	@ item$number, D.7736.durability
	b	.L14		@
	.size	GetUnitEquippedItem, .-GetUnitEquippedItem
	.align	1
	.global	GetUnitEquippedItemSlot
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitEquippedItemSlot, %function
GetUnitEquippedItemSlot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ Core.c:45: int GetUnitEquippedItemSlot (Unit* unit){
	movs	r5, r0	@ unit, tmp129
@ Core.c:46: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	movs	r4, #0	@ <retval>,
@ Core.c:47: 		if (CanUnitEquipItem(unit, unit->items[i])){
	adds	r6, r0, #6	@ tmp117, unit,
.L19:
	movs	r3, r4	@ tmp116, <retval>
	adds	r3, r3, #12	@ tmp116,
	lsls	r3, r3, #1	@ tmp118, tmp116,
	movs	r0, r5	@, unit
	ldrh	r1, [r6, r3]	@ tmp121, unit_6(D)->items[i_12]
	bl	CanUnitEquipItem		@
@ Core.c:47: 		if (CanUnitEquipItem(unit, unit->items[i])){
	cmp	r0, #0	@ tmp130,
	bne	.L17		@,
@ Core.c:46: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	adds	r4, r4, #1	@ <retval>,
@ Core.c:46: 	for (int i = 0; i < UNIT_ITEM_COUNT; ++i){
	cmp	r4, #5	@ <retval>,
	bne	.L19		@,
@ Core.c:52: 	return 0xFF;
	adds	r4, r4, #250	@ <retval>,
.L17:
@ Core.c:53: }
	movs	r0, r4	@, <retval>
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	GetUnitEquippedItemSlot, .-GetUnitEquippedItemSlot
	.align	1
	.global	GetEquipmentSkill
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetEquipmentSkill, %function
GetEquipmentSkill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
@ Skills.c:2: 	Item item = GetUnitEquippedItem(unit);
	bl	GetUnitEquippedItem		@
	add	r3, sp, #4	@ tmp121,,
	strh	r0, [r3]	@ tmp119, item
@ Skills.c:5: 		return 0;
	movs	r3, #0	@ <retval>,
@ Skills.c:2: 	Item item = GetUnitEquippedItem(unit);
	lsls	r0, r0, #24	@ item$number, tmp119,
	lsrs	r0, r0, #24	@ item$number, item$number,
@ Skills.c:4: 	if (item.number == 0){
	cmp	r0, r3	@ item$number,
	beq	.L21		@,
@ Skills.c:8: 	const ItemData* itemData = GetItemData(item.number);
	ldr	r3, .L25	@ tmp123,
	bl	.L27		@
@ Skills.c:9: 	return itemData-> weaponSkill;
	adds	r0, r0, #4	@ tmp124,
	ldrb	r3, [r0, #31]	@ <retval>,
.L21:
@ Skills.c:10: }
	movs	r0, r3	@, <retval>
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r1}
	bx	r1
.L26:
	.align	2
.L25:
	.word	GetItemData
	.size	GetEquipmentSkill, .-GetEquipmentSkill
	.align	1
	.global	GetEquipmentStatBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetEquipmentStatBonus, %function
GetEquipmentStatBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
@ StatGetters.c:1: int GetEquipmentStatBonus(Unit* unit, int stat){
	movs	r4, r1	@ stat, tmp131
@ StatGetters.c:2: 	Item item = GetUnitEquippedItem(unit);
	bl	GetUnitEquippedItem		@
	add	r3, sp, #4	@ tmp125,,
	strh	r0, [r3]	@ tmp123, item
	lsls	r0, r0, #24	@ item$number, tmp123,
	lsrs	r0, r0, #24	@ item$number, item$number,
@ StatGetters.c:4: 	if (item.number == 0){
	bne	.L29		@,
.L31:
@ StatGetters.c:5: 		return 0;
	movs	r0, #0	@ <retval>,
.L28:
@ StatGetters.c:17: }
	@ sp needed	@
	pop	{r1, r2, r4}
	pop	{r1}
	bx	r1
.L29:
@ StatGetters.c:8: 	const ItemData* itemData = GetItemData(item.number);
	ldr	r3, .L35	@ tmp127,
	bl	.L27		@
@ StatGetters.c:10: 	const ItemStatBonuses* itemStatBonuses = itemData -> pStatBonuses;
	ldr	r3, [r0, #12]	@ itemStatBonuses, itemData_11->pStatBonuses
@ StatGetters.c:12: 	if (itemStatBonuses == 0){
	cmp	r3, #0	@ itemStatBonuses,
	beq	.L31		@,
@ StatGetters.c:16: 	return ((s8*)itemStatBonuses)[stat];
	ldrsb	r0, [r3, r4]	@ <retval>, *_3
	b	.L28		@
.L36:
	.align	2
.L35:
	.word	GetItemData
	.size	GetEquipmentStatBonus, .-GetEquipmentStatBonus
	.align	1
	.global	DrawUnitEquippedItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DrawUnitEquippedItem, %function
DrawUnitEquippedItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MSS.c:4: 	int itemSlot = GetUnitEquippedItemSlot(unit);
	bl	GetUnitEquippedItemSlot		@
@ MSS.c:6: 	if (itemSlot == 0xFF){ // null
	cmp	r0, #255	@ itemSlot,
	beq	.L37		@,
@ MSS.c:13: 	DrawSpecialUIChar((EquipChar_BGMapAddr+EquipChar_BGMapOffset), WhiteText, EquipE);
	ldr	r3, .L42	@ tmp137,
@ MSS.c:10: 	itemSlot *= 2;
	lsls	r4, r0, #1	@ itemSlot, itemSlot,
@ MSS.c:12: 	u32 EquipChar_BGMapOffset = (itemSlot+1)<<6;
	lsls	r0, r0, #7	@ EquipChar_BGMapOffset, itemSlot,
@ MSS.c:13: 	DrawSpecialUIChar((EquipChar_BGMapAddr+EquipChar_BGMapOffset), WhiteText, EquipE);
	adds	r0, r0, r3	@ tmp126, EquipChar_BGMapOffset, tmp137
	movs	r2, #53	@,
	movs	r1, #0	@,
	ldr	r3, .L42+4	@ tmp127,
	bl	.L27		@
@ MSS.c:17: 	BGMap_ApplyTSA((EquipTSA_BGMapAddr+EquipTSA_BGMapOffset),EquipTSA_Pointer,tileAddr);
	movs	r2, #193	@,
	ldr	r3, .L42+8	@ tmp138,
@ MSS.c:15: 	u32 EquipTSA_BGMapOffset = (itemSlot+2)<<6;
	lsls	r0, r4, #6	@ EquipTSA_BGMapOffset, itemSlot,
@ MSS.c:17: 	BGMap_ApplyTSA((EquipTSA_BGMapAddr+EquipTSA_BGMapOffset),EquipTSA_Pointer,tileAddr);
	adds	r0, r0, r3	@ tmp132, EquipTSA_BGMapOffset, tmp138
	ldr	r1, .L42+12	@,
	ldr	r3, .L42+16	@ tmp133,
	lsls	r2, r2, #6	@,,
	bl	.L27		@
.L37:
@ MSS.c:19: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L43:
	.align	2
.L42:
	.word	33570188
	.word	DrawSpecialUIChar
	.word	33572782
	.word	144712272
	.word	BGMap_ApplyTSA
	.size	DrawUnitEquippedItem, .-DrawUnitEquippedItem
	.align	1
	.global	IncrementAttackCount
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IncrementAttackCount, %function
IncrementAttackCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ ProcLoop.c:4: 	attacker->attacksMade += 1;
	adds	r0, r0, #126	@ tmp125,
	ldrb	r3, [r0]	@ tmp127,
	adds	r3, r3, #1	@ tmp128,
	strb	r3, [r0]	@ tmp128, attacker_8(D)->attacksMade
@ ProcLoop.c:6: 	if (!(buffer->attributes & BATTLE_HIT_ATTR_MISS)){
	ldr	r3, [r2]	@ *buffer_10(D), *buffer_10(D)
@ ProcLoop.c:6: 	if (!(buffer->attributes & BATTLE_HIT_ATTR_MISS)){
	lsls	r3, r3, #30	@ tmp152, *buffer_10(D),
	bmi	.L44		@,
@ ProcLoop.c:7: 		defender->hitsTaken += 1;
	adds	r1, r1, #127	@ tmp141,
	ldrb	r3, [r1]	@ tmp143,
	adds	r3, r3, #1	@ tmp144,
	strb	r3, [r1]	@ tmp144, defender_11(D)->hitsTaken
.L44:
@ ProcLoop.c:9: }
	@ sp needed	@
	bx	lr
	.size	IncrementAttackCount, .-IncrementAttackCount
	.align	1
	.global	IsItemDefenseEquipment
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemDefenseEquipment, %function
IsItemDefenseEquipment:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8	@,,
@ Durability.c:3: bool IsItemDefenseEquipment(Item item){
	add	r3, sp, #4	@ tmp118,,
	strh	r0, [r3]	@,
	lsls	r3, r0, #24	@ item$number, tmp122,
	lsrs	r3, r3, #24	@ item$number, item$number,
@ Durability.c:7: 		return false;
	subs	r0, r3, #0	@ <retval>, item$number,
	ldr	r2, .L52	@ ivtmp.76,
@ Durability.c:6: 	if (item.number == 0) {
	bne	.L48		@,
.L47:
@ Durability.c:20: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	bx	lr
.L49:
@ Durability.c:13: 		if (item.number == DefenseEquipmentList[cnt]){
	adds	r2, r2, #1	@ ivtmp.76,
	cmp	r0, r3	@ _1, item$number
	beq	.L51		@,
.L48:
@ Durability.c:12: 	while(DefenseEquipmentList[cnt] != 0){
	ldrb	r0, [r2]	@ _1, MEM[base: _10, offset: 0B]
@ Durability.c:12: 	while(DefenseEquipmentList[cnt] != 0){
	cmp	r0, #0	@ _1,
	bne	.L49		@,
	b	.L47		@
.L51:
@ Durability.c:14: 			return true;
	movs	r0, #1	@ <retval>,
	b	.L47		@
.L53:
	.align	2
.L52:
	.word	DefenseEquipmentList
	.size	IsItemDefenseEquipment, .-IsItemDefenseEquipment
	.align	1
	.global	IsItemOffenseEquipment
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsItemOffenseEquipment, %function
IsItemOffenseEquipment:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8	@,,
@ Durability.c:22: bool IsItemOffenseEquipment(Item item){
	add	r3, sp, #4	@ tmp118,,
	strh	r0, [r3]	@,
	lsls	r3, r0, #24	@ item$number, tmp122,
	lsrs	r3, r3, #24	@ item$number, item$number,
@ Durability.c:26: 		return false;
	subs	r0, r3, #0	@ <retval>, item$number,
	ldr	r2, .L60	@ ivtmp.85,
@ Durability.c:25: 	if (item.number == 0) {
	bne	.L56		@,
.L55:
@ Durability.c:39: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	bx	lr
.L57:
@ Durability.c:32: 		if (item.number == OffenseEquipmentList[cnt]){
	adds	r2, r2, #1	@ ivtmp.85,
	cmp	r0, r3	@ _1, item$number
	beq	.L59		@,
.L56:
@ Durability.c:31: 	while(OffenseEquipmentList[cnt] != 0){
	ldrb	r0, [r2]	@ _1, MEM[base: _10, offset: 0B]
@ Durability.c:31: 	while(OffenseEquipmentList[cnt] != 0){
	cmp	r0, #0	@ _1,
	bne	.L57		@,
	b	.L55		@
.L59:
@ Durability.c:33: 			return true;
	movs	r0, #1	@ <retval>,
	b	.L55		@
.L61:
	.align	2
.L60:
	.word	OffenseEquipmentList
	.size	IsItemOffenseEquipment, .-IsItemOffenseEquipment
	.align	1
	.global	CheckIfDefenseEquipmentBroke
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckIfDefenseEquipmentBroke, %function
CheckIfDefenseEquipmentBroke:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ Durability.c:42: 	if (item.durability <= battleUnit->hitsTaken){
	adds	r0, r0, #127	@ tmp122,
@ Durability.c:42: 	if (item.durability <= battleUnit->hitsTaken){
	ldrb	r3, [r0]	@ tmp124,
	movs	r0, #0	@ tmp126,
@ Durability.c:41: bool CheckIfDefenseEquipmentBroke(BattleUnit* battleUnit, Item item){
	lsls	r1, r1, #16	@ tmp130,,
@ Durability.c:42: 	if (item.durability <= battleUnit->hitsTaken){
	lsrs	r1, r1, #24	@ tmp123, tmp130,
	cmp	r3, r1	@ tmp124, tmp123
	adcs	r0, r0, r0	@ tmp125, tmp126, tmp126
@ Durability.c:41: bool CheckIfDefenseEquipmentBroke(BattleUnit* battleUnit, Item item){
	sub	sp, sp, #8	@,,
@ Durability.c:46: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	bx	lr
	.size	CheckIfDefenseEquipmentBroke, .-CheckIfDefenseEquipmentBroke
	.align	1
	.global	CheckIfOffenseEquipmentBroke
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckIfOffenseEquipmentBroke, %function
CheckIfOffenseEquipmentBroke:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	adds	r0, r0, #126	@ tmp122,
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	ldrb	r3, [r0]	@ tmp124,
	movs	r0, #0	@ tmp126,
@ Durability.c:48: bool CheckIfOffenseEquipmentBroke(BattleUnit* battleUnit, Item item){
	lsls	r1, r1, #16	@ tmp130,,
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	lsrs	r1, r1, #24	@ tmp123, tmp130,
	cmp	r3, r1	@ tmp124, tmp123
	adcs	r0, r0, r0	@ tmp125, tmp126, tmp126
@ Durability.c:48: bool CheckIfOffenseEquipmentBroke(BattleUnit* battleUnit, Item item){
	sub	sp, sp, #8	@,,
@ Durability.c:53: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	bx	lr
	.size	CheckIfOffenseEquipmentBroke, .-CheckIfOffenseEquipmentBroke
	.align	1
	.global	CheckIfEquipmentBroke
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckIfEquipmentBroke, %function
CheckIfEquipmentBroke:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ Durability.c:55: bool CheckIfEquipmentBroke(BattleUnit* battleUnit){
	movs	r4, r0	@ battleUnit, tmp151
@ Durability.c:56: 	Item item = GetUnitEquippedItem(&battleUnit->unit);
	bl	GetUnitEquippedItem		@
@ Durability.c:58: 	if (item.number == 0){
	lsls	r3, r0, #24	@ item, tmp121,
@ Durability.c:56: 	Item item = GetUnitEquippedItem(&battleUnit->unit);
	add	r6, sp, #4	@ tmp123,,
@ Durability.c:58: 	if (item.number == 0){
	lsrs	r3, r3, #24	@ item, item,
@ Durability.c:56: 	Item item = GetUnitEquippedItem(&battleUnit->unit);
	strh	r0, [r6]	@ tmp121, item
@ Durability.c:59: 		return false;
	subs	r0, r3, #0	@ <retval>, item,
@ Durability.c:58: 	if (item.number == 0){
	beq	.L65		@,
@ Durability.c:62: 	if (IsItemOffenseEquipment(item)){
	ldr	r0, [sp, #4]	@, item
	bl	IsItemOffenseEquipment		@
@ Durability.c:56: 	Item item = GetUnitEquippedItem(&battleUnit->unit);
	ldrb	r7, [r6, #1]	@ item$durability,
@ Durability.c:62: 	if (IsItemOffenseEquipment(item)){
	subs	r5, r0, #0	@ tmp128, tmp153,
@ Durability.c:62: 	if (IsItemOffenseEquipment(item)){
	beq	.L66		@,
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	movs	r0, #0	@ tmp136,
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	adds	r4, r4, #126	@ tmp132,
@ Durability.c:49: 	if (item.durability <= battleUnit->attacksMade){
	ldrb	r3, [r4]	@ tmp134,
	cmp	r3, r7	@ tmp134, item$durability
	adcs	r0, r0, r0	@ tmp135, tmp136, tmp136
.L65:
@ Durability.c:70: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L66:
@ Durability.c:65: 	else if (IsItemDefenseEquipment(item)){
	ldr	r0, [r6]	@, item
	bl	IsItemDefenseEquipment		@
@ Durability.c:65: 	else if (IsItemDefenseEquipment(item)){
	cmp	r0, #0	@ <retval>,
	beq	.L65		@,
@ Durability.c:42: 	if (item.durability <= battleUnit->hitsTaken){
	adds	r4, r4, #127	@ tmp143,
@ Durability.c:42: 	if (item.durability <= battleUnit->hitsTaken){
	ldrb	r3, [r4]	@ tmp145,
	cmp	r3, r7	@ tmp145, item$durability
	adcs	r5, r5, r5	@ tmp146, tmp128, tmp128
	lsls	r0, r5, #24	@ <retval>, tmp146,
	lsrs	r0, r0, #24	@ <retval>, <retval>,
	b	.L65		@
	.size	CheckIfEquipmentBroke, .-CheckIfEquipmentBroke
	.align	1
	.global	DecrementItemSlotDurability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DecrementItemSlotDurability, %function
DecrementItemSlotDurability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #1	@ tmp122, tmp129,
	adds	r0, r0, r1	@ _12, tmp128, tmp122
@ Durability.c:74: 	item.durability -= amount;
	ldrb	r3, [r0, #31]	@ MEM <u8> [(struct Unit *)_12 + 31B], MEM <u8> [(struct Unit *)_12 + 31B]
@ Durability.c:76: }
	@ sp needed	@
@ Durability.c:74: 	item.durability -= amount;
	subs	r3, r3, r2	@ tmp126, MEM <u8> [(struct Unit *)_12 + 31B], tmp130
@ Durability.c:75: 	unit->items[itemSlot] = item;
	strb	r3, [r0, #31]	@ tmp126, MEM <u8> [(struct Unit *)_12 + 31B]
@ Durability.c:76: }
	bx	lr
	.size	DecrementItemSlotDurability, .-DecrementItemSlotDurability
	.align	1
	.global	PopR_InitEquipmentBroke
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PopR_InitEquipmentBroke, %function
PopR_InitEquipmentBroke:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}	@
@ Durability.c:80: 	if (CheckIfEquipmentBroke(&gBattleActor)) {
	ldr	r5, .L79	@ tmp118,
	movs	r0, r5	@, tmp118
	bl	CheckIfEquipmentBroke		@
	subs	r4, r0, #0	@ <retval>, tmp147,
@ Durability.c:80: 	if (CheckIfEquipmentBroke(&gBattleActor)) {
	beq	.L73		@,
.L78:
@ Durability.c:87: 		SetPopupItem(GetUnitEquippedItem(&gBattleTarget.unit).number);
	movs	r0, r5	@, tmp131
	bl	GetUnitEquippedItem		@
@ Durability.c:87: 		SetPopupItem(GetUnitEquippedItem(&gBattleTarget.unit).number);
	lsls	r0, r0, #24	@ tmp141, tmp150,
	ldr	r3, .L79+4	@ tmp143,
	lsrs	r0, r0, #24	@ tmp141, tmp141,
	bl	.L27		@
@ Durability.c:88: 		return true;
	b	.L74		@
.L73:
@ Durability.c:86: 	if (CheckIfEquipmentBroke(&gBattleTarget)) {
	ldr	r5, .L79+8	@ tmp131,
	movs	r0, r5	@, tmp131
	bl	CheckIfEquipmentBroke		@
	subs	r4, r0, #0	@ <retval>, tmp149,
@ Durability.c:86: 	if (CheckIfEquipmentBroke(&gBattleTarget)) {
	bne	.L78		@,
.L74:
@ Durability.c:92: }
	@ sp needed	@
	movs	r0, r4	@, <retval>
	pop	{r1, r2, r3, r4, r5}
	pop	{r1}
	bx	r1
.L80:
	.align	2
.L79:
	.word	gBattleActor
	.word	SetPopupItem
	.word	gBattleTarget
	.size	PopR_InitEquipmentBroke, .-PopR_InitEquipmentBroke
	.align	1
	.global	New_SaveUnitFromBattle
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	New_SaveUnitFromBattle, %function
New_SaveUnitFromBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
@ Durability.c:98: 	unit->level = battleUnit->unit.level;
	movs	r3, #8	@ _1,
@ Durability.c:94: void New_SaveUnitFromBattle(Unit* unit, BattleUnit* battleUnit){
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ Durability.c:98: 	unit->level = battleUnit->unit.level;
	ldrsb	r3, [r1, r3]	@ _1,* _1
@ Durability.c:98: 	unit->level = battleUnit->unit.level;
	strb	r3, [r0, #8]	@ _1, unit_78(D)->level
@ Durability.c:99: 	unit->exp = battleUnit->unit.exp;
	ldrb	r3, [r1, #9]	@ _2,
@ Durability.c:99: 	unit->exp = battleUnit->unit.exp;
	strb	r3, [r0, #9]	@ _2, unit_78(D)->exp
@ Durability.c:100: 	unit->curHP = battleUnit->unit.curHP;
	movs	r3, #19	@ _3,
	ldrsb	r3, [r1, r3]	@ _3,* _3
@ Durability.c:100: 	unit->curHP = battleUnit->unit.curHP;
	strb	r3, [r0, #19]	@ _3, unit_78(D)->curHP
@ Durability.c:94: void New_SaveUnitFromBattle(Unit* unit, BattleUnit* battleUnit){
	movs	r5, r1	@ battleUnit, tmp345
@ Durability.c:101: 	unit->state = battleUnit->unit.state;
	ldr	r3, [r1, #12]	@ _4, battleUnit_77(D)->unit.state
@ Durability.c:106: 	if (battleUnit->statusOut < 0){
	movs	r1, #111	@ _9,
@ Durability.c:101: 	unit->state = battleUnit->unit.state;
	str	r3, [r0, #12]	@ _4, unit_78(D)->state
@ Durability.c:104: 	idkAddr = ((unit->state>>11) & 7);
	ldr	r2, .L100	@ tmp200,
@ Durability.c:104: 	idkAddr = ((unit->state>>11) & 7);
	lsls	r3, r3, #18	@ tmp203, _4,
	lsrs	r3, r3, #29	@ tmp202, tmp203,
@ Durability.c:104: 	idkAddr = ((unit->state>>11) & 7);
	str	r3, [r2]	@ tmp202, idkAddr
@ Durability.c:106: 	if (battleUnit->statusOut < 0){
	ldrsb	r1, [r5, r1]	@ _9,* _9
@ Durability.c:94: void New_SaveUnitFromBattle(Unit* unit, BattleUnit* battleUnit){
	movs	r4, r0	@ unit, tmp344
@ Durability.c:106: 	if (battleUnit->statusOut < 0){
	cmp	r1, #0	@ _9,
	bge	.L82		@,
@ Durability.c:107: 		SetUnitNewStatus(unit, battleUnit->statusOut);
	ldr	r3, .L100+4	@ tmp210,
	bl	.L27		@
.L82:
@ Durability.c:110: 	unit->maxHP += battleUnit->changeHP;
	movs	r2, r5	@ tmp213, battleUnit
	adds	r2, r2, #115	@ tmp213,
	ldrb	r2, [r2]	@ tmp217,
	ldrb	r3, [r4, #18]	@ tmp215,
	adds	r3, r3, r2	@ tmp218, tmp215, tmp217
@ Durability.c:111: 	unit->pow += battleUnit->changePow;
	movs	r2, r5	@ tmp222, battleUnit
@ Durability.c:110: 	unit->maxHP += battleUnit->changeHP;
	strb	r3, [r4, #18]	@ tmp218, unit_78(D)->maxHP
@ Durability.c:111: 	unit->pow += battleUnit->changePow;
	adds	r2, r2, #116	@ tmp222,
	ldrb	r2, [r2]	@ tmp226,
	ldrb	r3, [r4, #20]	@ tmp224,
	adds	r3, r3, r2	@ tmp227, tmp224, tmp226
@ Durability.c:112: 	unit->skl += battleUnit->changeSkl;
	movs	r2, r5	@ tmp231, battleUnit
@ Durability.c:111: 	unit->pow += battleUnit->changePow;
	strb	r3, [r4, #20]	@ tmp227, unit_78(D)->pow
@ Durability.c:112: 	unit->skl += battleUnit->changeSkl;
	adds	r2, r2, #117	@ tmp231,
	ldrb	r2, [r2]	@ tmp235,
	ldrb	r3, [r4, #21]	@ tmp233,
	adds	r3, r3, r2	@ tmp236, tmp233, tmp235
@ Durability.c:113: 	unit->spd += battleUnit->changeSpd;
	movs	r2, r5	@ tmp240, battleUnit
@ Durability.c:112: 	unit->skl += battleUnit->changeSkl;
	strb	r3, [r4, #21]	@ tmp236, unit_78(D)->skl
@ Durability.c:113: 	unit->spd += battleUnit->changeSpd;
	adds	r2, r2, #118	@ tmp240,
	ldrb	r2, [r2]	@ tmp244,
	ldrb	r3, [r4, #22]	@ tmp242,
	adds	r3, r3, r2	@ tmp245, tmp242, tmp244
@ Durability.c:114: 	unit->def += battleUnit->changeDef;
	movs	r2, r5	@ tmp249, battleUnit
@ Durability.c:113: 	unit->spd += battleUnit->changeSpd;
	strb	r3, [r4, #22]	@ tmp245, unit_78(D)->spd
@ Durability.c:114: 	unit->def += battleUnit->changeDef;
	adds	r2, r2, #119	@ tmp249,
	ldrb	r2, [r2]	@ tmp253,
	ldrb	r3, [r4, #23]	@ tmp251,
	adds	r3, r3, r2	@ tmp254, tmp251, tmp253
@ Durability.c:115: 	unit->res += battleUnit->changeRes;
	movs	r2, r5	@ tmp258, battleUnit
@ Durability.c:114: 	unit->def += battleUnit->changeDef;
	strb	r3, [r4, #23]	@ tmp254, unit_78(D)->def
@ Durability.c:115: 	unit->res += battleUnit->changeRes;
	adds	r2, r2, #120	@ tmp258,
	ldrb	r2, [r2]	@ tmp262,
	ldrb	r3, [r4, #24]	@ tmp260,
	adds	r3, r3, r2	@ tmp263, tmp260, tmp262
@ Durability.c:116: 	unit->lck += battleUnit->changeLck;
	movs	r2, r5	@ tmp267, battleUnit
@ Durability.c:115: 	unit->res += battleUnit->changeRes;
	strb	r3, [r4, #24]	@ tmp263, unit_78(D)->res
@ Durability.c:116: 	unit->lck += battleUnit->changeLck;
	adds	r2, r2, #121	@ tmp267,
	ldrb	r2, [r2]	@ tmp271,
	ldrb	r3, [r4, #25]	@ tmp269,
	adds	r3, r3, r2	@ tmp272, tmp269, tmp271
	strb	r3, [r4, #25]	@ tmp272, unit_78(D)->lck
@ Durability.c:119: 	unit->mag += battleUnit->changeMag;
	movs	r1, r5	@ tmp279, battleUnit
	movs	r3, r4	@ tmp276, unit
	adds	r1, r1, #122	@ tmp279,
	adds	r3, r3, #58	@ tmp276,
	ldrb	r2, [r3]	@ tmp281,
	ldrb	r1, [r1]	@ tmp283,
	adds	r2, r2, r1	@ tmp284, tmp281, tmp283
@ Durability.c:121: 	CheckForStatCaps(unit);
	movs	r0, r4	@, unit
@ Durability.c:119: 	unit->mag += battleUnit->changeMag;
	strb	r2, [r3]	@ tmp284, unit_78(D)->mag
@ Durability.c:121: 	CheckForStatCaps(unit);
	ldr	r3, .L100+8	@ tmp289,
	bl	.L27		@
@ Durability.c:123: 	int newWexp = GetBattleNewWEXP(battleUnit);
	movs	r0, r5	@, battleUnit
	ldr	r3, .L100+12	@ tmp290,
	bl	.L27		@
@ Durability.c:125: 	if (newWexp != 0){
	cmp	r0, #0	@ newWexp,
	beq	.L83		@,
@ Durability.c:126: 		unit->ranks[battleUnit->weaponType] = newWexp;
	movs	r3, r5	@ tmp293, battleUnit
	adds	r3, r3, #80	@ tmp293,
	ldrb	r3, [r3]	@ tmp294,
@ Durability.c:126: 		unit->ranks[battleUnit->weaponType] = newWexp;
	adds	r3, r4, r3	@ tmp295, unit, tmp294
	adds	r3, r3, #40	@ tmp298,
	strb	r0, [r3]	@ newWexp, unit_78(D)->ranks[_58]
.L83:
@ Durability.c:130: 		unit->items[i] = battleUnit->unit.items[i];
	movs	r1, r5	@ tmp302, battleUnit
	movs	r0, r4	@ tmp303, unit
	movs	r2, #10	@,
	ldr	r3, .L100+16	@ tmp304,
	adds	r1, r1, #30	@ tmp302,
	adds	r0, r0, #30	@ tmp303,
	bl	.L27		@
@ Durability.c:134: 	Item item = GetUnitEquippedItem(unit);
	movs	r0, r4	@, unit
	bl	GetUnitEquippedItem		@
	add	r7, sp, #4	@ tmp307,,
	strh	r0, [r7]	@ tmp305, item
@ Durability.c:136: 	if (item.number != 0){
	lsls	r0, r0, #24	@ item, tmp305,
	lsrs	r0, r0, #24	@ item, item,
	beq	.L84		@,
@ Durability.c:137: 		int itemSlot = GetUnitEquippedItemSlot(unit);
	movs	r0, r4	@, unit
	bl	GetUnitEquippedItemSlot		@
	movs	r6, r0	@ itemSlot, tmp348
@ Durability.c:139: 		if (IsItemOffenseEquipment(item)){
	ldr	r0, [sp, #4]	@, item
	bl	IsItemOffenseEquipment		@
@ Durability.c:139: 		if (IsItemOffenseEquipment(item)){
	cmp	r0, #0	@ tmp349,
	beq	.L85		@,
@ Durability.c:74: 	item.durability -= amount;
	movs	r2, r5	@ tmp316, battleUnit
	lsls	r6, r6, #1	@ tmp313, itemSlot,
	adds	r6, r4, r6	@ _137, unit, tmp313
	ldrb	r3, [r6, #31]	@ MEM <u8> [(struct Unit *)_137 + 31B], MEM <u8> [(struct Unit *)_137 + 31B]
	adds	r2, r2, #126	@ tmp316,
.L99:
	ldrb	r2, [r2]	@ tmp333,
	subs	r3, r3, r2	@ tmp334, MEM <u8> [(struct Unit *)_122 + 31B], tmp333
@ Durability.c:75: 	unit->items[itemSlot] = item;
	strb	r3, [r6, #31]	@ tmp334,
.L84:
@ Durability.c:148: 	RemoveUnitBlankItems(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L100+20	@ tmp336,
	bl	.L27		@
@ Durability.c:150: 	if (battleUnit->expGain != 0){
	movs	r1, #110	@ _65,
	ldrsb	r1, [r5, r1]	@ _65,* _65
@ Durability.c:150: 	if (battleUnit->expGain != 0){
	cmp	r1, #0	@ _65,
	beq	.L81		@,
@ Durability.c:151: 		BWL_AddExpGained(unit->pCharacterData->number, battleUnit->expGain);
	ldr	r3, [r4]	@ unit_78(D)->pCharacterData, unit_78(D)->pCharacterData
@ Durability.c:151: 		BWL_AddExpGained(unit->pCharacterData->number, battleUnit->expGain);
	ldrb	r0, [r3, #4]	@ tmp341,
	ldr	r3, .L100+24	@ tmp342,
	bl	.L27		@
.L81:
@ Durability.c:154: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L85:
@ Durability.c:142: 		else if (IsItemDefenseEquipment(item)){
	ldr	r0, [r7]	@, item
	bl	IsItemDefenseEquipment		@
@ Durability.c:142: 		else if (IsItemDefenseEquipment(item)){
	cmp	r0, #0	@ tmp350,
	beq	.L84		@,
@ Durability.c:74: 	item.durability -= amount;
	movs	r2, r5	@ tmp329, battleUnit
	lsls	r6, r6, #1	@ tmp326, itemSlot,
	adds	r6, r4, r6	@ _122, unit, tmp326
	ldrb	r3, [r6, #31]	@ MEM <u8> [(struct Unit *)_122 + 31B], MEM <u8> [(struct Unit *)_122 + 31B]
	adds	r2, r2, #127	@ tmp329,
	b	.L99		@
.L101:
	.align	2
.L100:
	.word	idkAddr
	.word	SetUnitNewStatus
	.word	CheckForStatCaps
	.word	GetBattleNewWEXP
	.word	memmove
	.word	RemoveUnitBlankItems
	.word	BWL_AddExpGained
	.size	New_SaveUnitFromBattle, .-New_SaveUnitFromBattle
	.ident	"GCC: (devkitARM release 55) 10.2.0"
	.code 16
	.align	1
.L27:
	bx	r3
