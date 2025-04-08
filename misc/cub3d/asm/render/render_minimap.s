	.text
	.file	"render_minimap.c"
	.globl	render_square                   # -- Begin function render_square
	.p2align	4, 0x90
	.type	render_square,@function
render_square:                          # @render_square
.Lfunc_begin0:
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/render_minimap.c"
	.loc	1 16 0                          # src/render/render_minimap.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.Ltmp0:
	.loc	1 22 13 prologue_end            # src/render/render_minimap.c:22:13
	imull	$10, -12(%rbp), %eax
	.loc	1 22 9 is_stmt 0                # src/render/render_minimap.c:22:9
	movl	%eax, -20(%rbp)
	.loc	1 23 13 is_stmt 1               # src/render/render_minimap.c:23:13
	imull	$10, -16(%rbp), %eax
	.loc	1 23 9 is_stmt 0                # src/render/render_minimap.c:23:9
	movl	%eax, -24(%rbp)
	.loc	1 24 11 is_stmt 1               # src/render/render_minimap.c:24:11
	movl	-24(%rbp), %eax
	.loc	1 24 18 is_stmt 0               # src/render/render_minimap.c:24:18
	addl	$10, %eax
	.loc	1 24 9                          # src/render/render_minimap.c:24:9
	movl	%eax, -32(%rbp)
	.loc	1 25 11 is_stmt 1               # src/render/render_minimap.c:25:11
	movl	-20(%rbp), %eax
	.loc	1 25 18 is_stmt 0               # src/render/render_minimap.c:25:18
	addl	$10, %eax
	.loc	1 25 9                          # src/render/render_minimap.c:25:9
	movl	%eax, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 26 9 is_stmt 1                # src/render/render_minimap.c:26:9
	movl	-24(%rbp), %eax
	.loc	1 26 16 is_stmt 0               # src/render/render_minimap.c:26:16
	cmpl	-32(%rbp), %eax
	.loc	1 26 2                          # src/render/render_minimap.c:26:2
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 28 14 is_stmt 1               # src/render/render_minimap.c:28:14
	movq	-8(%rbp), %rax
	.loc	1 28 21 is_stmt 0               # src/render/render_minimap.c:28:21
	movq	(%rax), %rdi
	.loc	1 28 26                         # src/render/render_minimap.c:28:26
	movl	-20(%rbp), %esi
	.loc	1 28 34                         # src/render/render_minimap.c:28:34
	movl	-24(%rbp), %edx
	.loc	1 28 3                          # src/render/render_minimap.c:28:3
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	1 29 9 is_stmt 1                # src/render/render_minimap.c:29:9
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp2:
	.loc	1 26 2                          # src/render/render_minimap.c:26:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 31 2                          # src/render/render_minimap.c:31:2
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	.loc	1 31 9 is_stmt 0                # src/render/render_minimap.c:31:9
	movl	-20(%rbp), %eax
	.loc	1 31 16                         # src/render/render_minimap.c:31:16
	cmpl	-28(%rbp), %eax
	.loc	1 31 2                          # src/render/render_minimap.c:31:2
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp3:
	.loc	1 33 14 is_stmt 1               # src/render/render_minimap.c:33:14
	movq	-8(%rbp), %rax
	.loc	1 33 21 is_stmt 0               # src/render/render_minimap.c:33:21
	movq	(%rax), %rdi
	.loc	1 33 26                         # src/render/render_minimap.c:33:26
	movl	-20(%rbp), %esi
	.loc	1 33 34                         # src/render/render_minimap.c:33:34
	movl	-24(%rbp), %edx
	.loc	1 33 3                          # src/render/render_minimap.c:33:3
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	1 34 9 is_stmt 1                # src/render/render_minimap.c:34:9
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp4:
	.loc	1 31 2                          # src/render/render_minimap.c:31:2
	jmp	.LBB0_4
.LBB0_6:
	.loc	1 36 11                         # src/render/render_minimap.c:36:11
	movl	-12(%rbp), %eax
	.loc	1 36 9 is_stmt 0                # src/render/render_minimap.c:36:9
	movl	%eax, -20(%rbp)
	.loc	1 37 11 is_stmt 1               # src/render/render_minimap.c:37:11
	movl	-16(%rbp), %eax
	.loc	1 37 9 is_stmt 0                # src/render/render_minimap.c:37:9
	movl	%eax, -24(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	.loc	1 38 9 is_stmt 1                # src/render/render_minimap.c:38:9
	movl	-20(%rbp), %eax
	.loc	1 38 16 is_stmt 0               # src/render/render_minimap.c:38:16
	cmpl	-28(%rbp), %eax
	.loc	1 38 2                          # src/render/render_minimap.c:38:2
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
.Ltmp5:
	.loc	1 40 14 is_stmt 1               # src/render/render_minimap.c:40:14
	movq	-8(%rbp), %rax
	.loc	1 40 21 is_stmt 0               # src/render/render_minimap.c:40:21
	movq	(%rax), %rdi
	.loc	1 40 26                         # src/render/render_minimap.c:40:26
	movl	-20(%rbp), %esi
	.loc	1 40 34                         # src/render/render_minimap.c:40:34
	movl	-24(%rbp), %edx
	.loc	1 40 3                          # src/render/render_minimap.c:40:3
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	1 41 9 is_stmt 1                # src/render/render_minimap.c:41:9
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp6:
	.loc	1 38 2                          # src/render/render_minimap.c:38:2
	jmp	.LBB0_7
.LBB0_9:
	.loc	1 43 2                          # src/render/render_minimap.c:43:2
	jmp	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 43 9 is_stmt 0                # src/render/render_minimap.c:43:9
	movl	-24(%rbp), %eax
	.loc	1 43 16                         # src/render/render_minimap.c:43:16
	cmpl	-32(%rbp), %eax
	.loc	1 43 2                          # src/render/render_minimap.c:43:2
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
.Ltmp7:
	.loc	1 45 14 is_stmt 1               # src/render/render_minimap.c:45:14
	movq	-8(%rbp), %rax
	.loc	1 45 21 is_stmt 0               # src/render/render_minimap.c:45:21
	movq	(%rax), %rdi
	.loc	1 45 26                         # src/render/render_minimap.c:45:26
	movl	-20(%rbp), %esi
	.loc	1 45 34                         # src/render/render_minimap.c:45:34
	movl	-24(%rbp), %edx
	.loc	1 45 3                          # src/render/render_minimap.c:45:3
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	1 46 9 is_stmt 1                # src/render/render_minimap.c:46:9
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp8:
	.loc	1 43 2                          # src/render/render_minimap.c:43:2
	jmp	.LBB0_10
.LBB0_12:
	.loc	1 48 1                          # src/render/render_minimap.c:48:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	render_square, .Lfunc_end0-render_square
	.cfi_endproc
                                        # -- End function
	.globl	render_wall                     # -- Begin function render_wall
	.p2align	4, 0x90
	.type	render_wall,@function
render_wall:                            # @render_wall
.Lfunc_begin1:
	.loc	1 51 0                          # src/render/render_minimap.c:51:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.Ltmp10:
	.loc	1 57 13 prologue_end            # src/render/render_minimap.c:57:13
	imull	$10, -16(%rbp), %eax
	.loc	1 57 9 is_stmt 0                # src/render/render_minimap.c:57:9
	movl	%eax, -24(%rbp)
	.loc	1 58 13 is_stmt 1               # src/render/render_minimap.c:58:13
	imull	$10, -12(%rbp), %eax
	.loc	1 58 9 is_stmt 0                # src/render/render_minimap.c:58:9
	movl	%eax, -20(%rbp)
	.loc	1 59 11 is_stmt 1               # src/render/render_minimap.c:59:11
	movl	-24(%rbp), %eax
	.loc	1 59 18 is_stmt 0               # src/render/render_minimap.c:59:18
	addl	$10, %eax
	.loc	1 59 9                          # src/render/render_minimap.c:59:9
	movl	%eax, -32(%rbp)
	.loc	1 60 11 is_stmt 1               # src/render/render_minimap.c:60:11
	movl	-20(%rbp), %eax
	.loc	1 60 18 is_stmt 0               # src/render/render_minimap.c:60:18
	addl	$10, %eax
	.loc	1 60 9                          # src/render/render_minimap.c:60:9
	movl	%eax, -28(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	.loc	1 61 9 is_stmt 1                # src/render/render_minimap.c:61:9
	movl	-24(%rbp), %eax
	.loc	1 61 16 is_stmt 0               # src/render/render_minimap.c:61:16
	cmpl	-32(%rbp), %eax
	.loc	1 61 2                          # src/render/render_minimap.c:61:2
	jge	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp11:
	.loc	1 63 14 is_stmt 1               # src/render/render_minimap.c:63:14
	imull	$10, -12(%rbp), %eax
	.loc	1 63 10 is_stmt 0               # src/render/render_minimap.c:63:10
	movl	%eax, -20(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 64 10 is_stmt 1               # src/render/render_minimap.c:64:10
	movl	-20(%rbp), %eax
	.loc	1 64 17 is_stmt 0               # src/render/render_minimap.c:64:17
	cmpl	-28(%rbp), %eax
	.loc	1 64 3                          # src/render/render_minimap.c:64:3
	jge	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
.Ltmp12:
	.loc	1 66 15 is_stmt 1               # src/render/render_minimap.c:66:15
	movq	-8(%rbp), %rax
	.loc	1 66 22 is_stmt 0               # src/render/render_minimap.c:66:22
	movq	(%rax), %rdi
	.loc	1 66 27                         # src/render/render_minimap.c:66:27
	movl	-20(%rbp), %esi
	.loc	1 66 35                         # src/render/render_minimap.c:66:35
	movl	-24(%rbp), %edx
	.loc	1 66 4                          # src/render/render_minimap.c:66:4
	movl	$11513775, %ecx                 # imm = 0xAFAFAF
	callq	draw_pixel
	.loc	1 67 10 is_stmt 1               # src/render/render_minimap.c:67:10
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp13:
	.loc	1 64 3                          # src/render/render_minimap.c:64:3
	jmp	.LBB1_3
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 69 9                          # src/render/render_minimap.c:69:9
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp14:
	.loc	1 61 2                          # src/render/render_minimap.c:61:2
	jmp	.LBB1_1
.LBB1_6:
	.loc	1 71 1                          # src/render/render_minimap.c:71:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	render_wall, .Lfunc_end1-render_wall
	.cfi_endproc
                                        # -- End function
	.globl	render_minimap                  # -- Begin function render_minimap
	.p2align	4, 0x90
	.type	render_minimap,@function
render_minimap:                         # @render_minimap
.Lfunc_begin2:
	.loc	1 74 0                          # src/render/render_minimap.c:74:0
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
	movq	%rdx, -24(%rbp)
.Ltmp16:
	.loc	1 79 4 prologue_end             # src/render/render_minimap.c:79:4
	movl	$0, -32(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	.loc	1 80 9                          # src/render/render_minimap.c:80:9
	movq	-8(%rbp), %rax
	.loc	1 80 16 is_stmt 0               # src/render/render_minimap.c:80:16
	movq	24(%rax), %rax
	.loc	1 80 21                         # src/render/render_minimap.c:80:21
	movq	56(%rax), %rax
	.loc	1 80 9                          # src/render/render_minimap.c:80:9
	movslq	-32(%rbp), %rcx
	.loc	1 80 2                          # src/render/render_minimap.c:80:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp17:
	.loc	1 82 5 is_stmt 1                # src/render/render_minimap.c:82:5
	movl	$0, -28(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 83 10                         # src/render/render_minimap.c:83:10
	movq	-8(%rbp), %rax
	.loc	1 83 17 is_stmt 0               # src/render/render_minimap.c:83:17
	movq	24(%rax), %rax
	.loc	1 83 22                         # src/render/render_minimap.c:83:22
	movq	56(%rax), %rax
	.loc	1 83 10                         # src/render/render_minimap.c:83:10
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 83 3                          # src/render/render_minimap.c:83:3
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_8
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
.Ltmp18:
	.loc	1 85 8 is_stmt 1                # src/render/render_minimap.c:85:8
	movq	-8(%rbp), %rax
	.loc	1 85 15 is_stmt 0               # src/render/render_minimap.c:85:15
	movq	24(%rax), %rax
	.loc	1 85 20                         # src/render/render_minimap.c:85:20
	movq	56(%rax), %rax
	.loc	1 85 8                          # src/render/render_minimap.c:85:8
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 85 31                         # src/render/render_minimap.c:85:31
	cmpl	$49, %eax
.Ltmp19:
	.loc	1 85 8                          # src/render/render_minimap.c:85:8
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
.Ltmp20:
	.loc	1 86 17 is_stmt 1               # src/render/render_minimap.c:86:17
	movq	-16(%rbp), %rdi
	.loc	1 86 24 is_stmt 0               # src/render/render_minimap.c:86:24
	movl	-28(%rbp), %esi
	.loc	1 86 27                         # src/render/render_minimap.c:86:27
	movl	-32(%rbp), %edx
	.loc	1 86 5                          # src/render/render_minimap.c:86:5
	callq	render_wall
	jmp	.LBB2_7
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=2
	.loc	1 88 19 is_stmt 1               # src/render/render_minimap.c:88:19
	movq	-16(%rbp), %rdi
	.loc	1 88 26 is_stmt 0               # src/render/render_minimap.c:88:26
	movl	-28(%rbp), %esi
	.loc	1 88 29                         # src/render/render_minimap.c:88:29
	movl	-32(%rbp), %edx
	.loc	1 88 5                          # src/render/render_minimap.c:88:5
	callq	render_square
.Ltmp21:
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=2
	.loc	1 89 5 is_stmt 1                # src/render/render_minimap.c:89:5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp22:
	.loc	1 83 3                          # src/render/render_minimap.c:83:3
	jmp	.LBB2_3
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 91 4                          # src/render/render_minimap.c:91:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.Ltmp23:
	.loc	1 80 2                          # src/render/render_minimap.c:80:2
	jmp	.LBB2_1
.LBB2_9:
	.loc	1 93 1                          # src/render/render_minimap.c:93:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp24:
.Lfunc_end2:
	.size	render_minimap, .Lfunc_end2-render_minimap
	.cfi_endproc
                                        # -- End function
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/render/../../include/cub3d_player.h"
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
	.byte	52                              # DW_TAG_variable
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
	.byte	1                               # Abbrev [1] 0xb:0x671 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	374                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x69:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x77:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x85:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x93:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa2:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xb7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	374                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xc5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xd3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xef:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfd:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x11a:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x12f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	516                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x13d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	374                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x14b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string90                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	1431                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x159:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x167:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x176:0x5 DW_TAG_pointer_type
	.long	379                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x17b:0xb DW_TAG_typedef
	.long	390                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x186:0x15 DW_TAG_structure_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x18e:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	411                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x19b:0x5 DW_TAG_pointer_type
	.long	416                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1a0:0xb DW_TAG_typedef
	.long	427                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1ab:0x45 DW_TAG_structure_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1b3:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1bf:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1cb:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1d7:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1e3:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1f0:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x1f1:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f6:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1fd:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x204:0x5 DW_TAG_pointer_type
	.long	521                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x209:0xb DW_TAG_typedef
	.long	532                             # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x214:0x8d DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x21c:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x228:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x234:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x240:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	702                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x24c:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	949                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x258:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x264:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1070                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x270:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x27c:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1262                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x288:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1431                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x294:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1533                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2a1:0xb DW_TAG_typedef
	.long	684                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2ac:0xb DW_TAG_typedef
	.long	695                             # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2b7:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x2be:0x5 DW_TAG_pointer_type
	.long	707                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2c3:0xb DW_TAG_typedef
	.long	718                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2ce:0x75 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2d6:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	835                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	835                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2fa:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x306:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x312:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x336:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x343:0xb DW_TAG_typedef
	.long	846                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x34e:0xb DW_TAG_typedef
	.long	857                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x359:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x360:0x5 DW_TAG_pointer_type
	.long	869                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x365:0xb DW_TAG_typedef
	.long	880                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x370:0x2d DW_TAG_structure_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x378:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x384:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x390:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x39d:0xc DW_TAG_array_type
	.long	673                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3a2:0x6 DW_TAG_subrange_type
	.long	937                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x3a9:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	5                               # Abbrev [5] 0x3b0:0x5 DW_TAG_pointer_type
	.long	497                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3b5:0x5 DW_TAG_pointer_type
	.long	954                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3ba:0xb DW_TAG_typedef
	.long	965                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3c5:0x69 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3cd:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3d9:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3e5:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3f1:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3fd:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x409:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x415:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x421:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x42e:0x5 DW_TAG_pointer_type
	.long	1075                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x433:0xb DW_TAG_typedef
	.long	1086                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x43e:0x69 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x446:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x452:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x46a:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x476:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x482:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x48e:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x49a:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1198                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4a7:0x7 DW_TAG_base_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x4ae:0x5 DW_TAG_pointer_type
	.long	1203                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4b3:0x5 DW_TAG_pointer_type
	.long	1208                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4b8:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4bd:0x5 DW_TAG_pointer_type
	.long	1218                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4c2:0xb DW_TAG_typedef
	.long	1229                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4cd:0x21 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4d5:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4e1:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	509                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4ee:0x5 DW_TAG_pointer_type
	.long	1267                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4f3:0xb DW_TAG_typedef
	.long	1278                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4fe:0x99 DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x506:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x512:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x51e:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x52a:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x536:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x542:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x54e:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x55a:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x566:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x572:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x57e:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x58a:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x597:0x5 DW_TAG_pointer_type
	.long	1436                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x59c:0xb DW_TAG_typedef
	.long	1447                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5a7:0x39 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5af:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5bb:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5c7:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5d3:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5e0:0xb DW_TAG_typedef
	.long	1515                            # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5eb:0xb DW_TAG_typedef
	.long	1526                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5f6:0x7 DW_TAG_base_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x5fd:0x5 DW_TAG_pointer_type
	.long	1538                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x602:0xb DW_TAG_typedef
	.long	1549                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x60d:0x51 DW_TAG_structure_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x615:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x621:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x62d:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x639:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1630                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x645:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1630                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x651:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1630                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x65e:0xb DW_TAG_typedef
	.long	1641                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x669:0xb DW_TAG_typedef
	.long	1652                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x674:0x7 DW_TAG_base_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/render/render_minimap.c"   # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=66
.Linfo_string3:
	.asciz	"render_square"                 # string offset=105
.Linfo_string4:
	.asciz	"render_wall"                   # string offset=119
.Linfo_string5:
	.asciz	"render_minimap"                # string offset=131
.Linfo_string6:
	.asciz	"scene"                         # string offset=146
.Linfo_string7:
	.asciz	"img"                           # string offset=152
.Linfo_string8:
	.asciz	"ptr"                           # string offset=156
.Linfo_string9:
	.asciz	"addr"                          # string offset=160
.Linfo_string10:
	.asciz	"char"                          # string offset=165
.Linfo_string11:
	.asciz	"endian"                        # string offset=170
.Linfo_string12:
	.asciz	"int"                           # string offset=177
.Linfo_string13:
	.asciz	"size_line"                     # string offset=181
.Linfo_string14:
	.asciz	"bpp"                           # string offset=191
.Linfo_string15:
	.asciz	"s_img"                         # string offset=195
.Linfo_string16:
	.asciz	"t_img"                         # string offset=201
.Linfo_string17:
	.asciz	"s_scene"                       # string offset=207
.Linfo_string18:
	.asciz	"t_scene"                       # string offset=215
.Linfo_string19:
	.asciz	"x"                             # string offset=223
.Linfo_string20:
	.asciz	"y"                             # string offset=225
.Linfo_string21:
	.asciz	"x_draw"                        # string offset=227
.Linfo_string22:
	.asciz	"y_draw"                        # string offset=234
.Linfo_string23:
	.asciz	"x_size"                        # string offset=241
.Linfo_string24:
	.asciz	"y_size"                        # string offset=248
.Linfo_string25:
	.asciz	"cub3d"                         # string offset=255
.Linfo_string26:
	.asciz	"program_state"                 # string offset=261
.Linfo_string27:
	.asciz	"unsigned char"                 # string offset=275
.Linfo_string28:
	.asciz	"__uint8_t"                     # string offset=289
.Linfo_string29:
	.asciz	"uint8_t"                       # string offset=299
.Linfo_string30:
	.asciz	"win_ptr"                       # string offset=307
.Linfo_string31:
	.asciz	"mlx_ptr"                       # string offset=315
.Linfo_string32:
	.asciz	"map"                           # string offset=323
.Linfo_string33:
	.asciz	"width"                         # string offset=327
.Linfo_string34:
	.asciz	"long unsigned int"             # string offset=333
.Linfo_string35:
	.asciz	"__uint64_t"                    # string offset=351
.Linfo_string36:
	.asciz	"uint64_t"                      # string offset=362
.Linfo_string37:
	.asciz	"height"                        # string offset=371
.Linfo_string38:
	.asciz	"no_texture"                    # string offset=378
.Linfo_string39:
	.asciz	"s_xpm"                         # string offset=389
.Linfo_string40:
	.asciz	"t_xpm"                         # string offset=395
.Linfo_string41:
	.asciz	"so_texture"                    # string offset=401
.Linfo_string42:
	.asciz	"we_texture"                    # string offset=412
.Linfo_string43:
	.asciz	"ea_texture"                    # string offset=423
.Linfo_string44:
	.asciz	"ceiling"                       # string offset=434
.Linfo_string45:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=442
.Linfo_string46:
	.asciz	"floor"                         # string offset=462
.Linfo_string47:
	.asciz	"data"                          # string offset=468
.Linfo_string48:
	.asciz	"s_map"                         # string offset=473
.Linfo_string49:
	.asciz	"t_map"                         # string offset=479
.Linfo_string50:
	.asciz	"file"                          # string offset=485
.Linfo_string51:
	.asciz	"fd"                            # string offset=490
.Linfo_string52:
	.asciz	"mask"                          # string offset=493
.Linfo_string53:
	.asciz	"offset"                        # string offset=498
.Linfo_string54:
	.asciz	"no_filename"                   # string offset=505
.Linfo_string55:
	.asciz	"so_filename"                   # string offset=517
.Linfo_string56:
	.asciz	"we_filename"                   # string offset=529
.Linfo_string57:
	.asciz	"ea_filename"                   # string offset=541
.Linfo_string58:
	.asciz	"s_file"                        # string offset=553
.Linfo_string59:
	.asciz	"t_file"                        # string offset=560
.Linfo_string60:
	.asciz	"player"                        # string offset=567
.Linfo_string61:
	.asciz	"x0"                            # string offset=574
.Linfo_string62:
	.asciz	"y0"                            # string offset=577
.Linfo_string63:
	.asciz	"x1"                            # string offset=580
.Linfo_string64:
	.asciz	"y1"                            # string offset=583
.Linfo_string65:
	.asciz	"angle"                         # string offset=586
.Linfo_string66:
	.asciz	"double"                        # string offset=592
.Linfo_string67:
	.asciz	"pos_x"                         # string offset=599
.Linfo_string68:
	.asciz	"pos_y"                         # string offset=605
.Linfo_string69:
	.asciz	"vertex"                        # string offset=611
.Linfo_string70:
	.asciz	"s_player"                      # string offset=618
.Linfo_string71:
	.asciz	"t_player"                      # string offset=627
.Linfo_string72:
	.asciz	"window"                        # string offset=636
.Linfo_string73:
	.asciz	"s_window"                      # string offset=643
.Linfo_string74:
	.asciz	"t_window"                      # string offset=652
.Linfo_string75:
	.asciz	"raycast"                       # string offset=661
.Linfo_string76:
	.asciz	"posX"                          # string offset=669
.Linfo_string77:
	.asciz	"posY"                          # string offset=674
.Linfo_string78:
	.asciz	"dirX"                          # string offset=679
.Linfo_string79:
	.asciz	"dirY"                          # string offset=684
.Linfo_string80:
	.asciz	"planeX"                        # string offset=689
.Linfo_string81:
	.asciz	"planeY"                        # string offset=696
.Linfo_string82:
	.asciz	"sideX"                         # string offset=703
.Linfo_string83:
	.asciz	"sideY"                         # string offset=709
.Linfo_string84:
	.asciz	"deltaDistX"                    # string offset=715
.Linfo_string85:
	.asciz	"deltaDistY"                    # string offset=726
.Linfo_string86:
	.asciz	"time"                          # string offset=737
.Linfo_string87:
	.asciz	"oldtime"                       # string offset=742
.Linfo_string88:
	.asciz	"s_raycast"                     # string offset=750
.Linfo_string89:
	.asciz	"t_raycast"                     # string offset=760
.Linfo_string90:
	.asciz	"minimap"                       # string offset=770
.Linfo_string91:
	.asciz	"unsigned short"                # string offset=778
.Linfo_string92:
	.asciz	"__uint16_t"                    # string offset=793
.Linfo_string93:
	.asciz	"uint16_t"                      # string offset=804
.Linfo_string94:
	.asciz	"x_pos"                         # string offset=813
.Linfo_string95:
	.asciz	"y_pos"                         # string offset=819
.Linfo_string96:
	.asciz	"s_minimap"                     # string offset=825
.Linfo_string97:
	.asciz	"t_minimap"                     # string offset=835
.Linfo_string98:
	.asciz	"main_menu"                     # string offset=845
.Linfo_string99:
	.asciz	"xpm"                           # string offset=855
.Linfo_string100:
	.asciz	"color"                         # string offset=859
.Linfo_string101:
	.asciz	"unsigned int"                  # string offset=865
.Linfo_string102:
	.asciz	"__uint32_t"                    # string offset=878
.Linfo_string103:
	.asciz	"uint32_t"                      # string offset=889
.Linfo_string104:
	.asciz	"s_main_menu"                   # string offset=898
.Linfo_string105:
	.asciz	"t_main_menu"                   # string offset=910
.Linfo_string106:
	.asciz	"s_cub3d"                       # string offset=922
.Linfo_string107:
	.asciz	"t_cub3d"                       # string offset=930
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym render_square
	.addrsig_sym draw_pixel
	.addrsig_sym render_wall
	.section	.debug_line,"",@progbits
.Lline_table_start0:
