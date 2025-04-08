	.text
	.file	"parsing_map.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	get_map_height                  # -- Begin function get_map_height
	.p2align	4, 0x90
	.type	get_map_height,@function
get_map_height:                         # @get_map_height
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_map.c"
	.loc	2 16 0                          # src/parsing/parsing_map.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp0:
	.loc	2 19 9 prologue_end             # src/parsing/parsing_map.c:19:9
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 20 9                          # src/parsing/parsing_map.c:20:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 20 2 is_stmt 0                # src/parsing/parsing_map.c:20:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	2 22 17 is_stmt 1               # src/parsing/parsing_map.c:22:17
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 22 7 is_stmt 0                # src/parsing/parsing_map.c:22:7
	callq	ft_strlen
	.loc	2 22 31                         # src/parsing/parsing_map.c:22:31
	cmpq	$0, %rax
	.loc	2 22 36                         # src/parsing/parsing_map.c:22:36
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 22 39                         # src/parsing/parsing_map.c:22:39
	movq	-24(%rbp), %rax
	.loc	2 22 44                         # src/parsing/parsing_map.c:22:44
	movl	-28(%rbp), %ecx
	.loc	2 22 51                         # src/parsing/parsing_map.c:22:51
	addl	$1, %ecx
	.loc	2 22 39                         # src/parsing/parsing_map.c:22:39
	movslq	%ecx, %rcx
	.loc	2 22 56                         # src/parsing/parsing_map.c:22:56
	cmpq	$0, (%rax,%rcx,8)
.Ltmp2:
	.loc	2 22 7                          # src/parsing/parsing_map.c:22:7
	je	.LBB0_5
# %bb.4:
.Ltmp3:
	.loc	2 23 4 is_stmt 1                # src/parsing/parsing_map.c:23:4
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.Ltmp4:
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 24 9                          # src/parsing/parsing_map.c:24:9
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp5:
	.loc	2 20 2                          # src/parsing/parsing_map.c:20:2
	jmp	.LBB0_1
.LBB0_6:
.Ltmp6:
	.loc	2 26 13                         # src/parsing/parsing_map.c:26:13
	cmpl	$0, -28(%rbp)
.Ltmp7:
	.loc	2 26 6 is_stmt 0                # src/parsing/parsing_map.c:26:6
	jne	.LBB0_8
# %bb.7:
.Ltmp8:
	.loc	2 27 33 is_stmt 1               # src/parsing/parsing_map.c:27:33
	movq	-16(%rbp), %rdi
	.loc	2 27 3 is_stmt 0                # src/parsing/parsing_map.c:27:3
	movl	$10, %esi
	callq	print_error_then_exit_program
.Ltmp9:
.LBB0_8:
	.loc	2 28 10 is_stmt 1               # src/parsing/parsing_map.c:28:10
	movl	-28(%rbp), %eax
	.loc	2 28 2 is_stmt 0                # src/parsing/parsing_map.c:28:2
	movl	%eax, -4(%rbp)
.LBB0_9:
	.loc	2 29 1 is_stmt 1                # src/parsing/parsing_map.c:29:1
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end0:
	.size	get_map_height, .Lfunc_end0-get_map_height
	.cfi_endproc
                                        # -- End function
	.globl	set_index_at_map_start_line     # -- Begin function set_index_at_map_start_line
	.p2align	4, 0x90
	.type	set_index_at_map_start_line,@function
set_index_at_map_start_line:            # @set_index_at_map_start_line
.Lfunc_begin1:
	.loc	2 32 0                          # src/parsing/parsing_map.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp11:
	.loc	2 35 10 prologue_end            # src/parsing/parsing_map.c:35:10
	movq	-8(%rbp), %rax
	.loc	2 35 17 is_stmt 0               # src/parsing/parsing_map.c:35:17
	movq	32(%rax), %rax
	.loc	2 35 23                         # src/parsing/parsing_map.c:35:23
	movl	8(%rax), %eax
	.loc	2 35 8                          # src/parsing/parsing_map.c:35:8
	movl	%eax, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 36 9 is_stmt 1                # src/parsing/parsing_map.c:36:9
	movq	-8(%rbp), %rax
	.loc	2 36 16 is_stmt 0               # src/parsing/parsing_map.c:36:16
	movq	32(%rax), %rax
	.loc	2 36 22                         # src/parsing/parsing_map.c:36:22
	movq	48(%rax), %rcx
	.loc	2 36 9                          # src/parsing/parsing_map.c:36:9
	movslq	-12(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -13(%rbp)                  # 1-byte Spill
	.loc	2 36 34                         # src/parsing/parsing_map.c:36:34
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 36 47                         # src/parsing/parsing_map.c:36:47
	movq	-8(%rbp), %rax
	.loc	2 36 54                         # src/parsing/parsing_map.c:36:54
	movq	32(%rax), %rax
	.loc	2 36 60                         # src/parsing/parsing_map.c:36:60
	movq	48(%rax), %rax
	.loc	2 36 47                         # src/parsing/parsing_map.c:36:47
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 36 37                         # src/parsing/parsing_map.c:36:37
	callq	ft_strlen
	.loc	2 36 73                         # src/parsing/parsing_map.c:36:73
	cmpq	$0, %rax
	sete	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 0 73                          # src/parsing/parsing_map.c:0:73
	movb	-13(%rbp), %al                  # 1-byte Reload
	.loc	2 36 2                          # src/parsing/parsing_map.c:36:2
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 37 8 is_stmt 1                # src/parsing/parsing_map.c:37:8
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	2 36 2                          # src/parsing/parsing_map.c:36:2
	jmp	.LBB1_1
.LBB1_5:
	.loc	2 38 10                         # src/parsing/parsing_map.c:38:10
	movl	-12(%rbp), %eax
	.loc	2 38 2 is_stmt 0                # src/parsing/parsing_map.c:38:2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end1:
	.size	set_index_at_map_start_line, .Lfunc_end1-set_index_at_map_start_line
	.cfi_endproc
                                        # -- End function
	.globl	is_start_position               # -- Begin function is_start_position
	.p2align	4, 0x90
	.type	is_start_position,@function
is_start_position:                      # @is_start_position
.Lfunc_begin2:
	.loc	2 42 0 is_stmt 1                # src/parsing/parsing_map.c:42:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -2(%rbp)
.Ltmp13:
	.loc	2 43 6 prologue_end             # src/parsing/parsing_map.c:43:6
	movsbl	-2(%rbp), %eax
	.loc	2 43 8 is_stmt 0                # src/parsing/parsing_map.c:43:8
	cmpl	$78, %eax
	.loc	2 43 15                         # src/parsing/parsing_map.c:43:15
	je	.LBB2_4
# %bb.1:
	.loc	2 43 18                         # src/parsing/parsing_map.c:43:18
	movsbl	-2(%rbp), %eax
	.loc	2 43 20                         # src/parsing/parsing_map.c:43:20
	cmpl	$83, %eax
	.loc	2 43 27                         # src/parsing/parsing_map.c:43:27
	je	.LBB2_4
# %bb.2:
	.loc	2 43 30                         # src/parsing/parsing_map.c:43:30
	movsbl	-2(%rbp), %eax
	.loc	2 43 32                         # src/parsing/parsing_map.c:43:32
	cmpl	$69, %eax
	.loc	2 43 39                         # src/parsing/parsing_map.c:43:39
	je	.LBB2_4
# %bb.3:
	.loc	2 43 42                         # src/parsing/parsing_map.c:43:42
	movsbl	-2(%rbp), %eax
	.loc	2 43 44                         # src/parsing/parsing_map.c:43:44
	cmpl	$87, %eax
.Ltmp14:
	.loc	2 43 6                          # src/parsing/parsing_map.c:43:6
	jne	.LBB2_5
.LBB2_4:
.Ltmp15:
	.loc	2 44 3 is_stmt 1                # src/parsing/parsing_map.c:44:3
	movb	$1, -1(%rbp)
	jmp	.LBB2_6
.Ltmp16:
.LBB2_5:
	.loc	2 45 2                          # src/parsing/parsing_map.c:45:2
	movb	$0, -1(%rbp)
.LBB2_6:
	.loc	2 46 1                          # src/parsing/parsing_map.c:46:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	is_start_position, .Lfunc_end2-is_start_position
	.cfi_endproc
                                        # -- End function
	.globl	get_player_orientation          # -- Begin function get_player_orientation
	.p2align	4, 0x90
	.type	get_player_orientation,@function
get_player_orientation:                 # @get_player_orientation
.Lfunc_begin3:
	.loc	2 49 0                          # src/parsing/parsing_map.c:49:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
.Ltmp18:
	.loc	2 50 6 prologue_end             # src/parsing/parsing_map.c:50:6
	movsbl	-5(%rbp), %eax
	.loc	2 50 8 is_stmt 0                # src/parsing/parsing_map.c:50:8
	cmpl	$69, %eax
.Ltmp19:
	.loc	2 50 6                          # src/parsing/parsing_map.c:50:6
	jne	.LBB3_2
# %bb.1:
.Ltmp20:
	.loc	2 51 3 is_stmt 1                # src/parsing/parsing_map.c:51:3
	movl	$0, -4(%rbp)
	jmp	.LBB3_7
.Ltmp21:
.LBB3_2:
	.loc	2 52 6                          # src/parsing/parsing_map.c:52:6
	movsbl	-5(%rbp), %eax
	.loc	2 52 8 is_stmt 0                # src/parsing/parsing_map.c:52:8
	cmpl	$78, %eax
.Ltmp22:
	.loc	2 52 6                          # src/parsing/parsing_map.c:52:6
	jne	.LBB3_4
# %bb.3:
.Ltmp23:
	.loc	2 53 3 is_stmt 1                # src/parsing/parsing_map.c:53:3
	movl	$90, -4(%rbp)
	jmp	.LBB3_7
.Ltmp24:
.LBB3_4:
	.loc	2 54 6                          # src/parsing/parsing_map.c:54:6
	movsbl	-5(%rbp), %eax
	.loc	2 54 8 is_stmt 0                # src/parsing/parsing_map.c:54:8
	cmpl	$87, %eax
.Ltmp25:
	.loc	2 54 6                          # src/parsing/parsing_map.c:54:6
	jne	.LBB3_6
# %bb.5:
.Ltmp26:
	.loc	2 55 3 is_stmt 1                # src/parsing/parsing_map.c:55:3
	movl	$180, -4(%rbp)
	jmp	.LBB3_7
.Ltmp27:
.LBB3_6:
	.loc	2 56 2                          # src/parsing/parsing_map.c:56:2
	movl	$270, -4(%rbp)                  # imm = 0x10E
.LBB3_7:
	.loc	2 57 1                          # src/parsing/parsing_map.c:57:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.Lfunc_end3:
	.size	get_player_orientation, .Lfunc_end3-get_player_orientation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function try_to_get_player_start_position
.LCPI4_0:
	.quad	0x3fd3333333333333              # double 0.29999999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI4_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.text
	.globl	try_to_get_player_start_position
	.p2align	4, 0x90
	.type	try_to_get_player_start_position,@function
try_to_get_player_start_position:       # @try_to_get_player_start_position
.Lfunc_begin4:
	.loc	2 60 0                          # src/parsing/parsing_map.c:60:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.Ltmp29:
	.loc	2 63 4 prologue_end             # src/parsing/parsing_map.c:63:4
	movl	$0, -36(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 64 9                          # src/parsing/parsing_map.c:64:9
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 64 2 is_stmt 0                # src/parsing/parsing_map.c:64:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB4_12
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp30:
	.loc	2 66 25 is_stmt 1               # src/parsing/parsing_map.c:66:25
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 66 7 is_stmt 0                # src/parsing/parsing_map.c:66:7
	movsbl	(%rax,%rcx), %edi
	callq	is_start_position
.Ltmp31:
	.loc	2 66 7                          # src/parsing/parsing_map.c:66:7
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_6
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp32:
	.loc	2 68 9 is_stmt 1                # src/parsing/parsing_map.c:68:9
	movq	-32(%rbp), %rax
	.loc	2 68 8 is_stmt 0                # src/parsing/parsing_map.c:68:8
	movb	(%rax), %al
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 68 14                         # src/parsing/parsing_map.c:68:14
	cmpl	$1, %eax
.Ltmp33:
	.loc	2 68 8                          # src/parsing/parsing_map.c:68:8
	jne	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp34:
	.loc	2 69 35 is_stmt 1               # src/parsing/parsing_map.c:69:35
	movq	-8(%rbp), %rdi
	.loc	2 69 5 is_stmt 0                # src/parsing/parsing_map.c:69:5
	movl	$11, %esi
	callq	print_error_then_exit_program
.Ltmp35:
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 70 27 is_stmt 1               # src/parsing/parsing_map.c:70:27
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	.LCPI4_0(%rip), %xmm1           # xmm1 = mem[0],zero
	.loc	2 70 37 is_stmt 0               # src/parsing/parsing_map.c:70:37
	addsd	%xmm1, %xmm0
	.loc	2 70 4                          # src/parsing/parsing_map.c:70:4
	movq	-8(%rbp), %rax
	.loc	2 70 11                         # src/parsing/parsing_map.c:70:11
	movq	48(%rax), %rax
	.loc	2 70 25                         # src/parsing/parsing_map.c:70:25
	movsd	%xmm0, 24(%rax)
	.loc	2 71 27 is_stmt 1               # src/parsing/parsing_map.c:71:27
	movaps	.LCPI4_1(%rip), %xmm1           # xmm1 = [1127219200,1160773632,0,0]
	movq	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI4_2(%rip), %xmm1           # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	.loc	2 71 37 is_stmt 0               # src/parsing/parsing_map.c:71:37
	movsd	.LCPI4_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	.loc	2 71 4                          # src/parsing/parsing_map.c:71:4
	movq	-8(%rbp), %rax
	.loc	2 71 11                         # src/parsing/parsing_map.c:71:11
	movq	48(%rax), %rax
	.loc	2 71 25                         # src/parsing/parsing_map.c:71:25
	movsd	%xmm0, 32(%rax)
	.loc	2 72 50 is_stmt 1               # src/parsing/parsing_map.c:72:50
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 72 27 is_stmt 0               # src/parsing/parsing_map.c:72:27
	movsbl	(%rax,%rcx), %edi
	callq	get_player_orientation
	cvtsi2sd	%eax, %xmm0
	.loc	2 72 4                          # src/parsing/parsing_map.c:72:4
	movq	-8(%rbp), %rax
	.loc	2 72 11                         # src/parsing/parsing_map.c:72:11
	movq	48(%rax), %rax
	.loc	2 72 25                         # src/parsing/parsing_map.c:72:25
	movsd	%xmm0, 16(%rax)
	.loc	2 73 5 is_stmt 1                # src/parsing/parsing_map.c:73:5
	movq	-32(%rbp), %rax
	.loc	2 73 10 is_stmt 0               # src/parsing/parsing_map.c:73:10
	movb	$1, (%rax)
	.loc	2 74 3 is_stmt 1                # src/parsing/parsing_map.c:74:3
	jmp	.LBB4_11
.Ltmp36:
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 75 12                         # src/parsing/parsing_map.c:75:12
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	2 75 20 is_stmt 0               # src/parsing/parsing_map.c:75:20
	cmpl	$48, %eax
	.loc	2 75 27                         # src/parsing/parsing_map.c:75:27
	je	.LBB4_10
# %bb.7:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 75 30                         # src/parsing/parsing_map.c:75:30
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	2 75 38                         # src/parsing/parsing_map.c:75:38
	cmpl	$49, %eax
	.loc	2 75 45                         # src/parsing/parsing_map.c:75:45
	je	.LBB4_10
# %bb.8:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 75 58                         # src/parsing/parsing_map.c:75:58
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 75 49                         # src/parsing/parsing_map.c:75:49
	movsbl	(%rax,%rcx), %edi
	callq	is_space
.Ltmp37:
	.loc	2 75 12                         # src/parsing/parsing_map.c:75:12
	testb	$1, %al
	jne	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp38:
	.loc	2 76 34 is_stmt 1               # src/parsing/parsing_map.c:76:34
	movq	-8(%rbp), %rdi
	.loc	2 76 4 is_stmt 0                # src/parsing/parsing_map.c:76:4
	movl	$10, %esi
	callq	print_error_then_exit_program
.Ltmp39:
.LBB4_10:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	2 0 4                           # src/parsing/parsing_map.c:0:4
	jmp	.LBB4_11
.LBB4_11:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	2 77 4 is_stmt 1                # src/parsing/parsing_map.c:77:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.Ltmp40:
	.loc	2 64 2                          # src/parsing/parsing_map.c:64:2
	jmp	.LBB4_1
.LBB4_12:
	.loc	2 79 1                          # src/parsing/parsing_map.c:79:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp41:
.Lfunc_end4:
	.size	try_to_get_player_start_position, .Lfunc_end4-try_to_get_player_start_position
	.cfi_endproc
                                        # -- End function
	.globl	extract_map                     # -- Begin function extract_map
	.p2align	4, 0x90
	.type	extract_map,@function
extract_map:                            # @extract_map
.Lfunc_begin5:
	.loc	2 82 0                          # src/parsing/parsing_map.c:82:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp42:
	.loc	2 88 34 prologue_end            # src/parsing/parsing_map.c:88:34
	movq	-8(%rbp), %rdi
	.loc	2 88 6 is_stmt 0                # src/parsing/parsing_map.c:88:6
	callq	set_index_at_map_start_line
	.loc	2 88 4                          # src/parsing/parsing_map.c:88:4
	movl	%eax, -12(%rbp)
	.loc	2 89 38 is_stmt 1               # src/parsing/parsing_map.c:89:38
	movq	-8(%rbp), %rdi
	.loc	2 89 46 is_stmt 0               # src/parsing/parsing_map.c:89:46
	movq	-8(%rbp), %rax
	.loc	2 89 53                         # src/parsing/parsing_map.c:89:53
	movq	32(%rax), %rax
	.loc	2 89 59                         # src/parsing/parsing_map.c:89:59
	movq	48(%rax), %rsi
	.loc	2 89 46                         # src/parsing/parsing_map.c:89:46
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rsi
	.loc	2 89 23                         # src/parsing/parsing_map.c:89:23
	callq	get_map_height
	movslq	%eax, %rcx
	.loc	2 89 2                          # src/parsing/parsing_map.c:89:2
	movq	-8(%rbp), %rax
	.loc	2 89 9                          # src/parsing/parsing_map.c:89:9
	movq	24(%rax), %rax
	.loc	2 89 21                         # src/parsing/parsing_map.c:89:21
	movq	%rcx, 8(%rax)
	.loc	2 90 46 is_stmt 1               # src/parsing/parsing_map.c:90:46
	movq	-8(%rbp), %rax
	.loc	2 90 53 is_stmt 0               # src/parsing/parsing_map.c:90:53
	movq	24(%rax), %rax
	.loc	2 90 58                         # src/parsing/parsing_map.c:90:58
	movq	8(%rax), %rdi
	.loc	2 90 65                         # src/parsing/parsing_map.c:90:65
	addq	$1, %rdi
	.loc	2 90 43                         # src/parsing/parsing_map.c:90:43
	shlq	$3, %rdi
	.loc	2 90 21                         # src/parsing/parsing_map.c:90:21
	callq	malloc
	movq	%rax, %rcx
	.loc	2 90 2                          # src/parsing/parsing_map.c:90:2
	movq	-8(%rbp), %rax
	.loc	2 90 9                          # src/parsing/parsing_map.c:90:9
	movq	24(%rax), %rax
	.loc	2 90 19                         # src/parsing/parsing_map.c:90:19
	movq	%rcx, 56(%rax)
.Ltmp43:
	.loc	2 91 7 is_stmt 1                # src/parsing/parsing_map.c:91:7
	movq	-8(%rbp), %rax
	.loc	2 91 14 is_stmt 0               # src/parsing/parsing_map.c:91:14
	movq	24(%rax), %rax
	.loc	2 91 7                          # src/parsing/parsing_map.c:91:7
	cmpq	$0, 56(%rax)
.Ltmp44:
	.loc	2 91 6                          # src/parsing/parsing_map.c:91:6
	jne	.LBB5_2
# %bb.1:
.Ltmp45:
	.loc	2 92 33 is_stmt 1               # src/parsing/parsing_map.c:92:33
	movq	-8(%rbp), %rdi
	.loc	2 92 3 is_stmt 0                # src/parsing/parsing_map.c:92:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp46:
.LBB5_2:
	.loc	2 93 4 is_stmt 1                # src/parsing/parsing_map.c:93:4
	movl	$0, -16(%rbp)
	.loc	2 94 7                          # src/parsing/parsing_map.c:94:7
	movb	$0, -17(%rbp)
	.loc	2 95 2                          # src/parsing/parsing_map.c:95:2
	movq	-8(%rbp), %rax
	.loc	2 95 9 is_stmt 0                # src/parsing/parsing_map.c:95:9
	movq	24(%rax), %rax
	.loc	2 95 20                         # src/parsing/parsing_map.c:95:20
	movq	$0, (%rax)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	.loc	2 96 9 is_stmt 1                # src/parsing/parsing_map.c:96:9
	movq	-8(%rbp), %rax
	.loc	2 96 16 is_stmt 0               # src/parsing/parsing_map.c:96:16
	movq	32(%rax), %rax
	.loc	2 96 22                         # src/parsing/parsing_map.c:96:22
	movq	48(%rax), %rax
	.loc	2 96 9                          # src/parsing/parsing_map.c:96:9
	movslq	-12(%rbp), %rcx
	.loc	2 96 2                          # src/parsing/parsing_map.c:96:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB5_7
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
.Ltmp47:
	.loc	2 98 35 is_stmt 1               # src/parsing/parsing_map.c:98:35
	movq	-8(%rbp), %rax
	.loc	2 98 42 is_stmt 0               # src/parsing/parsing_map.c:98:42
	movq	32(%rax), %rax
	.loc	2 98 48                         # src/parsing/parsing_map.c:98:48
	movq	48(%rax), %rax
	.loc	2 98 35                         # src/parsing/parsing_map.c:98:35
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 98 25                         # src/parsing/parsing_map.c:98:25
	callq	ft_strdup
	movq	%rax, %rdx
	.loc	2 98 3                          # src/parsing/parsing_map.c:98:3
	movq	-8(%rbp), %rax
	.loc	2 98 10                         # src/parsing/parsing_map.c:98:10
	movq	24(%rax), %rax
	.loc	2 98 15                         # src/parsing/parsing_map.c:98:15
	movq	56(%rax), %rax
	.loc	2 98 3                          # src/parsing/parsing_map.c:98:3
	movslq	-16(%rbp), %rcx
	.loc	2 98 23                         # src/parsing/parsing_map.c:98:23
	movq	%rdx, (%rax,%rcx,8)
	.loc	2 99 36 is_stmt 1               # src/parsing/parsing_map.c:99:36
	movq	-8(%rbp), %rdi
	.loc	2 99 43 is_stmt 0               # src/parsing/parsing_map.c:99:43
	movq	-8(%rbp), %rax
	.loc	2 99 50                         # src/parsing/parsing_map.c:99:50
	movq	24(%rax), %rax
	.loc	2 99 55                         # src/parsing/parsing_map.c:99:55
	movq	56(%rax), %rax
	.loc	2 99 43                         # src/parsing/parsing_map.c:99:43
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 99 64                         # src/parsing/parsing_map.c:99:64
	movslq	-16(%rbp), %rdx
	.loc	2 99 3                          # src/parsing/parsing_map.c:99:3
	leaq	-17(%rbp), %rcx
	callq	try_to_get_player_start_position
	.loc	2 100 21 is_stmt 1              # src/parsing/parsing_map.c:100:21
	movq	-8(%rbp), %rax
	.loc	2 100 28 is_stmt 0              # src/parsing/parsing_map.c:100:28
	movq	24(%rax), %rax
	.loc	2 100 33                        # src/parsing/parsing_map.c:100:33
	movq	56(%rax), %rax
	.loc	2 100 21                        # src/parsing/parsing_map.c:100:21
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 100 11                        # src/parsing/parsing_map.c:100:11
	callq	ft_strlen
	.loc	2 100 9                         # src/parsing/parsing_map.c:100:9
	movq	%rax, -32(%rbp)
.Ltmp48:
	.loc	2 101 7 is_stmt 1               # src/parsing/parsing_map.c:101:7
	movq	-32(%rbp), %rax
	.loc	2 101 15 is_stmt 0              # src/parsing/parsing_map.c:101:15
	movq	-8(%rbp), %rcx
	.loc	2 101 22                        # src/parsing/parsing_map.c:101:22
	movq	24(%rcx), %rcx
	.loc	2 101 13                        # src/parsing/parsing_map.c:101:13
	cmpq	(%rcx), %rax
.Ltmp49:
	.loc	2 101 7                         # src/parsing/parsing_map.c:101:7
	jbe	.LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
.Ltmp50:
	.loc	2 102 24 is_stmt 1              # src/parsing/parsing_map.c:102:24
	movq	-32(%rbp), %rcx
	.loc	2 102 4 is_stmt 0               # src/parsing/parsing_map.c:102:4
	movq	-8(%rbp), %rax
	.loc	2 102 11                        # src/parsing/parsing_map.c:102:11
	movq	24(%rax), %rax
	.loc	2 102 22                        # src/parsing/parsing_map.c:102:22
	movq	%rcx, (%rax)
.Ltmp51:
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	.loc	2 103 4 is_stmt 1               # src/parsing/parsing_map.c:103:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	2 104 4                         # src/parsing/parsing_map.c:104:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp52:
	.loc	2 96 2                          # src/parsing/parsing_map.c:96:2
	jmp	.LBB5_3
.LBB5_7:
	.loc	2 106 2                         # src/parsing/parsing_map.c:106:2
	movq	-8(%rbp), %rax
	.loc	2 106 9 is_stmt 0               # src/parsing/parsing_map.c:106:9
	movq	24(%rax), %rax
	.loc	2 106 14                        # src/parsing/parsing_map.c:106:14
	movq	56(%rax), %rax
	.loc	2 106 2                         # src/parsing/parsing_map.c:106:2
	movslq	-16(%rbp), %rcx
	.loc	2 106 22                        # src/parsing/parsing_map.c:106:22
	movq	$0, (%rax,%rcx,8)
	.loc	2 107 8 is_stmt 1               # src/parsing/parsing_map.c:107:8
	movq	-8(%rbp), %rax
	.loc	2 107 15 is_stmt 0              # src/parsing/parsing_map.c:107:15
	movq	32(%rax), %rax
	.loc	2 107 21                        # src/parsing/parsing_map.c:107:21
	movl	(%rax), %edi
	.loc	2 107 2                         # src/parsing/parsing_map.c:107:2
	callq	close
	.loc	2 108 1 is_stmt 1               # src/parsing/parsing_map.c:108:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.Lfunc_end5:
	.size	extract_map, .Lfunc_end5-extract_map
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	5 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d_player.h"
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
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x708 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x55 DW_TAG_enumeration_type
	.long	127                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5a:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x60:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6c:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x72:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x7f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x86:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x8d:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	527                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xa6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xb4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string49                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	970                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xc2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xd1:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	527                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xea:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xf8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string119                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x107:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	534                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x120:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	126
	.long	.Linfo_string120                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x12f:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	527                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x148:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	123
	.long	.Linfo_string120                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x157:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x16c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x17a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string121                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	975                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x188:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	861                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x196:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	1805                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string124                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1b3:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1c8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1d6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string124                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1e4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string125                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1f2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	534                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x200:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	861                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x20f:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x216:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x21d:0x5 DW_TAG_pointer_type
	.long	546                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x222:0xb DW_TAG_typedef
	.long	557                             # DW_AT_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x22d:0x8d DW_TAG_structure_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x235:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	698                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x241:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x24d:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x259:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	728                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x265:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	987                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x271:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1108                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x27d:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1230                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x289:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1366                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x295:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1415                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2a1:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1584                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2ad:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1686                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2ba:0xb DW_TAG_typedef
	.long	709                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2c5:0xb DW_TAG_typedef
	.long	720                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2d0:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x2d7:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x2d8:0x5 DW_TAG_pointer_type
	.long	733                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2dd:0xb DW_TAG_typedef
	.long	744                             # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2e8:0x75 DW_TAG_structure_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2f0:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	861                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2fc:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	861                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x308:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	890                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x314:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	890                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x320:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	890                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x32c:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	890                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x338:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x344:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x350:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	970                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x35d:0xb DW_TAG_typedef
	.long	872                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x368:0xb DW_TAG_typedef
	.long	883                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x373:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x37a:0x5 DW_TAG_pointer_type
	.long	895                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x37f:0xb DW_TAG_typedef
	.long	906                             # DW_AT_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x38a:0x2d DW_TAG_structure_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x392:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x39e:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3aa:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x3b7:0xc DW_TAG_array_type
	.long	698                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3bc:0x6 DW_TAG_subrange_type
	.long	963                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x3c3:0x7 DW_TAG_base_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x3ca:0x5 DW_TAG_pointer_type
	.long	975                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3cf:0x5 DW_TAG_pointer_type
	.long	980                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3d4:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x3db:0x5 DW_TAG_pointer_type
	.long	992                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3e0:0xb DW_TAG_typedef
	.long	1003                            # DW_AT_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3eb:0x69 DW_TAG_structure_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3f3:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ff:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	698                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x40b:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x417:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	975                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x423:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	975                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x42f:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	975                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x43b:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	975                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x447:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	970                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x454:0x5 DW_TAG_pointer_type
	.long	1113                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x459:0xb DW_TAG_typedef
	.long	1124                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x464:0x15 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x46c:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1145                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x479:0x5 DW_TAG_pointer_type
	.long	1150                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x47e:0xb DW_TAG_typedef
	.long	1161                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x489:0x45 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x491:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x49d:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	975                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4a9:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4b5:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4c1:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4ce:0x5 DW_TAG_pointer_type
	.long	1235                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4d3:0xb DW_TAG_typedef
	.long	1246                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4de:0x69 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4e6:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f2:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4fe:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50a:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x516:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x522:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x52e:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53a:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1351                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x547:0x5 DW_TAG_pointer_type
	.long	1356                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x54c:0x5 DW_TAG_pointer_type
	.long	1361                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x551:0x5 DW_TAG_pointer_type
	.long	698                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x556:0x5 DW_TAG_pointer_type
	.long	1371                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x55b:0xb DW_TAG_typedef
	.long	1382                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x566:0x21 DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x56e:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x57a:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x587:0x5 DW_TAG_pointer_type
	.long	1420                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x58c:0xb DW_TAG_typedef
	.long	1431                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x597:0x99 DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5b7:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5c3:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5cf:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5db:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5e7:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5f3:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ff:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x60b:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x617:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x623:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x630:0x5 DW_TAG_pointer_type
	.long	1589                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x635:0xb DW_TAG_typedef
	.long	1600                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x640:0x39 DW_TAG_structure_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x648:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1657                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x654:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1657                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x660:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1657                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x66c:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1657                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x679:0xb DW_TAG_typedef
	.long	1668                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x684:0xb DW_TAG_typedef
	.long	1679                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x68f:0x7 DW_TAG_base_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x696:0x5 DW_TAG_pointer_type
	.long	1691                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x69b:0xb DW_TAG_typedef
	.long	1702                            # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6a6:0x51 DW_TAG_structure_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6ae:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	890                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ba:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	698                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6c6:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	698                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6d2:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1783                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6de:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1783                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ea:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1783                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6f7:0xb DW_TAG_typedef
	.long	1794                            # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x702:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x70d:0x5 DW_TAG_pointer_type
	.long	534                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_map.c"     # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=64
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=103
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=116
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=128
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=140
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=152
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=169
.Linfo_string9:
	.asciz	"err_id"                        # string offset=182
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=189
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=198
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=208
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=220
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=231
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=246
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=267
.Linfo_string17:
	.asciz	"double"                        # string offset=277
.Linfo_string18:
	.asciz	"get_map_height"                # string offset=284
.Linfo_string19:
	.asciz	"int"                           # string offset=299
.Linfo_string20:
	.asciz	"set_index_at_map_start_line"   # string offset=303
.Linfo_string21:
	.asciz	"is_start_position"             # string offset=331
.Linfo_string22:
	.asciz	"_Bool"                         # string offset=349
.Linfo_string23:
	.asciz	"get_player_orientation"        # string offset=355
.Linfo_string24:
	.asciz	"try_to_get_player_start_position" # string offset=378
.Linfo_string25:
	.asciz	"extract_map"                   # string offset=411
.Linfo_string26:
	.asciz	"cub3d"                         # string offset=423
.Linfo_string27:
	.asciz	"program_state"                 # string offset=429
.Linfo_string28:
	.asciz	"unsigned char"                 # string offset=443
.Linfo_string29:
	.asciz	"__uint8_t"                     # string offset=457
.Linfo_string30:
	.asciz	"uint8_t"                       # string offset=467
.Linfo_string31:
	.asciz	"win_ptr"                       # string offset=475
.Linfo_string32:
	.asciz	"mlx_ptr"                       # string offset=483
.Linfo_string33:
	.asciz	"map"                           # string offset=491
.Linfo_string34:
	.asciz	"width"                         # string offset=495
.Linfo_string35:
	.asciz	"long unsigned int"             # string offset=501
.Linfo_string36:
	.asciz	"__uint64_t"                    # string offset=519
.Linfo_string37:
	.asciz	"uint64_t"                      # string offset=530
.Linfo_string38:
	.asciz	"height"                        # string offset=539
.Linfo_string39:
	.asciz	"no_texture"                    # string offset=546
.Linfo_string40:
	.asciz	"ptr"                           # string offset=557
.Linfo_string41:
	.asciz	"s_xpm"                         # string offset=561
.Linfo_string42:
	.asciz	"t_xpm"                         # string offset=567
.Linfo_string43:
	.asciz	"so_texture"                    # string offset=573
.Linfo_string44:
	.asciz	"we_texture"                    # string offset=584
.Linfo_string45:
	.asciz	"ea_texture"                    # string offset=595
.Linfo_string46:
	.asciz	"ceiling"                       # string offset=606
.Linfo_string47:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=614
.Linfo_string48:
	.asciz	"floor"                         # string offset=634
.Linfo_string49:
	.asciz	"data"                          # string offset=640
.Linfo_string50:
	.asciz	"char"                          # string offset=645
.Linfo_string51:
	.asciz	"s_map"                         # string offset=650
.Linfo_string52:
	.asciz	"t_map"                         # string offset=656
.Linfo_string53:
	.asciz	"file"                          # string offset=662
.Linfo_string54:
	.asciz	"fd"                            # string offset=667
.Linfo_string55:
	.asciz	"mask"                          # string offset=670
.Linfo_string56:
	.asciz	"offset"                        # string offset=675
.Linfo_string57:
	.asciz	"no_filename"                   # string offset=682
.Linfo_string58:
	.asciz	"so_filename"                   # string offset=694
.Linfo_string59:
	.asciz	"we_filename"                   # string offset=706
.Linfo_string60:
	.asciz	"ea_filename"                   # string offset=718
.Linfo_string61:
	.asciz	"s_file"                        # string offset=730
.Linfo_string62:
	.asciz	"t_file"                        # string offset=737
.Linfo_string63:
	.asciz	"scene"                         # string offset=744
.Linfo_string64:
	.asciz	"img"                           # string offset=750
.Linfo_string65:
	.asciz	"addr"                          # string offset=754
.Linfo_string66:
	.asciz	"endian"                        # string offset=759
.Linfo_string67:
	.asciz	"size_line"                     # string offset=766
.Linfo_string68:
	.asciz	"bpp"                           # string offset=776
.Linfo_string69:
	.asciz	"s_img"                         # string offset=780
.Linfo_string70:
	.asciz	"t_img"                         # string offset=786
.Linfo_string71:
	.asciz	"s_scene"                       # string offset=792
.Linfo_string72:
	.asciz	"t_scene"                       # string offset=800
.Linfo_string73:
	.asciz	"player"                        # string offset=808
.Linfo_string74:
	.asciz	"x0"                            # string offset=815
.Linfo_string75:
	.asciz	"y0"                            # string offset=818
.Linfo_string76:
	.asciz	"x1"                            # string offset=821
.Linfo_string77:
	.asciz	"y1"                            # string offset=824
.Linfo_string78:
	.asciz	"angle"                         # string offset=827
.Linfo_string79:
	.asciz	"pos_x"                         # string offset=833
.Linfo_string80:
	.asciz	"pos_y"                         # string offset=839
.Linfo_string81:
	.asciz	"vertex"                        # string offset=845
.Linfo_string82:
	.asciz	"s_player"                      # string offset=852
.Linfo_string83:
	.asciz	"t_player"                      # string offset=861
.Linfo_string84:
	.asciz	"window"                        # string offset=870
.Linfo_string85:
	.asciz	"s_window"                      # string offset=877
.Linfo_string86:
	.asciz	"t_window"                      # string offset=886
.Linfo_string87:
	.asciz	"raycast"                       # string offset=895
.Linfo_string88:
	.asciz	"posX"                          # string offset=903
.Linfo_string89:
	.asciz	"posY"                          # string offset=908
.Linfo_string90:
	.asciz	"dirX"                          # string offset=913
.Linfo_string91:
	.asciz	"dirY"                          # string offset=918
.Linfo_string92:
	.asciz	"planeX"                        # string offset=923
.Linfo_string93:
	.asciz	"planeY"                        # string offset=930
.Linfo_string94:
	.asciz	"sideX"                         # string offset=937
.Linfo_string95:
	.asciz	"sideY"                         # string offset=943
.Linfo_string96:
	.asciz	"deltaDistX"                    # string offset=949
.Linfo_string97:
	.asciz	"deltaDistY"                    # string offset=960
.Linfo_string98:
	.asciz	"time"                          # string offset=971
.Linfo_string99:
	.asciz	"oldtime"                       # string offset=976
.Linfo_string100:
	.asciz	"s_raycast"                     # string offset=984
.Linfo_string101:
	.asciz	"t_raycast"                     # string offset=994
.Linfo_string102:
	.asciz	"minimap"                       # string offset=1004
.Linfo_string103:
	.asciz	"unsigned short"                # string offset=1012
.Linfo_string104:
	.asciz	"__uint16_t"                    # string offset=1027
.Linfo_string105:
	.asciz	"uint16_t"                      # string offset=1038
.Linfo_string106:
	.asciz	"x_pos"                         # string offset=1047
.Linfo_string107:
	.asciz	"y_pos"                         # string offset=1053
.Linfo_string108:
	.asciz	"s_minimap"                     # string offset=1059
.Linfo_string109:
	.asciz	"t_minimap"                     # string offset=1069
.Linfo_string110:
	.asciz	"main_menu"                     # string offset=1079
.Linfo_string111:
	.asciz	"xpm"                           # string offset=1089
.Linfo_string112:
	.asciz	"color"                         # string offset=1093
.Linfo_string113:
	.asciz	"__uint32_t"                    # string offset=1099
.Linfo_string114:
	.asciz	"uint32_t"                      # string offset=1110
.Linfo_string115:
	.asciz	"s_main_menu"                   # string offset=1119
.Linfo_string116:
	.asciz	"t_main_menu"                   # string offset=1131
.Linfo_string117:
	.asciz	"s_cub3d"                       # string offset=1143
.Linfo_string118:
	.asciz	"t_cub3d"                       # string offset=1151
.Linfo_string119:
	.asciz	"index"                         # string offset=1159
.Linfo_string120:
	.asciz	"c"                             # string offset=1165
.Linfo_string121:
	.asciz	"line"                          # string offset=1167
.Linfo_string122:
	.asciz	"y"                             # string offset=1172
.Linfo_string123:
	.asciz	"flag"                          # string offset=1174
.Linfo_string124:
	.asciz	"i"                             # string offset=1179
.Linfo_string125:
	.asciz	"j"                             # string offset=1181
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_map_height
	.addrsig_sym ft_strlen
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym set_index_at_map_start_line
	.addrsig_sym is_start_position
	.addrsig_sym get_player_orientation
	.addrsig_sym try_to_get_player_start_position
	.addrsig_sym is_space
	.addrsig_sym malloc
	.addrsig_sym ft_strdup
	.addrsig_sym close
	.section	.debug_line,"",@progbits
.Lline_table_start0:
