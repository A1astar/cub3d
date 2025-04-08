	.text
	.file	"player_collision.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function have_collision_north
.LCPI0_0:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	have_collision_north
	.p2align	4, 0x90
	.type	have_collision_north,@function
have_collision_north:                   # @have_collision_north
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/player/player_collision.c"
	.loc	1 16 0                          # src/player/player_collision.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/player/player_collision.c:17:6
	movq	-16(%rbp), %rax
	.loc	1 17 13 is_stmt 0               # src/player/player_collision.c:17:13
	movq	24(%rax), %rax
	.loc	1 17 18                         # src/player/player_collision.c:17:18
	movq	56(%rax), %rax
	.loc	1 17 28                         # src/player/player_collision.c:17:28
	movq	-24(%rbp), %rcx
	.loc	1 17 23                         # src/player/player_collision.c:17:23
	cvttsd2si	32(%rcx), %ecx
	.loc	1 17 42                         # src/player/player_collision.c:17:42
	subl	$1, %ecx
	.loc	1 17 6                          # src/player/player_collision.c:17:6
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 17 52                         # src/player/player_collision.c:17:52
	movq	-24(%rbp), %rcx
	.loc	1 17 47                         # src/player/player_collision.c:17:47
	cvttsd2si	24(%rcx), %ecx
	.loc	1 17 6                          # src/player/player_collision.c:17:6
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 17 67                         # src/player/player_collision.c:17:67
	cmpl	$49, %eax
	.loc	1 18 3 is_stmt 1                # src/player/player_collision.c:18:3
	jne	.LBB0_3
# %bb.1:
	.loc	1 18 12 is_stmt 0               # src/player/player_collision.c:18:12
	movq	-24(%rbp), %rax
	.loc	1 18 20                         # src/player/player_collision.c:18:20
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 18 26                         # src/player/player_collision.c:18:26
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	.loc	1 18 6                          # src/player/player_collision.c:18:6
	cvttsd2si	%xmm0, %eax
	.loc	1 18 42                         # src/player/player_collision.c:18:42
	movq	-24(%rbp), %rcx
	.loc	1 18 37                         # src/player/player_collision.c:18:37
	cvttsd2si	32(%rcx), %ecx
	.loc	1 18 56                         # src/player/player_collision.c:18:56
	subl	$1, %ecx
	.loc	1 18 34                         # src/player/player_collision.c:18:34
	cmpl	%ecx, %eax
.Ltmp1:
	.loc	1 17 6 is_stmt 1                # src/player/player_collision.c:17:6
	jne	.LBB0_3
# %bb.2:
.Ltmp2:
	.loc	1 19 3                          # src/player/player_collision.c:19:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_4
.Ltmp3:
.LBB0_3:
	.loc	1 20 2                          # src/player/player_collision.c:20:2
	movb	$0, -1(%rbp)
.LBB0_4:
	.loc	1 21 1                          # src/player/player_collision.c:21:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	have_collision_north, .Lfunc_end0-have_collision_north
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function have_collision_south
.LCPI1_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	have_collision_south
	.p2align	4, 0x90
	.type	have_collision_south,@function
have_collision_south:                   # @have_collision_south
.Lfunc_begin1:
	.loc	1 24 0                          # src/player/player_collision.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp5:
	.loc	1 25 6 prologue_end             # src/player/player_collision.c:25:6
	movq	-16(%rbp), %rax
	.loc	1 25 13 is_stmt 0               # src/player/player_collision.c:25:13
	movq	24(%rax), %rax
	.loc	1 25 18                         # src/player/player_collision.c:25:18
	movq	56(%rax), %rax
	.loc	1 25 28                         # src/player/player_collision.c:25:28
	movq	-24(%rbp), %rcx
	.loc	1 25 23                         # src/player/player_collision.c:25:23
	cvttsd2si	32(%rcx), %ecx
	.loc	1 25 42                         # src/player/player_collision.c:25:42
	addl	$1, %ecx
	.loc	1 25 6                          # src/player/player_collision.c:25:6
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 25 52                         # src/player/player_collision.c:25:52
	movq	-24(%rbp), %rcx
	.loc	1 25 47                         # src/player/player_collision.c:25:47
	cvttsd2si	24(%rcx), %ecx
	.loc	1 25 6                          # src/player/player_collision.c:25:6
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 25 67                         # src/player/player_collision.c:25:67
	cmpl	$49, %eax
	.loc	1 26 3 is_stmt 1                # src/player/player_collision.c:26:3
	jne	.LBB1_3
# %bb.1:
	.loc	1 26 12 is_stmt 0               # src/player/player_collision.c:26:12
	movq	-24(%rbp), %rax
	.loc	1 26 26                         # src/player/player_collision.c:26:26
	movsd	.LCPI1_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	32(%rax), %xmm0
	.loc	1 26 6                          # src/player/player_collision.c:26:6
	cvttsd2si	%xmm0, %eax
	.loc	1 26 42                         # src/player/player_collision.c:26:42
	movq	-24(%rbp), %rcx
	.loc	1 26 37                         # src/player/player_collision.c:26:37
	cvttsd2si	32(%rcx), %ecx
	.loc	1 26 56                         # src/player/player_collision.c:26:56
	addl	$1, %ecx
	.loc	1 26 34                         # src/player/player_collision.c:26:34
	cmpl	%ecx, %eax
.Ltmp6:
	.loc	1 25 6 is_stmt 1                # src/player/player_collision.c:25:6
	jne	.LBB1_3
# %bb.2:
.Ltmp7:
	.loc	1 27 3                          # src/player/player_collision.c:27:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_4
.Ltmp8:
.LBB1_3:
	.loc	1 28 2                          # src/player/player_collision.c:28:2
	movb	$0, -1(%rbp)
.LBB1_4:
	.loc	1 29 1                          # src/player/player_collision.c:29:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	have_collision_south, .Lfunc_end1-have_collision_south
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function have_collision_east
.LCPI2_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	have_collision_east
	.p2align	4, 0x90
	.type	have_collision_east,@function
have_collision_east:                    # @have_collision_east
.Lfunc_begin2:
	.loc	1 32 0                          # src/player/player_collision.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp10:
	.loc	1 33 6 prologue_end             # src/player/player_collision.c:33:6
	movq	-16(%rbp), %rax
	.loc	1 33 13 is_stmt 0               # src/player/player_collision.c:33:13
	movq	24(%rax), %rax
	.loc	1 33 18                         # src/player/player_collision.c:33:18
	movq	56(%rax), %rax
	.loc	1 33 28                         # src/player/player_collision.c:33:28
	movq	-24(%rbp), %rcx
	.loc	1 33 23                         # src/player/player_collision.c:33:23
	cvttsd2si	32(%rcx), %ecx
	.loc	1 33 6                          # src/player/player_collision.c:33:6
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 33 48                         # src/player/player_collision.c:33:48
	movq	-24(%rbp), %rcx
	.loc	1 33 43                         # src/player/player_collision.c:33:43
	cvttsd2si	24(%rcx), %ecx
	.loc	1 33 62                         # src/player/player_collision.c:33:62
	addl	$1, %ecx
	.loc	1 33 6                          # src/player/player_collision.c:33:6
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 33 67                         # src/player/player_collision.c:33:67
	cmpl	$49, %eax
	.loc	1 34 3 is_stmt 1                # src/player/player_collision.c:34:3
	jne	.LBB2_3
# %bb.1:
	.loc	1 34 12 is_stmt 0               # src/player/player_collision.c:34:12
	movq	-24(%rbp), %rax
	.loc	1 34 26                         # src/player/player_collision.c:34:26
	movsd	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	24(%rax), %xmm0
	.loc	1 34 6                          # src/player/player_collision.c:34:6
	cvttsd2si	%xmm0, %eax
	.loc	1 34 42                         # src/player/player_collision.c:34:42
	movq	-24(%rbp), %rcx
	.loc	1 34 37                         # src/player/player_collision.c:34:37
	cvttsd2si	24(%rcx), %ecx
	.loc	1 34 56                         # src/player/player_collision.c:34:56
	addl	$1, %ecx
	.loc	1 34 34                         # src/player/player_collision.c:34:34
	cmpl	%ecx, %eax
.Ltmp11:
	.loc	1 33 6 is_stmt 1                # src/player/player_collision.c:33:6
	jne	.LBB2_3
# %bb.2:
.Ltmp12:
	.loc	1 35 3                          # src/player/player_collision.c:35:3
	movb	$1, -1(%rbp)
	jmp	.LBB2_4
.Ltmp13:
.LBB2_3:
	.loc	1 36 2                          # src/player/player_collision.c:36:2
	movb	$0, -1(%rbp)
.LBB2_4:
	.loc	1 37 1                          # src/player/player_collision.c:37:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.Lfunc_end2:
	.size	have_collision_east, .Lfunc_end2-have_collision_east
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function have_collision_west
.LCPI3_0:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	have_collision_west
	.p2align	4, 0x90
	.type	have_collision_west,@function
have_collision_west:                    # @have_collision_west
.Lfunc_begin3:
	.loc	1 40 0                          # src/player/player_collision.c:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp15:
	.loc	1 41 6 prologue_end             # src/player/player_collision.c:41:6
	movq	-16(%rbp), %rax
	.loc	1 41 13 is_stmt 0               # src/player/player_collision.c:41:13
	movq	24(%rax), %rax
	.loc	1 41 18                         # src/player/player_collision.c:41:18
	movq	56(%rax), %rax
	.loc	1 41 28                         # src/player/player_collision.c:41:28
	movq	-24(%rbp), %rcx
	.loc	1 41 23                         # src/player/player_collision.c:41:23
	cvttsd2si	32(%rcx), %ecx
	.loc	1 41 6                          # src/player/player_collision.c:41:6
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 41 48                         # src/player/player_collision.c:41:48
	movq	-24(%rbp), %rcx
	.loc	1 41 43                         # src/player/player_collision.c:41:43
	cvttsd2si	24(%rcx), %ecx
	.loc	1 41 62                         # src/player/player_collision.c:41:62
	subl	$1, %ecx
	.loc	1 41 6                          # src/player/player_collision.c:41:6
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 41 67                         # src/player/player_collision.c:41:67
	cmpl	$49, %eax
	.loc	1 42 3 is_stmt 1                # src/player/player_collision.c:42:3
	jne	.LBB3_3
# %bb.1:
	.loc	1 42 12 is_stmt 0               # src/player/player_collision.c:42:12
	movq	-24(%rbp), %rax
	.loc	1 42 20                         # src/player/player_collision.c:42:20
	movsd	24(%rax), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 42 26                         # src/player/player_collision.c:42:26
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	.loc	1 42 6                          # src/player/player_collision.c:42:6
	cvttsd2si	%xmm0, %eax
	.loc	1 42 42                         # src/player/player_collision.c:42:42
	movq	-24(%rbp), %rcx
	.loc	1 42 37                         # src/player/player_collision.c:42:37
	cvttsd2si	24(%rcx), %ecx
	.loc	1 42 56                         # src/player/player_collision.c:42:56
	subl	$1, %ecx
	.loc	1 42 34                         # src/player/player_collision.c:42:34
	cmpl	%ecx, %eax
.Ltmp16:
	.loc	1 41 6 is_stmt 1                # src/player/player_collision.c:41:6
	jne	.LBB3_3
# %bb.2:
.Ltmp17:
	.loc	1 43 3                          # src/player/player_collision.c:43:3
	movb	$1, -1(%rbp)
	jmp	.LBB3_4
.Ltmp18:
.LBB3_3:
	.loc	1 44 2                          # src/player/player_collision.c:44:2
	movb	$0, -1(%rbp)
.LBB3_4:
	.loc	1 45 1                          # src/player/player_collision.c:45:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end3:
	.size	have_collision_west, .Lfunc_end3-have_collision_west
	.cfi_endproc
                                        # -- End function
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x604 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x31:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	265                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	272                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x58:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	961                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x67:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	265                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x80:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	272                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	961                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x9d:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	265                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xb6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	272                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	961                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xd3:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	265                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xec:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	272                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	961                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x109:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x110:0x5 DW_TAG_pointer_type
	.long	277                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x115:0xb DW_TAG_typedef
	.long	288                             # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x120:0x8d DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x128:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	429                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x134:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x140:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x14c:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	459                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x158:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	718                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x164:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	839                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x170:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	961                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x17c:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1104                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x188:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1153                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x194:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1322                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1a0:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1424                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1ad:0xb DW_TAG_typedef
	.long	440                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1b8:0xb DW_TAG_typedef
	.long	451                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1c3:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1ca:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x1cb:0x5 DW_TAG_pointer_type
	.long	464                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1d0:0xb DW_TAG_typedef
	.long	475                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1db:0x75 DW_TAG_structure_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1e3:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	592                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1ef:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	592                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1fb:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x207:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x213:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x21f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x237:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x243:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x250:0xb DW_TAG_typedef
	.long	603                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x25b:0xb DW_TAG_typedef
	.long	614                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x266:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x26d:0x5 DW_TAG_pointer_type
	.long	626                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x272:0xb DW_TAG_typedef
	.long	637                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x27d:0x2d DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x285:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x291:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x29d:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2aa:0xc DW_TAG_array_type
	.long	429                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2af:0x6 DW_TAG_subrange_type
	.long	694                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2b6:0x7 DW_TAG_base_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	5                               # Abbrev [5] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2c2:0x5 DW_TAG_pointer_type
	.long	711                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x2c7:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x2ce:0x5 DW_TAG_pointer_type
	.long	723                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2d3:0xb DW_TAG_typedef
	.long	734                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2de:0x69 DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2e6:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2f2:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	429                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2fe:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x30a:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x316:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x322:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x32e:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x33a:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x347:0x5 DW_TAG_pointer_type
	.long	844                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x34c:0xb DW_TAG_typedef
	.long	855                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x357:0x15 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x35f:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	876                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x36c:0x5 DW_TAG_pointer_type
	.long	881                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x371:0xb DW_TAG_typedef
	.long	892                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x37c:0x45 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x384:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x390:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x39c:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3a8:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3b4:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3c1:0x5 DW_TAG_pointer_type
	.long	966                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3c6:0xb DW_TAG_typedef
	.long	977                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3d1:0x69 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3d9:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3e5:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3f1:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3fd:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x409:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x415:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x421:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x42d:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x43a:0x7 DW_TAG_base_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x441:0x5 DW_TAG_pointer_type
	.long	1094                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x446:0x5 DW_TAG_pointer_type
	.long	1099                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x44b:0x5 DW_TAG_pointer_type
	.long	429                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x450:0x5 DW_TAG_pointer_type
	.long	1109                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x455:0xb DW_TAG_typedef
	.long	1120                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x460:0x21 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x468:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x474:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x481:0x5 DW_TAG_pointer_type
	.long	1158                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x486:0xb DW_TAG_typedef
	.long	1169                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x491:0x99 DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x499:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4a5:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4b1:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4bd:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4c9:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4d5:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4e1:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4ed:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4f9:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x505:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x511:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x51d:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x52a:0x5 DW_TAG_pointer_type
	.long	1327                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x52f:0xb DW_TAG_typedef
	.long	1338                            # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x53a:0x39 DW_TAG_structure_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x542:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1395                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x54e:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1395                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x55a:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1395                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x566:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1395                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x573:0xb DW_TAG_typedef
	.long	1406                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x57e:0xb DW_TAG_typedef
	.long	1417                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x589:0x7 DW_TAG_base_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x590:0x5 DW_TAG_pointer_type
	.long	1429                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x595:0xb DW_TAG_typedef
	.long	1440                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5a0:0x51 DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5a8:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5b4:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	429                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5c0:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	429                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5cc:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1521                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5d8:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1521                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5e4:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1521                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5f1:0xb DW_TAG_typedef
	.long	1532                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5fc:0xb DW_TAG_typedef
	.long	1543                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x607:0x7 DW_TAG_base_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/player/player_collision.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=68
.Linfo_string3:
	.asciz	"int"                           # string offset=107
.Linfo_string4:
	.asciz	"have_collision_north"          # string offset=111
.Linfo_string5:
	.asciz	"_Bool"                         # string offset=132
.Linfo_string6:
	.asciz	"have_collision_south"          # string offset=138
.Linfo_string7:
	.asciz	"have_collision_east"           # string offset=159
.Linfo_string8:
	.asciz	"have_collision_west"           # string offset=179
.Linfo_string9:
	.asciz	"cub3d"                         # string offset=199
.Linfo_string10:
	.asciz	"program_state"                 # string offset=205
.Linfo_string11:
	.asciz	"unsigned char"                 # string offset=219
.Linfo_string12:
	.asciz	"__uint8_t"                     # string offset=233
.Linfo_string13:
	.asciz	"uint8_t"                       # string offset=243
.Linfo_string14:
	.asciz	"win_ptr"                       # string offset=251
.Linfo_string15:
	.asciz	"mlx_ptr"                       # string offset=259
.Linfo_string16:
	.asciz	"map"                           # string offset=267
.Linfo_string17:
	.asciz	"width"                         # string offset=271
.Linfo_string18:
	.asciz	"long unsigned int"             # string offset=277
.Linfo_string19:
	.asciz	"__uint64_t"                    # string offset=295
.Linfo_string20:
	.asciz	"uint64_t"                      # string offset=306
.Linfo_string21:
	.asciz	"height"                        # string offset=315
.Linfo_string22:
	.asciz	"no_texture"                    # string offset=322
.Linfo_string23:
	.asciz	"ptr"                           # string offset=333
.Linfo_string24:
	.asciz	"s_xpm"                         # string offset=337
.Linfo_string25:
	.asciz	"t_xpm"                         # string offset=343
.Linfo_string26:
	.asciz	"so_texture"                    # string offset=349
.Linfo_string27:
	.asciz	"we_texture"                    # string offset=360
.Linfo_string28:
	.asciz	"ea_texture"                    # string offset=371
.Linfo_string29:
	.asciz	"ceiling"                       # string offset=382
.Linfo_string30:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=390
.Linfo_string31:
	.asciz	"floor"                         # string offset=410
.Linfo_string32:
	.asciz	"data"                          # string offset=416
.Linfo_string33:
	.asciz	"char"                          # string offset=421
.Linfo_string34:
	.asciz	"s_map"                         # string offset=426
.Linfo_string35:
	.asciz	"t_map"                         # string offset=432
.Linfo_string36:
	.asciz	"file"                          # string offset=438
.Linfo_string37:
	.asciz	"fd"                            # string offset=443
.Linfo_string38:
	.asciz	"mask"                          # string offset=446
.Linfo_string39:
	.asciz	"offset"                        # string offset=451
.Linfo_string40:
	.asciz	"no_filename"                   # string offset=458
.Linfo_string41:
	.asciz	"so_filename"                   # string offset=470
.Linfo_string42:
	.asciz	"we_filename"                   # string offset=482
.Linfo_string43:
	.asciz	"ea_filename"                   # string offset=494
.Linfo_string44:
	.asciz	"s_file"                        # string offset=506
.Linfo_string45:
	.asciz	"t_file"                        # string offset=513
.Linfo_string46:
	.asciz	"scene"                         # string offset=520
.Linfo_string47:
	.asciz	"img"                           # string offset=526
.Linfo_string48:
	.asciz	"addr"                          # string offset=530
.Linfo_string49:
	.asciz	"endian"                        # string offset=535
.Linfo_string50:
	.asciz	"size_line"                     # string offset=542
.Linfo_string51:
	.asciz	"bpp"                           # string offset=552
.Linfo_string52:
	.asciz	"s_img"                         # string offset=556
.Linfo_string53:
	.asciz	"t_img"                         # string offset=562
.Linfo_string54:
	.asciz	"s_scene"                       # string offset=568
.Linfo_string55:
	.asciz	"t_scene"                       # string offset=576
.Linfo_string56:
	.asciz	"player"                        # string offset=584
.Linfo_string57:
	.asciz	"x0"                            # string offset=591
.Linfo_string58:
	.asciz	"y0"                            # string offset=594
.Linfo_string59:
	.asciz	"x1"                            # string offset=597
.Linfo_string60:
	.asciz	"y1"                            # string offset=600
.Linfo_string61:
	.asciz	"angle"                         # string offset=603
.Linfo_string62:
	.asciz	"double"                        # string offset=609
.Linfo_string63:
	.asciz	"pos_x"                         # string offset=616
.Linfo_string64:
	.asciz	"pos_y"                         # string offset=622
.Linfo_string65:
	.asciz	"vertex"                        # string offset=628
.Linfo_string66:
	.asciz	"s_player"                      # string offset=635
.Linfo_string67:
	.asciz	"t_player"                      # string offset=644
.Linfo_string68:
	.asciz	"window"                        # string offset=653
.Linfo_string69:
	.asciz	"s_window"                      # string offset=660
.Linfo_string70:
	.asciz	"t_window"                      # string offset=669
.Linfo_string71:
	.asciz	"raycast"                       # string offset=678
.Linfo_string72:
	.asciz	"posX"                          # string offset=686
.Linfo_string73:
	.asciz	"posY"                          # string offset=691
.Linfo_string74:
	.asciz	"dirX"                          # string offset=696
.Linfo_string75:
	.asciz	"dirY"                          # string offset=701
.Linfo_string76:
	.asciz	"planeX"                        # string offset=706
.Linfo_string77:
	.asciz	"planeY"                        # string offset=713
.Linfo_string78:
	.asciz	"sideX"                         # string offset=720
.Linfo_string79:
	.asciz	"sideY"                         # string offset=726
.Linfo_string80:
	.asciz	"deltaDistX"                    # string offset=732
.Linfo_string81:
	.asciz	"deltaDistY"                    # string offset=743
.Linfo_string82:
	.asciz	"time"                          # string offset=754
.Linfo_string83:
	.asciz	"oldtime"                       # string offset=759
.Linfo_string84:
	.asciz	"s_raycast"                     # string offset=767
.Linfo_string85:
	.asciz	"t_raycast"                     # string offset=777
.Linfo_string86:
	.asciz	"minimap"                       # string offset=787
.Linfo_string87:
	.asciz	"unsigned short"                # string offset=795
.Linfo_string88:
	.asciz	"__uint16_t"                    # string offset=810
.Linfo_string89:
	.asciz	"uint16_t"                      # string offset=821
.Linfo_string90:
	.asciz	"x_pos"                         # string offset=830
.Linfo_string91:
	.asciz	"y_pos"                         # string offset=836
.Linfo_string92:
	.asciz	"s_minimap"                     # string offset=842
.Linfo_string93:
	.asciz	"t_minimap"                     # string offset=852
.Linfo_string94:
	.asciz	"main_menu"                     # string offset=862
.Linfo_string95:
	.asciz	"xpm"                           # string offset=872
.Linfo_string96:
	.asciz	"color"                         # string offset=876
.Linfo_string97:
	.asciz	"unsigned int"                  # string offset=882
.Linfo_string98:
	.asciz	"__uint32_t"                    # string offset=895
.Linfo_string99:
	.asciz	"uint32_t"                      # string offset=906
.Linfo_string100:
	.asciz	"s_main_menu"                   # string offset=915
.Linfo_string101:
	.asciz	"t_main_menu"                   # string offset=927
.Linfo_string102:
	.asciz	"s_cub3d"                       # string offset=939
.Linfo_string103:
	.asciz	"t_cub3d"                       # string offset=947
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
