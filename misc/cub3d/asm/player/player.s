	.text
	.file	"player.c"
	.globl	is_moving_key                   # -- Begin function is_moving_key
	.p2align	4, 0x90
	.type	is_moving_key,@function
is_moving_key:                          # @is_moving_key
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/player/player.c"
	.loc	1 16 0                          # src/player/player.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp0:
	.loc	1 21 13 prologue_end            # src/player/player.c:21:13
	cmpl	$119, -8(%rbp)
	.loc	1 21 21 is_stmt 0               # src/player/player.c:21:21
	je	.LBB0_4
# %bb.1:
	.loc	1 21 31                         # src/player/player.c:21:31
	cmpl	$87, -8(%rbp)
	.loc	1 22 3 is_stmt 1                # src/player/player.c:22:3
	je	.LBB0_4
# %bb.2:
	.loc	1 22 13 is_stmt 0               # src/player/player.c:22:13
	cmpl	$115, -8(%rbp)
	.loc	1 22 21                         # src/player/player.c:22:21
	je	.LBB0_4
# %bb.3:
	.loc	1 22 31                         # src/player/player.c:22:31
	cmpl	$83, -8(%rbp)
.Ltmp1:
	.loc	1 21 6 is_stmt 1                # src/player/player.c:21:6
	jne	.LBB0_5
.LBB0_4:
.Ltmp2:
	.loc	1 23 3                          # src/player/player.c:23:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_6
.Ltmp3:
.LBB0_5:
	.loc	1 24 2                          # src/player/player.c:24:2
	movb	$0, -1(%rbp)
.LBB0_6:
	.loc	1 25 1                          # src/player/player.c:25:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_moving_key, .Lfunc_end0-is_moving_key
	.cfi_endproc
                                        # -- End function
	.globl	is_rotation_key                 # -- Begin function is_rotation_key
	.p2align	4, 0x90
	.type	is_rotation_key,@function
is_rotation_key:                        # @is_rotation_key
.Lfunc_begin1:
	.loc	1 28 0                          # src/player/player.c:28:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp5:
	.loc	1 29 13 prologue_end            # src/player/player.c:29:13
	cmpl	$97, -8(%rbp)
	.loc	1 29 21 is_stmt 0               # src/player/player.c:29:21
	je	.LBB1_4
# %bb.1:
	.loc	1 29 31                         # src/player/player.c:29:31
	cmpl	$65, -8(%rbp)
	.loc	1 30 3 is_stmt 1                # src/player/player.c:30:3
	je	.LBB1_4
# %bb.2:
	.loc	1 30 13 is_stmt 0               # src/player/player.c:30:13
	cmpl	$100, -8(%rbp)
	.loc	1 30 21                         # src/player/player.c:30:21
	je	.LBB1_4
# %bb.3:
	.loc	1 30 31                         # src/player/player.c:30:31
	cmpl	$68, -8(%rbp)
.Ltmp6:
	.loc	1 29 6 is_stmt 1                # src/player/player.c:29:6
	jne	.LBB1_5
.LBB1_4:
.Ltmp7:
	.loc	1 31 3                          # src/player/player.c:31:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_6
.Ltmp8:
.LBB1_5:
	.loc	1 32 2                          # src/player/player.c:32:2
	movb	$0, -1(%rbp)
.LBB1_6:
	.loc	1 33 1                          # src/player/player.c:33:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	is_rotation_key, .Lfunc_end1-is_rotation_key
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function rotate_player
.LCPI2_0:
	.quad	0x3fa999999999999a              # double 0.050000000000000003
	.text
	.globl	rotate_player
	.p2align	4, 0x90
	.type	rotate_player,@function
rotate_player:                          # @rotate_player
.Lfunc_begin2:
	.loc	1 36 0                          # src/player/player.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp10:
	.loc	1 38 13 prologue_end            # src/player/player.c:38:13
	cmpl	$97, -20(%rbp)
	.loc	1 38 21 is_stmt 0               # src/player/player.c:38:21
	je	.LBB2_2
# %bb.1:
	.loc	1 38 31                         # src/player/player.c:38:31
	cmpl	$65, -20(%rbp)
.Ltmp11:
	.loc	1 38 6                          # src/player/player.c:38:6
	jne	.LBB2_3
.LBB2_2:
.Ltmp12:
	.loc	1 39 3 is_stmt 1                # src/player/player.c:39:3
	movq	-16(%rbp), %rax
	.loc	1 39 17 is_stmt 0               # src/player/player.c:39:17
	movsd	16(%rax), %xmm0                 # xmm0 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rax)
	.loc	1 39 3                          # src/player/player.c:39:3
	jmp	.LBB2_7
.LBB2_3:
.Ltmp13:
	.loc	1 40 18 is_stmt 1               # src/player/player.c:40:18
	cmpl	$100, -20(%rbp)
	.loc	1 40 26 is_stmt 0               # src/player/player.c:40:26
	je	.LBB2_5
# %bb.4:
	.loc	1 40 36                         # src/player/player.c:40:36
	cmpl	$68, -20(%rbp)
.Ltmp14:
	.loc	1 40 11                         # src/player/player.c:40:11
	jne	.LBB2_6
.LBB2_5:
.Ltmp15:
	.loc	1 41 3 is_stmt 1                # src/player/player.c:41:3
	movq	-16(%rbp), %rax
	.loc	1 41 17 is_stmt 0               # src/player/player.c:41:17
	movsd	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
.Ltmp16:
.LBB2_6:
	.loc	1 0 17                          # src/player/player.c:0:17
	jmp	.LBB2_7
.LBB2_7:
	.loc	1 42 17 is_stmt 1               # src/player/player.c:42:17
	movq	-16(%rbp), %rax
	.loc	1 42 25 is_stmt 0               # src/player/player.c:42:25
	movsd	16(%rax), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 42 2                          # src/player/player.c:42:2
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	.loc	1 43 1 is_stmt 1                # src/player/player.c:43:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	rotate_player, .Lfunc_end2-rotate_player
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function move_player
.LCPI3_0:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	move_player
	.p2align	4, 0x90
	.type	move_player,@function
move_player:                            # @move_player
.Lfunc_begin3:
	.loc	1 46 0                          # src/player/player.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp18:
	.loc	1 47 14 prologue_end            # src/player/player.c:47:14
	cmpl	$97, -20(%rbp)
	.loc	1 47 22 is_stmt 0               # src/player/player.c:47:22
	je	.LBB3_2
# %bb.1:
	.loc	1 47 32                         # src/player/player.c:47:32
	cmpl	$65, -20(%rbp)
	.loc	1 48 3 is_stmt 1                # src/player/player.c:48:3
	jne	.LBB3_4
.LBB3_2:
	.loc	1 48 27 is_stmt 0               # src/player/player.c:48:27
	movq	-8(%rbp), %rdi
	.loc	1 48 34                         # src/player/player.c:48:34
	movq	-16(%rbp), %rsi
	.loc	1 48 7                          # src/player/player.c:48:7
	callq	have_collision_west
.Ltmp19:
	.loc	1 47 6 is_stmt 1                # src/player/player.c:47:6
	testb	$1, %al
	jne	.LBB3_4
# %bb.3:
.Ltmp20:
	.loc	1 49 3                          # src/player/player.c:49:3
	movq	-16(%rbp), %rax
	.loc	1 49 17 is_stmt 0               # src/player/player.c:49:17
	movsd	24(%rax), %xmm0                 # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	.loc	1 49 3                          # src/player/player.c:49:3
	jmp	.LBB3_9
.LBB3_4:
.Ltmp21:
	.loc	1 50 19 is_stmt 1               # src/player/player.c:50:19
	cmpl	$100, -20(%rbp)
	.loc	1 50 27 is_stmt 0               # src/player/player.c:50:27
	je	.LBB3_6
# %bb.5:
	.loc	1 50 37                         # src/player/player.c:50:37
	cmpl	$68, -20(%rbp)
	.loc	1 51 3 is_stmt 1                # src/player/player.c:51:3
	jne	.LBB3_8
.LBB3_6:
	.loc	1 51 27 is_stmt 0               # src/player/player.c:51:27
	movq	-8(%rbp), %rdi
	.loc	1 51 34                         # src/player/player.c:51:34
	movq	-16(%rbp), %rsi
	.loc	1 51 7                          # src/player/player.c:51:7
	callq	have_collision_east
.Ltmp22:
	.loc	1 50 11 is_stmt 1               # src/player/player.c:50:11
	testb	$1, %al
	jne	.LBB3_8
# %bb.7:
.Ltmp23:
	.loc	1 52 3                          # src/player/player.c:52:3
	movq	-16(%rbp), %rax
	.loc	1 52 17 is_stmt 0               # src/player/player.c:52:17
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.Ltmp24:
.LBB3_8:
	.loc	1 0 17                          # src/player/player.c:0:17
	jmp	.LBB3_9
.LBB3_9:
.Ltmp25:
	.loc	1 53 14 is_stmt 1               # src/player/player.c:53:14
	cmpl	$119, -20(%rbp)
	.loc	1 53 22 is_stmt 0               # src/player/player.c:53:22
	je	.LBB3_11
# %bb.10:
	.loc	1 53 32                         # src/player/player.c:53:32
	cmpl	$87, -20(%rbp)
	.loc	1 54 3 is_stmt 1                # src/player/player.c:54:3
	jne	.LBB3_13
.LBB3_11:
	.loc	1 54 28 is_stmt 0               # src/player/player.c:54:28
	movq	-8(%rbp), %rdi
	.loc	1 54 35                         # src/player/player.c:54:35
	movq	-16(%rbp), %rsi
	.loc	1 54 7                          # src/player/player.c:54:7
	callq	have_collision_north
.Ltmp26:
	.loc	1 53 6 is_stmt 1                # src/player/player.c:53:6
	testb	$1, %al
	jne	.LBB3_13
# %bb.12:
.Ltmp27:
	.loc	1 55 3                          # src/player/player.c:55:3
	movq	-16(%rbp), %rax
	.loc	1 55 17 is_stmt 0               # src/player/player.c:55:17
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rax)
	.loc	1 55 3                          # src/player/player.c:55:3
	jmp	.LBB3_18
.LBB3_13:
.Ltmp28:
	.loc	1 56 19 is_stmt 1               # src/player/player.c:56:19
	cmpl	$115, -20(%rbp)
	.loc	1 56 27 is_stmt 0               # src/player/player.c:56:27
	je	.LBB3_15
# %bb.14:
	.loc	1 56 37                         # src/player/player.c:56:37
	cmpl	$83, -20(%rbp)
	.loc	1 57 3 is_stmt 1                # src/player/player.c:57:3
	jne	.LBB3_17
.LBB3_15:
	.loc	1 57 28 is_stmt 0               # src/player/player.c:57:28
	movq	-8(%rbp), %rdi
	.loc	1 57 35                         # src/player/player.c:57:35
	movq	-16(%rbp), %rsi
	.loc	1 57 7                          # src/player/player.c:57:7
	callq	have_collision_south
.Ltmp29:
	.loc	1 56 11 is_stmt 1               # src/player/player.c:56:11
	testb	$1, %al
	jne	.LBB3_17
# %bb.16:
.Ltmp30:
	.loc	1 58 3                          # src/player/player.c:58:3
	movq	-16(%rbp), %rax
	.loc	1 58 17 is_stmt 0               # src/player/player.c:58:17
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	32(%rax), %xmm0
	movsd	%xmm0, 32(%rax)
.Ltmp31:
.LBB3_17:
	.loc	1 0 17                          # src/player/player.c:0:17
	jmp	.LBB3_18
.LBB3_18:
	.loc	1 59 1 is_stmt 1                # src/player/player.c:59:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp32:
.Lfunc_end3:
	.size	move_player, .Lfunc_end3-move_player
	.cfi_endproc
                                        # -- End function
	.globl	player_event                    # -- Begin function player_event
	.p2align	4, 0x90
	.type	player_event,@function
player_event:                           # @player_event
.Lfunc_begin4:
	.loc	1 62 0                          # src/player/player.c:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp33:
	.loc	1 63 20 prologue_end            # src/player/player.c:63:20
	movl	-20(%rbp), %edi
	.loc	1 63 6 is_stmt 0                # src/player/player.c:63:6
	callq	is_moving_key
.Ltmp34:
	.loc	1 63 6                          # src/player/player.c:63:6
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_2
.LBB4_1:
.Ltmp35:
	.loc	1 64 15 is_stmt 1               # src/player/player.c:64:15
	movq	-8(%rbp), %rdi
	.loc	1 64 22 is_stmt 0               # src/player/player.c:64:22
	movq	-16(%rbp), %rsi
	.loc	1 64 30                         # src/player/player.c:64:30
	movl	-20(%rbp), %edx
	.loc	1 64 3                          # src/player/player.c:64:3
	callq	move_player
	jmp	.LBB4_5
.LBB4_2:
.Ltmp36:
	.loc	1 65 27 is_stmt 1               # src/player/player.c:65:27
	movl	-20(%rbp), %edi
	.loc	1 65 11 is_stmt 0               # src/player/player.c:65:11
	callq	is_rotation_key
.Ltmp37:
	.loc	1 65 11                         # src/player/player.c:65:11
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:
.Ltmp38:
	.loc	1 66 17 is_stmt 1               # src/player/player.c:66:17
	movq	-8(%rbp), %rdi
	.loc	1 66 24 is_stmt 0               # src/player/player.c:66:24
	movq	-16(%rbp), %rsi
	.loc	1 66 32                         # src/player/player.c:66:32
	movl	-20(%rbp), %edx
	.loc	1 66 3                          # src/player/player.c:66:3
	callq	rotate_player
.Ltmp39:
.LBB4_4:
	.loc	1 0 3                           # src/player/player.c:0:3
	jmp	.LBB4_5
.LBB4_5:
	.loc	1 67 1 is_stmt 1                # src/player/player.c:67:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp40:
.Lfunc_end4:
	.size	player_event, .Lfunc_end4-player_event
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f\n"
	.size	.L.str, 4

	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	4 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/player/../../include/cub3d.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/player/../../include/cub3d_player.h"
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x63c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	314                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	321                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x52:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	314                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x6b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	321                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x7a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x8f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x9d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	1017                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xab:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	321                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xba:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xcf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xdd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1017                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xeb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	321                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xfa:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x10f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x11d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	1017                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x12b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	321                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x13a:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x141:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x148:0x5 DW_TAG_pointer_type
	.long	333                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x14d:0xb DW_TAG_typedef
	.long	344                             # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x158:0x8d DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x160:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	485                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x16c:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x178:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x184:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x190:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	774                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x19c:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1a8:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1017                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1b4:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1160                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1c0:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1209                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1cc:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1378                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d8:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1e5:0xb DW_TAG_typedef
	.long	496                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1f0:0xb DW_TAG_typedef
	.long	507                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1fb:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x202:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x203:0x5 DW_TAG_pointer_type
	.long	520                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x208:0xb DW_TAG_typedef
	.long	531                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x213:0x75 DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	648                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x227:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	648                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x233:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x23f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x257:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x263:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x26f:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x27b:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x288:0xb DW_TAG_typedef
	.long	659                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x293:0xb DW_TAG_typedef
	.long	670                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x29e:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x2a5:0x5 DW_TAG_pointer_type
	.long	682                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2aa:0xb DW_TAG_typedef
	.long	693                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2b5:0x2d DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2bd:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2c9:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2e2:0xc DW_TAG_array_type
	.long	485                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2e7:0x6 DW_TAG_subrange_type
	.long	750                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2ee:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	6                               # Abbrev [6] 0x2f5:0x5 DW_TAG_pointer_type
	.long	762                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2fa:0x5 DW_TAG_pointer_type
	.long	767                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2ff:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x306:0x5 DW_TAG_pointer_type
	.long	779                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x30b:0xb DW_TAG_typedef
	.long	790                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x316:0x69 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	485                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x336:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x342:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x366:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x372:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x37f:0x5 DW_TAG_pointer_type
	.long	900                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x384:0xb DW_TAG_typedef
	.long	911                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x38f:0x15 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x397:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	932                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3a4:0x5 DW_TAG_pointer_type
	.long	937                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3a9:0xb DW_TAG_typedef
	.long	948                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3b4:0x45 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3bc:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3c8:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3f9:0x5 DW_TAG_pointer_type
	.long	1022                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3fe:0xb DW_TAG_typedef
	.long	1033                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x409:0x69 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x411:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x41d:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x429:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x435:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x441:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x44d:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x459:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x465:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1145                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x472:0x7 DW_TAG_base_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x479:0x5 DW_TAG_pointer_type
	.long	1150                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x47e:0x5 DW_TAG_pointer_type
	.long	1155                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x483:0x5 DW_TAG_pointer_type
	.long	485                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x488:0x5 DW_TAG_pointer_type
	.long	1165                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x48d:0xb DW_TAG_typedef
	.long	1176                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x498:0x21 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4a0:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4ac:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	321                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4b9:0x5 DW_TAG_pointer_type
	.long	1214                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4be:0xb DW_TAG_typedef
	.long	1225                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4c9:0x99 DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x501:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x50d:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x519:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x525:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x531:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x53d:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x549:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x555:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1138                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x562:0x5 DW_TAG_pointer_type
	.long	1383                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x567:0xb DW_TAG_typedef
	.long	1394                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x572:0x39 DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x57a:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x586:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x592:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5ab:0xb DW_TAG_typedef
	.long	1462                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5b6:0xb DW_TAG_typedef
	.long	1473                            # DW_AT_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x5c1:0x7 DW_TAG_base_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x5c8:0x5 DW_TAG_pointer_type
	.long	1485                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5cd:0xb DW_TAG_typedef
	.long	1496                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5d8:0x51 DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5e0:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5ec:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	485                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5f8:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	485                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x604:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1577                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x610:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1577                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x61c:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1577                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x629:0xb DW_TAG_typedef
	.long	1588                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x634:0xb DW_TAG_typedef
	.long	1599                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x63f:0x7 DW_TAG_base_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/player/player.c"           # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=58
.Linfo_string3:
	.asciz	"is_moving_key"                 # string offset=97
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=111
.Linfo_string5:
	.asciz	"is_rotation_key"               # string offset=117
.Linfo_string6:
	.asciz	"rotate_player"                 # string offset=133
.Linfo_string7:
	.asciz	"move_player"                   # string offset=147
.Linfo_string8:
	.asciz	"player_event"                  # string offset=159
.Linfo_string9:
	.asciz	"keynum"                        # string offset=172
.Linfo_string10:
	.asciz	"int"                           # string offset=179
.Linfo_string11:
	.asciz	"cub3d"                         # string offset=183
.Linfo_string12:
	.asciz	"program_state"                 # string offset=189
.Linfo_string13:
	.asciz	"unsigned char"                 # string offset=203
.Linfo_string14:
	.asciz	"__uint8_t"                     # string offset=217
.Linfo_string15:
	.asciz	"uint8_t"                       # string offset=227
.Linfo_string16:
	.asciz	"win_ptr"                       # string offset=235
.Linfo_string17:
	.asciz	"mlx_ptr"                       # string offset=243
.Linfo_string18:
	.asciz	"map"                           # string offset=251
.Linfo_string19:
	.asciz	"width"                         # string offset=255
.Linfo_string20:
	.asciz	"long unsigned int"             # string offset=261
.Linfo_string21:
	.asciz	"__uint64_t"                    # string offset=279
.Linfo_string22:
	.asciz	"uint64_t"                      # string offset=290
.Linfo_string23:
	.asciz	"height"                        # string offset=299
.Linfo_string24:
	.asciz	"no_texture"                    # string offset=306
.Linfo_string25:
	.asciz	"ptr"                           # string offset=317
.Linfo_string26:
	.asciz	"s_xpm"                         # string offset=321
.Linfo_string27:
	.asciz	"t_xpm"                         # string offset=327
.Linfo_string28:
	.asciz	"so_texture"                    # string offset=333
.Linfo_string29:
	.asciz	"we_texture"                    # string offset=344
.Linfo_string30:
	.asciz	"ea_texture"                    # string offset=355
.Linfo_string31:
	.asciz	"ceiling"                       # string offset=366
.Linfo_string32:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=374
.Linfo_string33:
	.asciz	"floor"                         # string offset=394
.Linfo_string34:
	.asciz	"data"                          # string offset=400
.Linfo_string35:
	.asciz	"char"                          # string offset=405
.Linfo_string36:
	.asciz	"s_map"                         # string offset=410
.Linfo_string37:
	.asciz	"t_map"                         # string offset=416
.Linfo_string38:
	.asciz	"file"                          # string offset=422
.Linfo_string39:
	.asciz	"fd"                            # string offset=427
.Linfo_string40:
	.asciz	"mask"                          # string offset=430
.Linfo_string41:
	.asciz	"offset"                        # string offset=435
.Linfo_string42:
	.asciz	"no_filename"                   # string offset=442
.Linfo_string43:
	.asciz	"so_filename"                   # string offset=454
.Linfo_string44:
	.asciz	"we_filename"                   # string offset=466
.Linfo_string45:
	.asciz	"ea_filename"                   # string offset=478
.Linfo_string46:
	.asciz	"s_file"                        # string offset=490
.Linfo_string47:
	.asciz	"t_file"                        # string offset=497
.Linfo_string48:
	.asciz	"scene"                         # string offset=504
.Linfo_string49:
	.asciz	"img"                           # string offset=510
.Linfo_string50:
	.asciz	"addr"                          # string offset=514
.Linfo_string51:
	.asciz	"endian"                        # string offset=519
.Linfo_string52:
	.asciz	"size_line"                     # string offset=526
.Linfo_string53:
	.asciz	"bpp"                           # string offset=536
.Linfo_string54:
	.asciz	"s_img"                         # string offset=540
.Linfo_string55:
	.asciz	"t_img"                         # string offset=546
.Linfo_string56:
	.asciz	"s_scene"                       # string offset=552
.Linfo_string57:
	.asciz	"t_scene"                       # string offset=560
.Linfo_string58:
	.asciz	"player"                        # string offset=568
.Linfo_string59:
	.asciz	"x0"                            # string offset=575
.Linfo_string60:
	.asciz	"y0"                            # string offset=578
.Linfo_string61:
	.asciz	"x1"                            # string offset=581
.Linfo_string62:
	.asciz	"y1"                            # string offset=584
.Linfo_string63:
	.asciz	"angle"                         # string offset=587
.Linfo_string64:
	.asciz	"double"                        # string offset=593
.Linfo_string65:
	.asciz	"pos_x"                         # string offset=600
.Linfo_string66:
	.asciz	"pos_y"                         # string offset=606
.Linfo_string67:
	.asciz	"vertex"                        # string offset=612
.Linfo_string68:
	.asciz	"s_player"                      # string offset=619
.Linfo_string69:
	.asciz	"t_player"                      # string offset=628
.Linfo_string70:
	.asciz	"window"                        # string offset=637
.Linfo_string71:
	.asciz	"s_window"                      # string offset=644
.Linfo_string72:
	.asciz	"t_window"                      # string offset=653
.Linfo_string73:
	.asciz	"raycast"                       # string offset=662
.Linfo_string74:
	.asciz	"posX"                          # string offset=670
.Linfo_string75:
	.asciz	"posY"                          # string offset=675
.Linfo_string76:
	.asciz	"dirX"                          # string offset=680
.Linfo_string77:
	.asciz	"dirY"                          # string offset=685
.Linfo_string78:
	.asciz	"planeX"                        # string offset=690
.Linfo_string79:
	.asciz	"planeY"                        # string offset=697
.Linfo_string80:
	.asciz	"sideX"                         # string offset=704
.Linfo_string81:
	.asciz	"sideY"                         # string offset=710
.Linfo_string82:
	.asciz	"deltaDistX"                    # string offset=716
.Linfo_string83:
	.asciz	"deltaDistY"                    # string offset=727
.Linfo_string84:
	.asciz	"time"                          # string offset=738
.Linfo_string85:
	.asciz	"oldtime"                       # string offset=743
.Linfo_string86:
	.asciz	"s_raycast"                     # string offset=751
.Linfo_string87:
	.asciz	"t_raycast"                     # string offset=761
.Linfo_string88:
	.asciz	"minimap"                       # string offset=771
.Linfo_string89:
	.asciz	"unsigned short"                # string offset=779
.Linfo_string90:
	.asciz	"__uint16_t"                    # string offset=794
.Linfo_string91:
	.asciz	"uint16_t"                      # string offset=805
.Linfo_string92:
	.asciz	"x_pos"                         # string offset=814
.Linfo_string93:
	.asciz	"y_pos"                         # string offset=820
.Linfo_string94:
	.asciz	"s_minimap"                     # string offset=826
.Linfo_string95:
	.asciz	"t_minimap"                     # string offset=836
.Linfo_string96:
	.asciz	"main_menu"                     # string offset=846
.Linfo_string97:
	.asciz	"xpm"                           # string offset=856
.Linfo_string98:
	.asciz	"color"                         # string offset=860
.Linfo_string99:
	.asciz	"unsigned int"                  # string offset=866
.Linfo_string100:
	.asciz	"__uint32_t"                    # string offset=879
.Linfo_string101:
	.asciz	"uint32_t"                      # string offset=890
.Linfo_string102:
	.asciz	"s_main_menu"                   # string offset=899
.Linfo_string103:
	.asciz	"t_main_menu"                   # string offset=911
.Linfo_string104:
	.asciz	"s_cub3d"                       # string offset=923
.Linfo_string105:
	.asciz	"t_cub3d"                       # string offset=931
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_moving_key
	.addrsig_sym is_rotation_key
	.addrsig_sym rotate_player
	.addrsig_sym printf
	.addrsig_sym move_player
	.addrsig_sym have_collision_west
	.addrsig_sym have_collision_east
	.addrsig_sym have_collision_north
	.addrsig_sym have_collision_south
	.section	.debug_line,"",@progbits
.Lline_table_start0:
