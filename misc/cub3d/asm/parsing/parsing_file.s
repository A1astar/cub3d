	.text
	.file	"parsing_file.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	open_file                       # -- Begin function open_file
	.p2align	4, 0x90
	.type	open_file,@function
open_file:                              # @open_file
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_file.c"
	.loc	2 16 0                          # src/parsing/parsing_file.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	2 17 25 prologue_end            # src/parsing/parsing_file.c:17:25
	movq	-16(%rbp), %rdi
	.loc	2 17 20 is_stmt 0               # src/parsing/parsing_file.c:17:20
	xorl	%esi, %esi
	movb	$0, %al
	callq	open
	movl	%eax, %ecx
	.loc	2 17 2                          # src/parsing/parsing_file.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 9                          # src/parsing/parsing_file.c:17:9
	movq	32(%rax), %rax
	.loc	2 17 18                         # src/parsing/parsing_file.c:17:18
	movl	%ecx, (%rax)
.Ltmp1:
	.loc	2 18 6 is_stmt 1                # src/parsing/parsing_file.c:18:6
	movq	-8(%rbp), %rax
	.loc	2 18 13 is_stmt 0               # src/parsing/parsing_file.c:18:13
	movq	32(%rax), %rax
	.loc	2 18 22                         # src/parsing/parsing_file.c:18:22
	cmpl	$-1, (%rax)
.Ltmp2:
	.loc	2 18 6                          # src/parsing/parsing_file.c:18:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 20 33 is_stmt 1               # src/parsing/parsing_file.c:20:33
	movq	-8(%rbp), %rdi
	.loc	2 20 3 is_stmt 0                # src/parsing/parsing_file.c:20:3
	movl	$6, %esi
	callq	print_error_then_exit_program
	.loc	2 21 17 is_stmt 1               # src/parsing/parsing_file.c:21:17
	movq	-8(%rbp), %rdi
	.loc	2 21 3 is_stmt 0                # src/parsing/parsing_file.c:21:3
	callq	clean_program
	.loc	2 22 3 is_stmt 1                # src/parsing/parsing_file.c:22:3
	movl	$1, %edi
	callq	exit
.Ltmp4:
.LBB0_2:
	.loc	2 24 1                          # src/parsing/parsing_file.c:24:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.globl	get_file_length                 # -- Begin function get_file_length
	.p2align	4, 0x90
	.type	get_file_length,@function
get_file_length:                        # @get_file_length
.Lfunc_begin1:
	.loc	2 27 0                          # src/parsing/parsing_file.c:27:0
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
.Ltmp6:
	.loc	2 31 4 prologue_end             # src/parsing/parsing_file.c:31:4
	movl	$0, -20(%rbp)
	.loc	2 32 12                         # src/parsing/parsing_file.c:32:12
	movq	-8(%rbp), %rdi
	.loc	2 32 19 is_stmt 0               # src/parsing/parsing_file.c:32:19
	movq	-16(%rbp), %rsi
	.loc	2 32 2                          # src/parsing/parsing_file.c:32:2
	callq	open_file
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp7:
	.loc	2 35 24 is_stmt 1               # src/parsing/parsing_file.c:35:24
	movq	-8(%rbp), %rax
	.loc	2 35 31 is_stmt 0               # src/parsing/parsing_file.c:35:31
	movq	32(%rax), %rax
	.loc	2 35 37                         # src/parsing/parsing_file.c:35:37
	movl	(%rax), %edi
	.loc	2 35 10                         # src/parsing/parsing_file.c:35:10
	callq	get_next_line
	.loc	2 35 8                          # src/parsing/parsing_file.c:35:8
	movq	%rax, -32(%rbp)
.Ltmp8:
	.loc	2 36 8 is_stmt 1                # src/parsing/parsing_file.c:36:8
	cmpq	$0, -32(%rbp)
.Ltmp9:
	.loc	2 36 7 is_stmt 0                # src/parsing/parsing_file.c:36:7
	jne	.LBB1_3
# %bb.2:
.Ltmp10:
	.loc	2 37 4 is_stmt 1                # src/parsing/parsing_file.c:37:4
	jmp	.LBB1_4
.Ltmp11:
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 38 8                          # src/parsing/parsing_file.c:38:8
	movq	-32(%rbp), %rdi
	.loc	2 38 3 is_stmt 0                # src/parsing/parsing_file.c:38:3
	callq	free
	.loc	2 39 4 is_stmt 1                # src/parsing/parsing_file.c:39:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp12:
	.loc	2 33 2                          # src/parsing/parsing_file.c:33:2
	jmp	.LBB1_1
.LBB1_4:
	.loc	2 41 8                          # src/parsing/parsing_file.c:41:8
	movq	-8(%rbp), %rax
	.loc	2 41 15 is_stmt 0               # src/parsing/parsing_file.c:41:15
	movq	32(%rax), %rax
	.loc	2 41 21                         # src/parsing/parsing_file.c:41:21
	movl	(%rax), %edi
	.loc	2 41 2                          # src/parsing/parsing_file.c:41:2
	callq	close
	.loc	2 42 10 is_stmt 1               # src/parsing/parsing_file.c:42:10
	movl	-20(%rbp), %eax
	.loc	2 42 2 is_stmt 0                # src/parsing/parsing_file.c:42:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	get_file_length, .Lfunc_end1-get_file_length
	.cfi_endproc
                                        # -- End function
	.globl	extract_file                    # -- Begin function extract_file
	.p2align	4, 0x90
	.type	extract_file,@function
extract_file:                           # @extract_file
.Lfunc_begin2:
	.loc	2 46 0 is_stmt 1                # src/parsing/parsing_file.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp14:
	.loc	2 51 27 prologue_end            # src/parsing/parsing_file.c:51:27
	movq	-8(%rbp), %rdi
	.loc	2 51 34 is_stmt 0               # src/parsing/parsing_file.c:51:34
	movq	-16(%rbp), %rsi
	.loc	2 51 11                         # src/parsing/parsing_file.c:51:11
	callq	get_file_length
	.loc	2 51 9                          # src/parsing/parsing_file.c:51:9
	movl	%eax, -36(%rbp)
	.loc	2 52 47 is_stmt 1               # src/parsing/parsing_file.c:52:47
	movl	-36(%rbp), %eax
	.loc	2 52 54 is_stmt 0               # src/parsing/parsing_file.c:52:54
	addl	$1, %eax
	.loc	2 52 46                         # src/parsing/parsing_file.c:52:46
	movslq	%eax, %rdi
	.loc	2 52 44                         # src/parsing/parsing_file.c:52:44
	shlq	$3, %rdi
	.loc	2 52 22                         # src/parsing/parsing_file.c:52:22
	callq	malloc
	movq	%rax, %rcx
	.loc	2 52 2                          # src/parsing/parsing_file.c:52:2
	movq	-8(%rbp), %rax
	.loc	2 52 9                          # src/parsing/parsing_file.c:52:9
	movq	32(%rax), %rax
	.loc	2 52 20                         # src/parsing/parsing_file.c:52:20
	movq	%rcx, 48(%rax)
.Ltmp15:
	.loc	2 53 7 is_stmt 1                # src/parsing/parsing_file.c:53:7
	movq	-8(%rbp), %rax
	.loc	2 53 14 is_stmt 0               # src/parsing/parsing_file.c:53:14
	movq	32(%rax), %rax
	.loc	2 53 7                          # src/parsing/parsing_file.c:53:7
	cmpq	$0, 48(%rax)
.Ltmp16:
	.loc	2 53 6                          # src/parsing/parsing_file.c:53:6
	jne	.LBB2_2
# %bb.1:
.Ltmp17:
	.loc	2 54 33 is_stmt 1               # src/parsing/parsing_file.c:54:33
	movq	-8(%rbp), %rdi
	.loc	2 54 3 is_stmt 0                # src/parsing/parsing_file.c:54:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp18:
.LBB2_2:
	.loc	2 55 4 is_stmt 1                # src/parsing/parsing_file.c:55:4
	movl	$0, -20(%rbp)
	.loc	2 56 12                         # src/parsing/parsing_file.c:56:12
	movq	-8(%rbp), %rdi
	.loc	2 56 19 is_stmt 0               # src/parsing/parsing_file.c:56:19
	movq	-16(%rbp), %rsi
	.loc	2 56 2                          # src/parsing/parsing_file.c:56:2
	callq	open_file
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
.Ltmp19:
	.loc	2 59 24 is_stmt 1               # src/parsing/parsing_file.c:59:24
	movq	-8(%rbp), %rax
	.loc	2 59 31 is_stmt 0               # src/parsing/parsing_file.c:59:31
	movq	32(%rax), %rax
	.loc	2 59 37                         # src/parsing/parsing_file.c:59:37
	movl	(%rax), %edi
	.loc	2 59 10                         # src/parsing/parsing_file.c:59:10
	callq	get_next_line
	.loc	2 59 8                          # src/parsing/parsing_file.c:59:8
	movq	%rax, -32(%rbp)
.Ltmp20:
	.loc	2 60 12 is_stmt 1               # src/parsing/parsing_file.c:60:12
	cmpq	$0, -32(%rbp)
.Ltmp21:
	.loc	2 60 7 is_stmt 0                # src/parsing/parsing_file.c:60:7
	jne	.LBB2_5
# %bb.4:
.Ltmp22:
	.loc	2 61 4 is_stmt 1                # src/parsing/parsing_file.c:61:4
	jmp	.LBB2_9
.Ltmp23:
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	2 62 7                          # src/parsing/parsing_file.c:62:7
	movl	-20(%rbp), %eax
	.loc	2 62 12 is_stmt 0               # src/parsing/parsing_file.c:62:12
	movl	-36(%rbp), %ecx
	.loc	2 62 19                         # src/parsing/parsing_file.c:62:19
	subl	$1, %ecx
	.loc	2 62 9                          # src/parsing/parsing_file.c:62:9
	cmpl	%ecx, %eax
.Ltmp24:
	.loc	2 62 7                          # src/parsing/parsing_file.c:62:7
	jne	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
.Ltmp25:
	.loc	2 63 37 is_stmt 1               # src/parsing/parsing_file.c:63:37
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	2 63 56 is_stmt 0               # src/parsing/parsing_file.c:63:56
	movq	-32(%rbp), %rdi
	.loc	2 63 46                         # src/parsing/parsing_file.c:63:46
	callq	ft_strlen
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	2 63 27                         # src/parsing/parsing_file.c:63:27
	xorl	%esi, %esi
	callq	ft_substr
	movq	%rax, %rdx
	.loc	2 63 4                          # src/parsing/parsing_file.c:63:4
	movq	-8(%rbp), %rax
	.loc	2 63 11                         # src/parsing/parsing_file.c:63:11
	movq	32(%rax), %rax
	.loc	2 63 17                         # src/parsing/parsing_file.c:63:17
	movq	48(%rax), %rax
	.loc	2 63 4                          # src/parsing/parsing_file.c:63:4
	movslq	-20(%rbp), %rcx
	.loc	2 63 25                         # src/parsing/parsing_file.c:63:25
	movq	%rdx, (%rax,%rcx,8)
	.loc	2 63 4                          # src/parsing/parsing_file.c:63:4
	jmp	.LBB2_8
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	2 65 37 is_stmt 1               # src/parsing/parsing_file.c:65:37
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	2 65 56 is_stmt 0               # src/parsing/parsing_file.c:65:56
	movq	-32(%rbp), %rdi
	.loc	2 65 46                         # src/parsing/parsing_file.c:65:46
	callq	ft_strlen
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	2 65 62                         # src/parsing/parsing_file.c:65:62
	subq	$1, %rdx
	.loc	2 65 27                         # src/parsing/parsing_file.c:65:27
	xorl	%esi, %esi
	callq	ft_substr
	movq	%rax, %rdx
	.loc	2 65 4                          # src/parsing/parsing_file.c:65:4
	movq	-8(%rbp), %rax
	.loc	2 65 11                         # src/parsing/parsing_file.c:65:11
	movq	32(%rax), %rax
	.loc	2 65 17                         # src/parsing/parsing_file.c:65:17
	movq	48(%rax), %rax
	.loc	2 65 4                          # src/parsing/parsing_file.c:65:4
	movslq	-20(%rbp), %rcx
	.loc	2 65 25                         # src/parsing/parsing_file.c:65:25
	movq	%rdx, (%rax,%rcx,8)
.Ltmp26:
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	2 66 8 is_stmt 1                # src/parsing/parsing_file.c:66:8
	movq	-32(%rbp), %rdi
	.loc	2 66 3 is_stmt 0                # src/parsing/parsing_file.c:66:3
	callq	free
	.loc	2 67 4 is_stmt 1                # src/parsing/parsing_file.c:67:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp27:
	.loc	2 57 2                          # src/parsing/parsing_file.c:57:2
	jmp	.LBB2_3
.LBB2_9:
	.loc	2 69 2                          # src/parsing/parsing_file.c:69:2
	movq	-8(%rbp), %rax
	.loc	2 69 9 is_stmt 0                # src/parsing/parsing_file.c:69:9
	movq	32(%rax), %rax
	.loc	2 69 15                         # src/parsing/parsing_file.c:69:15
	movq	48(%rax), %rax
	.loc	2 69 2                          # src/parsing/parsing_file.c:69:2
	movslq	-20(%rbp), %rcx
	.loc	2 69 23                         # src/parsing/parsing_file.c:69:23
	movq	$0, (%rax,%rcx,8)
	.loc	2 70 8 is_stmt 1                # src/parsing/parsing_file.c:70:8
	movq	-8(%rbp), %rax
	.loc	2 70 15 is_stmt 0               # src/parsing/parsing_file.c:70:15
	movq	32(%rax), %rax
	.loc	2 70 21                         # src/parsing/parsing_file.c:70:21
	movl	(%rax), %edi
	.loc	2 70 2                          # src/parsing/parsing_file.c:70:2
	callq	close
	.loc	2 71 1 is_stmt 1                # src/parsing/parsing_file.c:71:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.Lfunc_end2:
	.size	extract_file, .Lfunc_end2-extract_file
	.cfi_endproc
                                        # -- End function
	.globl	extract_elements                # -- Begin function extract_elements
	.p2align	4, 0x90
	.type	extract_elements,@function
extract_elements:                       # @extract_elements
.Lfunc_begin3:
	.loc	2 74 0                          # src/parsing/parsing_file.c:74:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp29:
	.loc	2 79 4 prologue_end             # src/parsing/parsing_file.c:79:4
	movl	$0, -12(%rbp)
	.loc	2 80 13                         # src/parsing/parsing_file.c:80:13
	movl	$-1, -16(%rbp)
	.loc	2 81 2                          # src/parsing/parsing_file.c:81:2
	movq	-8(%rbp), %rax
	.loc	2 81 9 is_stmt 0                # src/parsing/parsing_file.c:81:9
	movq	32(%rax), %rax
	.loc	2 81 20                         # src/parsing/parsing_file.c:81:20
	movb	$0, 4(%rax)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	.loc	2 82 9 is_stmt 1                # src/parsing/parsing_file.c:82:9
	movq	-8(%rbp), %rax
	.loc	2 82 16 is_stmt 0               # src/parsing/parsing_file.c:82:16
	movq	32(%rax), %rax
	.loc	2 82 22                         # src/parsing/parsing_file.c:82:22
	movq	48(%rax), %rcx
	.loc	2 82 9                          # src/parsing/parsing_file.c:82:9
	movslq	-12(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 82 30                         # src/parsing/parsing_file.c:82:30
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 82 55                         # src/parsing/parsing_file.c:82:55
	movq	-8(%rbp), %rax
	.loc	2 82 62                         # src/parsing/parsing_file.c:82:62
	movq	32(%rax), %rax
	.loc	2 82 55                         # src/parsing/parsing_file.c:82:55
	movzbl	4(%rax), %edi
	.loc	2 82 34                         # src/parsing/parsing_file.c:82:34
	callq	are_all_elements_set
	.loc	2 82 33                         # src/parsing/parsing_file.c:82:33
	xorb	$-1, %al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 33                          # src/parsing/parsing_file.c:0:33
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 82 2                          # src/parsing/parsing_file.c:82:2
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_19
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp30:
	.loc	2 84 3 is_stmt 1                # src/parsing/parsing_file.c:84:3
	jmp	.LBB3_5
.LBB3_5:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	2 84 20 is_stmt 0               # src/parsing/parsing_file.c:84:20
	movq	-8(%rbp), %rax
	.loc	2 84 27                         # src/parsing/parsing_file.c:84:27
	movq	32(%rax), %rax
	.loc	2 84 33                         # src/parsing/parsing_file.c:84:33
	movq	48(%rax), %rax
	.loc	2 84 20                         # src/parsing/parsing_file.c:84:20
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 84 10                         # src/parsing/parsing_file.c:84:10
	callq	ft_strlen
	.loc	2 84 42                         # src/parsing/parsing_file.c:84:42
	cmpq	$0, %rax
	.loc	2 84 3                          # src/parsing/parsing_file.c:84:3
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=2
	.loc	2 85 5 is_stmt 1                # src/parsing/parsing_file.c:85:5
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	2 84 3                          # src/parsing/parsing_file.c:84:3
	jmp	.LBB3_5
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 86 23                         # src/parsing/parsing_file.c:86:23
	movq	-8(%rbp), %rax
	.loc	2 86 30 is_stmt 0               # src/parsing/parsing_file.c:86:30
	movq	32(%rax), %rax
	.loc	2 86 36                         # src/parsing/parsing_file.c:86:36
	movq	48(%rax), %rax
	.loc	2 86 23                         # src/parsing/parsing_file.c:86:23
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 86 8                          # src/parsing/parsing_file.c:86:8
	callq	get_identifier
	.loc	2 86 6                          # src/parsing/parsing_file.c:86:6
	movq	%rax, -24(%rbp)
.Ltmp31:
	.loc	2 87 8 is_stmt 1                # src/parsing/parsing_file.c:87:8
	cmpq	$0, -24(%rbp)
.Ltmp32:
	.loc	2 87 7 is_stmt 0                # src/parsing/parsing_file.c:87:7
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp33:
	.loc	2 88 34 is_stmt 1               # src/parsing/parsing_file.c:88:34
	movq	-8(%rbp), %rdi
	.loc	2 88 4 is_stmt 0                # src/parsing/parsing_file.c:88:4
	movl	$5, %esi
	callq	print_error_then_exit_program
	jmp	.LBB3_18
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp34:
	.loc	2 89 29 is_stmt 1               # src/parsing/parsing_file.c:89:29
	movq	-24(%rbp), %rdi
	.loc	2 89 12 is_stmt 0               # src/parsing/parsing_file.c:89:12
	leaq	-16(%rbp), %rsi
	callq	is_valid_texture
.Ltmp35:
	.loc	2 89 12                         # src/parsing/parsing_file.c:89:12
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp36:
	.loc	2 90 25 is_stmt 1               # src/parsing/parsing_file.c:90:25
	movq	-8(%rbp), %rdi
	.loc	2 90 32 is_stmt 0               # src/parsing/parsing_file.c:90:32
	movq	-24(%rbp), %rsi
	.loc	2 90 36                         # src/parsing/parsing_file.c:90:36
	movl	-16(%rbp), %edx
	.loc	2 90 48                         # src/parsing/parsing_file.c:90:48
	movq	-8(%rbp), %rax
	.loc	2 90 55                         # src/parsing/parsing_file.c:90:55
	movq	32(%rax), %rax
	.loc	2 90 61                         # src/parsing/parsing_file.c:90:61
	movq	48(%rax), %rax
	.loc	2 90 48                         # src/parsing/parsing_file.c:90:48
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	.loc	2 90 4                          # src/parsing/parsing_file.c:90:4
	callq	extract_texture_data
	jmp	.LBB3_17
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp37:
	.loc	2 91 27 is_stmt 1               # src/parsing/parsing_file.c:91:27
	movq	-24(%rbp), %rdi
	.loc	2 91 12 is_stmt 0               # src/parsing/parsing_file.c:91:12
	callq	is_valid_floor
.Ltmp38:
	.loc	2 91 12                         # src/parsing/parsing_file.c:91:12
	testb	$1, %al
	jne	.LBB3_12
	jmp	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp39:
	.loc	2 92 23 is_stmt 1               # src/parsing/parsing_file.c:92:23
	movq	-8(%rbp), %rdi
	.loc	2 92 30 is_stmt 0               # src/parsing/parsing_file.c:92:30
	movq	-8(%rbp), %rax
	.loc	2 92 37                         # src/parsing/parsing_file.c:92:37
	movq	32(%rax), %rax
	.loc	2 92 43                         # src/parsing/parsing_file.c:92:43
	movq	48(%rax), %rax
	.loc	2 92 30                         # src/parsing/parsing_file.c:92:30
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 92 4                          # src/parsing/parsing_file.c:92:4
	callq	extract_floor_data
	jmp	.LBB3_16
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp40:
	.loc	2 93 29 is_stmt 1               # src/parsing/parsing_file.c:93:29
	movq	-24(%rbp), %rdi
	.loc	2 93 12 is_stmt 0               # src/parsing/parsing_file.c:93:12
	callq	is_valid_ceiling
.Ltmp41:
	.loc	2 93 12                         # src/parsing/parsing_file.c:93:12
	testb	$1, %al
	jne	.LBB3_14
	jmp	.LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp42:
	.loc	2 94 25 is_stmt 1               # src/parsing/parsing_file.c:94:25
	movq	-8(%rbp), %rdi
	.loc	2 94 32 is_stmt 0               # src/parsing/parsing_file.c:94:32
	movq	-8(%rbp), %rax
	.loc	2 94 39                         # src/parsing/parsing_file.c:94:39
	movq	32(%rax), %rax
	.loc	2 94 45                         # src/parsing/parsing_file.c:94:45
	movq	48(%rax), %rax
	.loc	2 94 32                         # src/parsing/parsing_file.c:94:32
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 94 4                          # src/parsing/parsing_file.c:94:4
	callq	extract_ceiling_data
.Ltmp43:
.LBB3_15:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 4                           # src/parsing/parsing_file.c:0:4
	jmp	.LBB3_16
.LBB3_16:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_18
.LBB3_18:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 95 8 is_stmt 1                # src/parsing/parsing_file.c:95:8
	movq	-24(%rbp), %rdi
	.loc	2 95 3 is_stmt 0                # src/parsing/parsing_file.c:95:3
	callq	free
	.loc	2 96 4 is_stmt 1                # src/parsing/parsing_file.c:96:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp44:
	.loc	2 82 2                          # src/parsing/parsing_file.c:82:2
	jmp	.LBB3_1
.LBB3_19:
	.loc	2 98 24                         # src/parsing/parsing_file.c:98:24
	movl	-12(%rbp), %ecx
	.loc	2 98 2 is_stmt 0                # src/parsing/parsing_file.c:98:2
	movq	-8(%rbp), %rax
	.loc	2 98 9                          # src/parsing/parsing_file.c:98:9
	movq	32(%rax), %rax
	.loc	2 98 22                         # src/parsing/parsing_file.c:98:22
	movl	%ecx, 8(%rax)
	.loc	2 99 1 is_stmt 1                # src/parsing/parsing_file.c:99:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end3:
	.size	extract_elements, .Lfunc_end3-extract_elements
	.cfi_endproc
                                        # -- End function
	.globl	extract_input_file              # -- Begin function extract_input_file
	.p2align	4, 0x90
	.type	extract_input_file,@function
extract_input_file:                     # @extract_input_file
.Lfunc_begin4:
	.loc	2 102 0                         # src/parsing/parsing_file.c:102:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp46:
	.loc	2 103 26 prologue_end           # src/parsing/parsing_file.c:103:26
	movq	-16(%rbp), %rdi
	.loc	2 103 6 is_stmt 0               # src/parsing/parsing_file.c:103:6
	callq	is_filename_correct
.Ltmp47:
	.loc	2 103 6                         # src/parsing/parsing_file.c:103:6
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_2
.LBB4_1:
.Ltmp48:
	.loc	2 105 16 is_stmt 1              # src/parsing/parsing_file.c:105:16
	movq	-8(%rbp), %rdi
	.loc	2 105 23 is_stmt 0              # src/parsing/parsing_file.c:105:23
	movq	-16(%rbp), %rsi
	.loc	2 105 3                         # src/parsing/parsing_file.c:105:3
	callq	extract_file
	.loc	2 106 20 is_stmt 1              # src/parsing/parsing_file.c:106:20
	movq	-8(%rbp), %rdi
	.loc	2 106 3 is_stmt 0               # src/parsing/parsing_file.c:106:3
	callq	extract_elements
	.loc	2 107 15 is_stmt 1              # src/parsing/parsing_file.c:107:15
	movq	-8(%rbp), %rdi
	.loc	2 107 3 is_stmt 0               # src/parsing/parsing_file.c:107:3
	callq	extract_map
	.loc	2 108 3 is_stmt 1               # src/parsing/parsing_file.c:108:3
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp49:
.LBB4_2:
	.cfi_def_cfa %rbp, 16
	.loc	2 110 32                        # src/parsing/parsing_file.c:110:32
	movq	-8(%rbp), %rdi
	.loc	2 110 2 is_stmt 0               # src/parsing/parsing_file.c:110:2
	movl	$4, %esi
	callq	print_error_then_exit_program
	.loc	2 111 2 is_stmt 1               # src/parsing/parsing_file.c:111:2
	movl	$1, %edi
	callq	exit
.Ltmp50:
.Lfunc_end4:
	.size	extract_input_file, .Lfunc_end4-extract_input_file
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x6da DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x86:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x87:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x9c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	494                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xaa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string117                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb9:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	487                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xd2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	494                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string117                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xee:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string118                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xfc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string119                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x10b:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x120:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	494                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x12e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string117                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x13c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string118                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x14a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string119                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x158:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string120                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x167:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x17c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	494                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x18a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string118                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x198:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string121                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1a6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1b5:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1ca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	494                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1d8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1e7:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1ee:0x5 DW_TAG_pointer_type
	.long	499                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f3:0xb DW_TAG_typedef
	.long	510                             # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1fe:0x8d DW_TAG_structure_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x206:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	651                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x212:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x21e:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x22a:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	680                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x236:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	939                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x242:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1060                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x24e:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x25a:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1325                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x266:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1374                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x272:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x27e:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1645                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x28b:0xb DW_TAG_typedef
	.long	662                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x296:0xb DW_TAG_typedef
	.long	673                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2a1:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x2a8:0x5 DW_TAG_pointer_type
	.long	685                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ad:0xb DW_TAG_typedef
	.long	696                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2b8:0x75 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2c0:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	813                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2cc:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	813                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2d8:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e4:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f0:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2fc:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x308:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	903                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x314:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	903                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x320:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	922                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x32d:0xb DW_TAG_typedef
	.long	824                             # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x338:0xb DW_TAG_typedef
	.long	835                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x343:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x34a:0x5 DW_TAG_pointer_type
	.long	847                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x34f:0xb DW_TAG_typedef
	.long	858                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x35a:0x2d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x362:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x36e:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x37a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x387:0xc DW_TAG_array_type
	.long	651                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x38c:0x6 DW_TAG_subrange_type
	.long	915                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x393:0x7 DW_TAG_base_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x39a:0x5 DW_TAG_pointer_type
	.long	927                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x39f:0x5 DW_TAG_pointer_type
	.long	932                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3a4:0x7 DW_TAG_base_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x3ab:0x5 DW_TAG_pointer_type
	.long	944                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3b0:0xb DW_TAG_typedef
	.long	955                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3bb:0x69 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3c3:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3cf:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	651                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3db:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e7:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	927                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3f3:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	927                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ff:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	927                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x40b:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	927                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x417:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	922                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x424:0x5 DW_TAG_pointer_type
	.long	1065                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x429:0xb DW_TAG_typedef
	.long	1076                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x434:0x15 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x43c:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1097                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x449:0x5 DW_TAG_pointer_type
	.long	1102                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x44e:0xb DW_TAG_typedef
	.long	1113                            # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x459:0x45 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x461:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x46d:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	927                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x479:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x485:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x491:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x49e:0x5 DW_TAG_pointer_type
	.long	1187                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4a3:0xb DW_TAG_typedef
	.long	1198                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4ae:0x69 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4b6:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c2:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ce:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4da:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e6:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f2:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4fe:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50a:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1310                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x517:0x7 DW_TAG_base_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x51e:0x5 DW_TAG_pointer_type
	.long	1315                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x523:0x5 DW_TAG_pointer_type
	.long	1320                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x528:0x5 DW_TAG_pointer_type
	.long	651                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x52d:0x5 DW_TAG_pointer_type
	.long	1330                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x532:0xb DW_TAG_typedef
	.long	1341                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x53d:0x21 DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x545:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x551:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x55e:0x5 DW_TAG_pointer_type
	.long	1379                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x563:0xb DW_TAG_typedef
	.long	1390                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x56e:0x99 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x576:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x582:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x58e:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x59a:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5a6:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5b2:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5be:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5ca:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d6:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5e2:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5ee:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5fa:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1303                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x607:0x5 DW_TAG_pointer_type
	.long	1548                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x60c:0xb DW_TAG_typedef
	.long	1559                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x617:0x39 DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x61f:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	1616                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x62b:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1616                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x637:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1616                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x643:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1616                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x650:0xb DW_TAG_typedef
	.long	1627                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x65b:0xb DW_TAG_typedef
	.long	1638                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x666:0x7 DW_TAG_base_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x66d:0x5 DW_TAG_pointer_type
	.long	1650                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x672:0xb DW_TAG_typedef
	.long	1661                            # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x67d:0x51 DW_TAG_structure_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x685:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x691:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	651                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x69d:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	651                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a9:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1742                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6b5:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1742                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6c1:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1742                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6ce:0xb DW_TAG_typedef
	.long	1753                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6d9:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_file.c"    # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=65
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=104
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=117
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=129
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=141
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=153
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=170
.Linfo_string9:
	.asciz	"err_id"                        # string offset=183
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=190
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=199
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=209
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=221
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=232
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=247
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=268
.Linfo_string17:
	.asciz	"open_file"                     # string offset=278
.Linfo_string18:
	.asciz	"get_file_length"               # string offset=288
.Linfo_string19:
	.asciz	"int"                           # string offset=304
.Linfo_string20:
	.asciz	"extract_file"                  # string offset=308
.Linfo_string21:
	.asciz	"extract_elements"              # string offset=321
.Linfo_string22:
	.asciz	"extract_input_file"            # string offset=338
.Linfo_string23:
	.asciz	"cub3d"                         # string offset=357
.Linfo_string24:
	.asciz	"program_state"                 # string offset=363
.Linfo_string25:
	.asciz	"unsigned char"                 # string offset=377
.Linfo_string26:
	.asciz	"__uint8_t"                     # string offset=391
.Linfo_string27:
	.asciz	"uint8_t"                       # string offset=401
.Linfo_string28:
	.asciz	"win_ptr"                       # string offset=409
.Linfo_string29:
	.asciz	"mlx_ptr"                       # string offset=417
.Linfo_string30:
	.asciz	"map"                           # string offset=425
.Linfo_string31:
	.asciz	"width"                         # string offset=429
.Linfo_string32:
	.asciz	"long unsigned int"             # string offset=435
.Linfo_string33:
	.asciz	"__uint64_t"                    # string offset=453
.Linfo_string34:
	.asciz	"uint64_t"                      # string offset=464
.Linfo_string35:
	.asciz	"height"                        # string offset=473
.Linfo_string36:
	.asciz	"no_texture"                    # string offset=480
.Linfo_string37:
	.asciz	"ptr"                           # string offset=491
.Linfo_string38:
	.asciz	"s_xpm"                         # string offset=495
.Linfo_string39:
	.asciz	"t_xpm"                         # string offset=501
.Linfo_string40:
	.asciz	"so_texture"                    # string offset=507
.Linfo_string41:
	.asciz	"we_texture"                    # string offset=518
.Linfo_string42:
	.asciz	"ea_texture"                    # string offset=529
.Linfo_string43:
	.asciz	"ceiling"                       # string offset=540
.Linfo_string44:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=548
.Linfo_string45:
	.asciz	"floor"                         # string offset=568
.Linfo_string46:
	.asciz	"data"                          # string offset=574
.Linfo_string47:
	.asciz	"char"                          # string offset=579
.Linfo_string48:
	.asciz	"s_map"                         # string offset=584
.Linfo_string49:
	.asciz	"t_map"                         # string offset=590
.Linfo_string50:
	.asciz	"file"                          # string offset=596
.Linfo_string51:
	.asciz	"fd"                            # string offset=601
.Linfo_string52:
	.asciz	"mask"                          # string offset=604
.Linfo_string53:
	.asciz	"offset"                        # string offset=609
.Linfo_string54:
	.asciz	"no_filename"                   # string offset=616
.Linfo_string55:
	.asciz	"so_filename"                   # string offset=628
.Linfo_string56:
	.asciz	"we_filename"                   # string offset=640
.Linfo_string57:
	.asciz	"ea_filename"                   # string offset=652
.Linfo_string58:
	.asciz	"s_file"                        # string offset=664
.Linfo_string59:
	.asciz	"t_file"                        # string offset=671
.Linfo_string60:
	.asciz	"scene"                         # string offset=678
.Linfo_string61:
	.asciz	"img"                           # string offset=684
.Linfo_string62:
	.asciz	"addr"                          # string offset=688
.Linfo_string63:
	.asciz	"endian"                        # string offset=693
.Linfo_string64:
	.asciz	"size_line"                     # string offset=700
.Linfo_string65:
	.asciz	"bpp"                           # string offset=710
.Linfo_string66:
	.asciz	"s_img"                         # string offset=714
.Linfo_string67:
	.asciz	"t_img"                         # string offset=720
.Linfo_string68:
	.asciz	"s_scene"                       # string offset=726
.Linfo_string69:
	.asciz	"t_scene"                       # string offset=734
.Linfo_string70:
	.asciz	"player"                        # string offset=742
.Linfo_string71:
	.asciz	"x0"                            # string offset=749
.Linfo_string72:
	.asciz	"y0"                            # string offset=752
.Linfo_string73:
	.asciz	"x1"                            # string offset=755
.Linfo_string74:
	.asciz	"y1"                            # string offset=758
.Linfo_string75:
	.asciz	"angle"                         # string offset=761
.Linfo_string76:
	.asciz	"double"                        # string offset=767
.Linfo_string77:
	.asciz	"pos_x"                         # string offset=774
.Linfo_string78:
	.asciz	"pos_y"                         # string offset=780
.Linfo_string79:
	.asciz	"vertex"                        # string offset=786
.Linfo_string80:
	.asciz	"s_player"                      # string offset=793
.Linfo_string81:
	.asciz	"t_player"                      # string offset=802
.Linfo_string82:
	.asciz	"window"                        # string offset=811
.Linfo_string83:
	.asciz	"s_window"                      # string offset=818
.Linfo_string84:
	.asciz	"t_window"                      # string offset=827
.Linfo_string85:
	.asciz	"raycast"                       # string offset=836
.Linfo_string86:
	.asciz	"posX"                          # string offset=844
.Linfo_string87:
	.asciz	"posY"                          # string offset=849
.Linfo_string88:
	.asciz	"dirX"                          # string offset=854
.Linfo_string89:
	.asciz	"dirY"                          # string offset=859
.Linfo_string90:
	.asciz	"planeX"                        # string offset=864
.Linfo_string91:
	.asciz	"planeY"                        # string offset=871
.Linfo_string92:
	.asciz	"sideX"                         # string offset=878
.Linfo_string93:
	.asciz	"sideY"                         # string offset=884
.Linfo_string94:
	.asciz	"deltaDistX"                    # string offset=890
.Linfo_string95:
	.asciz	"deltaDistY"                    # string offset=901
.Linfo_string96:
	.asciz	"time"                          # string offset=912
.Linfo_string97:
	.asciz	"oldtime"                       # string offset=917
.Linfo_string98:
	.asciz	"s_raycast"                     # string offset=925
.Linfo_string99:
	.asciz	"t_raycast"                     # string offset=935
.Linfo_string100:
	.asciz	"minimap"                       # string offset=945
.Linfo_string101:
	.asciz	"unsigned short"                # string offset=953
.Linfo_string102:
	.asciz	"__uint16_t"                    # string offset=968
.Linfo_string103:
	.asciz	"uint16_t"                      # string offset=979
.Linfo_string104:
	.asciz	"x_pos"                         # string offset=988
.Linfo_string105:
	.asciz	"y_pos"                         # string offset=994
.Linfo_string106:
	.asciz	"s_minimap"                     # string offset=1000
.Linfo_string107:
	.asciz	"t_minimap"                     # string offset=1010
.Linfo_string108:
	.asciz	"main_menu"                     # string offset=1020
.Linfo_string109:
	.asciz	"xpm"                           # string offset=1030
.Linfo_string110:
	.asciz	"color"                         # string offset=1034
.Linfo_string111:
	.asciz	"__uint32_t"                    # string offset=1040
.Linfo_string112:
	.asciz	"uint32_t"                      # string offset=1051
.Linfo_string113:
	.asciz	"s_main_menu"                   # string offset=1060
.Linfo_string114:
	.asciz	"t_main_menu"                   # string offset=1072
.Linfo_string115:
	.asciz	"s_cub3d"                       # string offset=1084
.Linfo_string116:
	.asciz	"t_cub3d"                       # string offset=1092
.Linfo_string117:
	.asciz	"filename"                      # string offset=1100
.Linfo_string118:
	.asciz	"i"                             # string offset=1109
.Linfo_string119:
	.asciz	"line"                          # string offset=1111
.Linfo_string120:
	.asciz	"length"                        # string offset=1116
.Linfo_string121:
	.asciz	"texture_id"                    # string offset=1123
.Linfo_string122:
	.asciz	"id"                            # string offset=1134
.Linfo_string123:
	.asciz	"argv"                          # string offset=1137
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open_file
	.addrsig_sym open
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym clean_program
	.addrsig_sym exit
	.addrsig_sym get_file_length
	.addrsig_sym get_next_line
	.addrsig_sym free
	.addrsig_sym close
	.addrsig_sym extract_file
	.addrsig_sym malloc
	.addrsig_sym ft_substr
	.addrsig_sym ft_strlen
	.addrsig_sym extract_elements
	.addrsig_sym are_all_elements_set
	.addrsig_sym get_identifier
	.addrsig_sym is_valid_texture
	.addrsig_sym extract_texture_data
	.addrsig_sym is_valid_floor
	.addrsig_sym extract_floor_data
	.addrsig_sym is_valid_ceiling
	.addrsig_sym extract_ceiling_data
	.addrsig_sym is_filename_correct
	.addrsig_sym extract_map
	.section	.debug_line,"",@progbits
.Lline_table_start0:
