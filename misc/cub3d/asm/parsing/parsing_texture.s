	.text
	.file	"parsing_texture.c"
	.file	1 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/../../include/cub3d.h"
	.globl	get_texture_filename            # -- Begin function get_texture_filename
	.p2align	4, 0x90
	.type	get_texture_filename,@function
get_texture_filename:                   # @get_texture_filename
.Lfunc_begin0:
	.file	2 "/home/algadea/Dev/42/cube3d/misc/cub3d" "src/parsing/parsing_texture.c"
	.loc	2 16 0                          # src/parsing/parsing_texture.c:16:0
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
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	2 22 16 prologue_end            # src/parsing/parsing_texture.c:22:16
	movq	-16(%rbp), %rdi
	.loc	2 22 6 is_stmt 0                # src/parsing/parsing_texture.c:22:6
	callq	ft_strlen
                                        # kill: def $eax killed $eax killed $rax
	.loc	2 22 4                          # src/parsing/parsing_texture.c:22:4
	movl	%eax, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 23 9 is_stmt 1                # src/parsing/parsing_texture.c:23:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	.loc	2 23 17 is_stmt 0               # src/parsing/parsing_texture.c:23:17
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 23 29                         # src/parsing/parsing_texture.c:23:29
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 23 20                         # src/parsing/parsing_texture.c:23:20
	movsbl	(%rax,%rcx), %edi
	callq	is_space
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 20                          # src/parsing/parsing_texture.c:0:20
	movb	-49(%rbp), %al                  # 1-byte Reload
	.loc	2 23 2                          # src/parsing/parsing_texture.c:23:2
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 24 4 is_stmt 1                # src/parsing/parsing_texture.c:24:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	2 23 2                          # src/parsing/parsing_texture.c:23:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	2 25 19                         # src/parsing/parsing_texture.c:25:19
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 25 8 is_stmt 0                # src/parsing/parsing_texture.c:25:8
	callq	ft_strlen
                                        # kill: def $eax killed $eax killed $rax
	.loc	2 25 6                          # src/parsing/parsing_texture.c:25:6
	movl	%eax, -36(%rbp)
	.loc	2 26 20 is_stmt 1               # src/parsing/parsing_texture.c:26:20
	movl	-36(%rbp), %eax
	.loc	2 26 24 is_stmt 0               # src/parsing/parsing_texture.c:26:24
	addl	$1, %eax
	.loc	2 26 20                         # src/parsing/parsing_texture.c:26:20
	movslq	%eax, %rdi
	.loc	2 26 13                         # src/parsing/parsing_texture.c:26:13
	callq	malloc
	.loc	2 26 11                         # src/parsing/parsing_texture.c:26:11
	movq	%rax, -48(%rbp)
.Ltmp1:
	.loc	2 27 7 is_stmt 1                # src/parsing/parsing_texture.c:27:7
	cmpq	$0, -48(%rbp)
.Ltmp2:
	.loc	2 27 6 is_stmt 0                # src/parsing/parsing_texture.c:27:6
	jne	.LBB0_7
# %bb.6:
.Ltmp3:
	.loc	2 28 33 is_stmt 1               # src/parsing/parsing_texture.c:28:33
	movq	-8(%rbp), %rdi
	.loc	2 28 3 is_stmt 0                # src/parsing/parsing_texture.c:28:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp4:
.LBB0_7:
	.loc	2 29 4 is_stmt 1                # src/parsing/parsing_texture.c:29:4
	movl	$0, -32(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	.loc	2 30 9                          # src/parsing/parsing_texture.c:30:9
	movl	-32(%rbp), %eax
	.loc	2 30 11 is_stmt 0               # src/parsing/parsing_texture.c:30:11
	cmpl	-36(%rbp), %eax
	.loc	2 30 2                          # src/parsing/parsing_texture.c:30:2
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
.Ltmp5:
	.loc	2 32 17 is_stmt 1               # src/parsing/parsing_texture.c:32:17
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	2 32 3 is_stmt 0                # src/parsing/parsing_texture.c:32:3
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 32 15                         # src/parsing/parsing_texture.c:32:15
	movb	%dl, (%rax,%rcx)
	.loc	2 33 4 is_stmt 1                # src/parsing/parsing_texture.c:33:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	2 34 4                          # src/parsing/parsing_texture.c:34:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp6:
	.loc	2 30 2                          # src/parsing/parsing_texture.c:30:2
	jmp	.LBB0_8
.LBB0_10:
	.loc	2 36 2                          # src/parsing/parsing_texture.c:36:2
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 36 14 is_stmt 0               # src/parsing/parsing_texture.c:36:14
	movb	$0, (%rax,%rcx)
	.loc	2 37 10 is_stmt 1               # src/parsing/parsing_texture.c:37:10
	movq	-48(%rbp), %rax
	.loc	2 37 2 is_stmt 0                # src/parsing/parsing_texture.c:37:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	get_texture_filename, .Lfunc_end0-get_texture_filename
	.cfi_endproc
                                        # -- End function
	.globl	get_texture_xpm                 # -- Begin function get_texture_xpm
	.p2align	4, 0x90
	.type	get_texture_xpm,@function
get_texture_xpm:                        # @get_texture_xpm
.Lfunc_begin1:
	.loc	2 41 0 is_stmt 1                # src/parsing/parsing_texture.c:41:0
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
.Ltmp8:
	.loc	2 45 34 prologue_end            # src/parsing/parsing_texture.c:45:34
	movq	-8(%rbp), %rdi
	.loc	2 45 41 is_stmt 0               # src/parsing/parsing_texture.c:45:41
	movq	-16(%rbp), %rsi
	.loc	2 45 45                         # src/parsing/parsing_texture.c:45:45
	movq	-24(%rbp), %rdx
	.loc	2 45 13                         # src/parsing/parsing_texture.c:45:13
	callq	get_texture_filename
	.loc	2 45 11                         # src/parsing/parsing_texture.c:45:11
	movq	%rax, -32(%rbp)
	.loc	2 46 12 is_stmt 1               # src/parsing/parsing_texture.c:46:12
	movl	$16, %edi
	callq	malloc
	.loc	2 46 10 is_stmt 0               # src/parsing/parsing_texture.c:46:10
	movq	%rax, -40(%rbp)
.Ltmp9:
	.loc	2 47 7 is_stmt 1                # src/parsing/parsing_texture.c:47:7
	cmpq	$0, -40(%rbp)
.Ltmp10:
	.loc	2 47 6 is_stmt 0                # src/parsing/parsing_texture.c:47:6
	jne	.LBB1_2
# %bb.1:
.Ltmp11:
	.loc	2 48 33 is_stmt 1               # src/parsing/parsing_texture.c:48:33
	movq	-8(%rbp), %rdi
	.loc	2 48 3 is_stmt 0                # src/parsing/parsing_texture.c:48:3
	movl	$9, %esi
	callq	print_error_then_exit_program
.Ltmp12:
.LBB1_2:
	.loc	2 49 39 is_stmt 1               # src/parsing/parsing_texture.c:49:39
	movq	-8(%rbp), %rax
	.loc	2 49 46 is_stmt 0               # src/parsing/parsing_texture.c:49:46
	movq	16(%rax), %rdi
	.loc	2 49 55                         # src/parsing/parsing_texture.c:49:55
	movq	-32(%rbp), %rsi
	.loc	2 50 5 is_stmt 1                # src/parsing/parsing_texture.c:50:5
	movq	-40(%rbp), %rdx
	.loc	2 50 22 is_stmt 0               # src/parsing/parsing_texture.c:50:22
	movq	-40(%rbp), %rcx
	.loc	2 50 31                         # src/parsing/parsing_texture.c:50:31
	addq	$4, %rcx
	.loc	2 49 17 is_stmt 1               # src/parsing/parsing_texture.c:49:17
	callq	mlx_xpm_file_to_image
	movq	%rax, %rcx
	.loc	2 49 2 is_stmt 0                # src/parsing/parsing_texture.c:49:2
	movq	-40(%rbp), %rax
	.loc	2 49 15                         # src/parsing/parsing_texture.c:49:15
	movq	%rcx, 8(%rax)
	.loc	2 53 7 is_stmt 1                # src/parsing/parsing_texture.c:53:7
	movq	-32(%rbp), %rdi
	.loc	2 53 2 is_stmt 0                # src/parsing/parsing_texture.c:53:2
	callq	free
	.loc	2 54 10 is_stmt 1               # src/parsing/parsing_texture.c:54:10
	movq	-40(%rbp), %rax
	.loc	2 54 2 is_stmt 0                # src/parsing/parsing_texture.c:54:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	get_texture_xpm, .Lfunc_end1-get_texture_xpm
	.cfi_endproc
                                        # -- End function
	.globl	extract_texture_data            # -- Begin function extract_texture_data
	.p2align	4, 0x90
	.type	extract_texture_data,@function
extract_texture_data:                   # @extract_texture_data
.Lfunc_begin2:
	.loc	2 58 0 is_stmt 1                # src/parsing/parsing_texture.c:58:0
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
	movq	%rcx, -32(%rbp)
.Ltmp14:
	.loc	2 59 29 prologue_end            # src/parsing/parsing_texture.c:59:29
	movl	-20(%rbp), %eax
	movb	%al, %cl
	.loc	2 59 41 is_stmt 0               # src/parsing/parsing_texture.c:59:41
	movq	-8(%rbp), %rax
	.loc	2 59 48                         # src/parsing/parsing_texture.c:59:48
	movq	32(%rax), %rax
	.loc	2 59 6                          # src/parsing/parsing_texture.c:59:6
	movzbl	%cl, %edi
	movzbl	4(%rax), %esi
	callq	is_element_already_set
	.loc	2 60 3 is_stmt 1                # src/parsing/parsing_texture.c:60:3
	testb	$1, %al
	jne	.LBB2_2
# %bb.1:
	.loc	2 60 21 is_stmt 0               # src/parsing/parsing_texture.c:60:21
	movq	-32(%rbp), %rdi
	.loc	2 60 27                         # src/parsing/parsing_texture.c:60:27
	movq	-16(%rbp), %rsi
	.loc	2 60 7                          # src/parsing/parsing_texture.c:60:7
	callq	is_valid_path
.Ltmp15:
	.loc	2 59 6 is_stmt 1                # src/parsing/parsing_texture.c:59:6
	testb	$1, %al
	jne	.LBB2_3
.LBB2_2:
.Ltmp16:
	.loc	2 61 33                         # src/parsing/parsing_texture.c:61:33
	movq	-8(%rbp), %rdi
	.loc	2 61 3 is_stmt 0                # src/parsing/parsing_texture.c:61:3
	movl	$5, %esi
	callq	print_error_then_exit_program
.Ltmp17:
.LBB2_3:
	.loc	2 62 17 is_stmt 1               # src/parsing/parsing_texture.c:62:17
	cmpl	$0, -20(%rbp)
.Ltmp18:
	.loc	2 62 6 is_stmt 0                # src/parsing/parsing_texture.c:62:6
	jne	.LBB2_5
# %bb.4:
.Ltmp19:
	.loc	2 63 44 is_stmt 1               # src/parsing/parsing_texture.c:63:44
	movq	-8(%rbp), %rdi
	.loc	2 63 51 is_stmt 0               # src/parsing/parsing_texture.c:63:51
	movq	-16(%rbp), %rsi
	.loc	2 63 55                         # src/parsing/parsing_texture.c:63:55
	movq	-32(%rbp), %rdx
	.loc	2 63 28                         # src/parsing/parsing_texture.c:63:28
	callq	get_texture_xpm
	movq	%rax, %rcx
	.loc	2 63 3                          # src/parsing/parsing_texture.c:63:3
	movq	-8(%rbp), %rax
	.loc	2 63 10                         # src/parsing/parsing_texture.c:63:10
	movq	24(%rax), %rax
	.loc	2 63 26                         # src/parsing/parsing_texture.c:63:26
	movq	%rcx, 16(%rax)
	.loc	2 63 3                          # src/parsing/parsing_texture.c:63:3
	jmp	.LBB2_14
.LBB2_5:
.Ltmp20:
	.loc	2 64 22 is_stmt 1               # src/parsing/parsing_texture.c:64:22
	cmpl	$3, -20(%rbp)
.Ltmp21:
	.loc	2 64 11 is_stmt 0               # src/parsing/parsing_texture.c:64:11
	jne	.LBB2_7
# %bb.6:
.Ltmp22:
	.loc	2 65 44 is_stmt 1               # src/parsing/parsing_texture.c:65:44
	movq	-8(%rbp), %rdi
	.loc	2 65 51 is_stmt 0               # src/parsing/parsing_texture.c:65:51
	movq	-16(%rbp), %rsi
	.loc	2 65 55                         # src/parsing/parsing_texture.c:65:55
	movq	-32(%rbp), %rdx
	.loc	2 65 28                         # src/parsing/parsing_texture.c:65:28
	callq	get_texture_xpm
	movq	%rax, %rcx
	.loc	2 65 3                          # src/parsing/parsing_texture.c:65:3
	movq	-8(%rbp), %rax
	.loc	2 65 10                         # src/parsing/parsing_texture.c:65:10
	movq	24(%rax), %rax
	.loc	2 65 26                         # src/parsing/parsing_texture.c:65:26
	movq	%rcx, 24(%rax)
	.loc	2 65 3                          # src/parsing/parsing_texture.c:65:3
	jmp	.LBB2_13
.LBB2_7:
.Ltmp23:
	.loc	2 66 22 is_stmt 1               # src/parsing/parsing_texture.c:66:22
	cmpl	$2, -20(%rbp)
.Ltmp24:
	.loc	2 66 11 is_stmt 0               # src/parsing/parsing_texture.c:66:11
	jne	.LBB2_9
# %bb.8:
.Ltmp25:
	.loc	2 67 44 is_stmt 1               # src/parsing/parsing_texture.c:67:44
	movq	-8(%rbp), %rdi
	.loc	2 67 51 is_stmt 0               # src/parsing/parsing_texture.c:67:51
	movq	-16(%rbp), %rsi
	.loc	2 67 55                         # src/parsing/parsing_texture.c:67:55
	movq	-32(%rbp), %rdx
	.loc	2 67 28                         # src/parsing/parsing_texture.c:67:28
	callq	get_texture_xpm
	movq	%rax, %rcx
	.loc	2 67 3                          # src/parsing/parsing_texture.c:67:3
	movq	-8(%rbp), %rax
	.loc	2 67 10                         # src/parsing/parsing_texture.c:67:10
	movq	24(%rax), %rax
	.loc	2 67 26                         # src/parsing/parsing_texture.c:67:26
	movq	%rcx, 32(%rax)
	.loc	2 67 3                          # src/parsing/parsing_texture.c:67:3
	jmp	.LBB2_12
.LBB2_9:
.Ltmp26:
	.loc	2 68 22 is_stmt 1               # src/parsing/parsing_texture.c:68:22
	cmpl	$1, -20(%rbp)
.Ltmp27:
	.loc	2 68 11 is_stmt 0               # src/parsing/parsing_texture.c:68:11
	jne	.LBB2_11
# %bb.10:
.Ltmp28:
	.loc	2 69 44 is_stmt 1               # src/parsing/parsing_texture.c:69:44
	movq	-8(%rbp), %rdi
	.loc	2 69 51 is_stmt 0               # src/parsing/parsing_texture.c:69:51
	movq	-16(%rbp), %rsi
	.loc	2 69 55                         # src/parsing/parsing_texture.c:69:55
	movq	-32(%rbp), %rdx
	.loc	2 69 28                         # src/parsing/parsing_texture.c:69:28
	callq	get_texture_xpm
	movq	%rax, %rcx
	.loc	2 69 3                          # src/parsing/parsing_texture.c:69:3
	movq	-8(%rbp), %rax
	.loc	2 69 10                         # src/parsing/parsing_texture.c:69:10
	movq	24(%rax), %rax
	.loc	2 69 26                         # src/parsing/parsing_texture.c:69:26
	movq	%rcx, 40(%rax)
.Ltmp29:
.LBB2_11:
	.loc	2 0 26                          # src/parsing/parsing_texture.c:0:26
	jmp	.LBB2_12
.LBB2_12:
	jmp	.LBB2_13
.LBB2_13:
	jmp	.LBB2_14
.LBB2_14:
	.loc	2 70 19 is_stmt 1               # src/parsing/parsing_texture.c:70:19
	movl	-20(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	.loc	2 70 32 is_stmt 0               # src/parsing/parsing_texture.c:70:32
	movq	-8(%rbp), %rcx
	.loc	2 70 39                         # src/parsing/parsing_texture.c:70:39
	movq	32(%rcx), %rsi
	.loc	2 70 45                         # src/parsing/parsing_texture.c:70:45
	addq	$4, %rsi
	.loc	2 70 2                          # src/parsing/parsing_texture.c:70:2
	movzbl	%al, %edi
	callq	set_mask_element
	.loc	2 71 1 is_stmt 1                # src/parsing/parsing_texture.c:71:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp30:
.Lfunc_end2:
	.size	extract_texture_data, .Lfunc_end2-extract_texture_data
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
	.byte	1                               # Abbrev [1] 0xb:0x6d5 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # Abbrev [2] 0x86:0x31 DW_TAG_enumeration_type
	.long	127                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa4:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xaa:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb0:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb7:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	481                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xd0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xde:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string121                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xec:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xfa:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string123                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	554                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x108:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string124                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	554                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x116:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string125                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	554                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x124:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string126                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x133:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	493                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x14c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x15a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string121                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x168:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x176:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string127                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x184:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string128                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	493                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x193:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1a8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1b6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string121                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1c4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string129                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	554                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1d2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string122                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1e1:0x5 DW_TAG_pointer_type
	.long	486                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1e6:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1ed:0x5 DW_TAG_pointer_type
	.long	498                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f2:0xb DW_TAG_typedef
	.long	509                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1fd:0x2d DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x205:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x211:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x21d:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	561                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x22a:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x231:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x232:0x5 DW_TAG_pointer_type
	.long	567                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x237:0xb DW_TAG_typedef
	.long	578                             # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x242:0x8d DW_TAG_structure_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x24a:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x256:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	561                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x262:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	561                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	748                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x27a:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	934                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x286:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1055                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x292:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1177                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29e:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1320                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2aa:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1369                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b6:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1538                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2c2:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1640                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2cf:0xb DW_TAG_typedef
	.long	730                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2da:0xb DW_TAG_typedef
	.long	741                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2e5:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2ec:0x5 DW_TAG_pointer_type
	.long	753                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f1:0xb DW_TAG_typedef
	.long	764                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2fc:0x75 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x304:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x310:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x31c:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x328:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x334:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x340:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x34c:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	910                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x358:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	910                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	51                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x364:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	929                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x371:0xb DW_TAG_typedef
	.long	892                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x37c:0xb DW_TAG_typedef
	.long	903                             # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x387:0x7 DW_TAG_base_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x38e:0xc DW_TAG_array_type
	.long	719                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x393:0x6 DW_TAG_subrange_type
	.long	922                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x39a:0x7 DW_TAG_base_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x3a1:0x5 DW_TAG_pointer_type
	.long	481                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3a6:0x5 DW_TAG_pointer_type
	.long	939                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3ab:0xb DW_TAG_typedef
	.long	950                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3b6:0x69 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3be:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ca:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3d6:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3e2:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ee:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3fa:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x406:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x412:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	929                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x41f:0x5 DW_TAG_pointer_type
	.long	1060                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x424:0xb DW_TAG_typedef
	.long	1071                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x42f:0x15 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x437:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1092                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x444:0x5 DW_TAG_pointer_type
	.long	1097                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x449:0xb DW_TAG_typedef
	.long	1108                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x454:0x45 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x45c:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	561                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x468:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x474:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x480:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x48c:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x499:0x5 DW_TAG_pointer_type
	.long	1182                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x49e:0xb DW_TAG_typedef
	.long	1193                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4a9:0x69 DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4b1:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4bd:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4c9:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d5:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4e1:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ed:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f9:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x505:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1305                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x512:0x7 DW_TAG_base_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x519:0x5 DW_TAG_pointer_type
	.long	1310                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x51e:0x5 DW_TAG_pointer_type
	.long	1315                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x523:0x5 DW_TAG_pointer_type
	.long	719                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x528:0x5 DW_TAG_pointer_type
	.long	1325                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x52d:0xb DW_TAG_typedef
	.long	1336                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x538:0x21 DW_TAG_structure_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x540:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54c:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	554                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x559:0x5 DW_TAG_pointer_type
	.long	1374                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x55e:0xb DW_TAG_typedef
	.long	1385                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x569:0x99 DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x571:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x57d:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x589:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x595:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5a1:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ad:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5b9:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5c5:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5d1:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5dd:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5e9:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5f5:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1298                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x602:0x5 DW_TAG_pointer_type
	.long	1543                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x607:0xb DW_TAG_typedef
	.long	1554                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x612:0x39 DW_TAG_structure_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x61a:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1611                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x626:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1611                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x632:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1611                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x63e:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1611                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x64b:0xb DW_TAG_typedef
	.long	1622                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x656:0xb DW_TAG_typedef
	.long	1633                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x661:0x7 DW_TAG_base_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x668:0x5 DW_TAG_pointer_type
	.long	1645                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x66d:0xb DW_TAG_typedef
	.long	1656                            # DW_AT_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x678:0x51 DW_TAG_structure_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x680:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x68c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x698:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6a4:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6b0:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6bc:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6c9:0xb DW_TAG_typedef
	.long	1748                            # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6d4:0xb DW_TAG_typedef
	.long	127                             # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/parsing_texture.c" # string offset=38
.Linfo_string2:
	.asciz	"/home/algadea/Dev/42/cube3d/misc/cub3d" # string offset=68
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=107
.Linfo_string4:
	.asciz	"err_mlx_ptr"                   # string offset=120
.Linfo_string5:
	.asciz	"err_win_ptr"                   # string offset=132
.Linfo_string6:
	.asciz	"err_arg_nbr"                   # string offset=144
.Linfo_string7:
	.asciz	"err_xpm_to_image"              # string offset=156
.Linfo_string8:
	.asciz	"err_filename"                  # string offset=173
.Linfo_string9:
	.asciz	"err_id"                        # string offset=186
.Linfo_string10:
	.asciz	"fileopen"                      # string offset=193
.Linfo_string11:
	.asciz	"err_floor"                     # string offset=202
.Linfo_string12:
	.asciz	"err_ceiling"                   # string offset=212
.Linfo_string13:
	.asciz	"err_malloc"                    # string offset=224
.Linfo_string14:
	.asciz	"err_map_format"                # string offset=235
.Linfo_string15:
	.asciz	"err_map_starting_pos"          # string offset=250
.Linfo_string16:
	.asciz	"e_errname"                     # string offset=271
.Linfo_string17:
	.asciz	"north"                         # string offset=281
.Linfo_string18:
	.asciz	"east"                          # string offset=287
.Linfo_string19:
	.asciz	"west"                          # string offset=292
.Linfo_string20:
	.asciz	"south"                         # string offset=297
.Linfo_string21:
	.asciz	"e_floor"                       # string offset=303
.Linfo_string22:
	.asciz	"ceiling"                       # string offset=311
.Linfo_string23:
	.asciz	"e_element"                     # string offset=319
.Linfo_string24:
	.asciz	"get_texture_filename"          # string offset=329
.Linfo_string25:
	.asciz	"char"                          # string offset=350
.Linfo_string26:
	.asciz	"get_texture_xpm"               # string offset=355
.Linfo_string27:
	.asciz	"width"                         # string offset=371
.Linfo_string28:
	.asciz	"int"                           # string offset=377
.Linfo_string29:
	.asciz	"height"                        # string offset=381
.Linfo_string30:
	.asciz	"ptr"                           # string offset=388
.Linfo_string31:
	.asciz	"s_xpm"                         # string offset=392
.Linfo_string32:
	.asciz	"t_xpm"                         # string offset=398
.Linfo_string33:
	.asciz	"extract_texture_data"          # string offset=404
.Linfo_string34:
	.asciz	"cub3d"                         # string offset=425
.Linfo_string35:
	.asciz	"program_state"                 # string offset=431
.Linfo_string36:
	.asciz	"unsigned char"                 # string offset=445
.Linfo_string37:
	.asciz	"__uint8_t"                     # string offset=459
.Linfo_string38:
	.asciz	"uint8_t"                       # string offset=469
.Linfo_string39:
	.asciz	"win_ptr"                       # string offset=477
.Linfo_string40:
	.asciz	"mlx_ptr"                       # string offset=485
.Linfo_string41:
	.asciz	"map"                           # string offset=493
.Linfo_string42:
	.asciz	"long unsigned int"             # string offset=497
.Linfo_string43:
	.asciz	"__uint64_t"                    # string offset=515
.Linfo_string44:
	.asciz	"uint64_t"                      # string offset=526
.Linfo_string45:
	.asciz	"no_texture"                    # string offset=535
.Linfo_string46:
	.asciz	"so_texture"                    # string offset=546
.Linfo_string47:
	.asciz	"we_texture"                    # string offset=557
.Linfo_string48:
	.asciz	"ea_texture"                    # string offset=568
.Linfo_string49:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=579
.Linfo_string50:
	.asciz	"floor"                         # string offset=599
.Linfo_string51:
	.asciz	"data"                          # string offset=605
.Linfo_string52:
	.asciz	"s_map"                         # string offset=610
.Linfo_string53:
	.asciz	"t_map"                         # string offset=616
.Linfo_string54:
	.asciz	"file"                          # string offset=622
.Linfo_string55:
	.asciz	"fd"                            # string offset=627
.Linfo_string56:
	.asciz	"mask"                          # string offset=630
.Linfo_string57:
	.asciz	"offset"                        # string offset=635
.Linfo_string58:
	.asciz	"no_filename"                   # string offset=642
.Linfo_string59:
	.asciz	"so_filename"                   # string offset=654
.Linfo_string60:
	.asciz	"we_filename"                   # string offset=666
.Linfo_string61:
	.asciz	"ea_filename"                   # string offset=678
.Linfo_string62:
	.asciz	"s_file"                        # string offset=690
.Linfo_string63:
	.asciz	"t_file"                        # string offset=697
.Linfo_string64:
	.asciz	"scene"                         # string offset=704
.Linfo_string65:
	.asciz	"img"                           # string offset=710
.Linfo_string66:
	.asciz	"addr"                          # string offset=714
.Linfo_string67:
	.asciz	"endian"                        # string offset=719
.Linfo_string68:
	.asciz	"size_line"                     # string offset=726
.Linfo_string69:
	.asciz	"bpp"                           # string offset=736
.Linfo_string70:
	.asciz	"s_img"                         # string offset=740
.Linfo_string71:
	.asciz	"t_img"                         # string offset=746
.Linfo_string72:
	.asciz	"s_scene"                       # string offset=752
.Linfo_string73:
	.asciz	"t_scene"                       # string offset=760
.Linfo_string74:
	.asciz	"player"                        # string offset=768
.Linfo_string75:
	.asciz	"x0"                            # string offset=775
.Linfo_string76:
	.asciz	"y0"                            # string offset=778
.Linfo_string77:
	.asciz	"x1"                            # string offset=781
.Linfo_string78:
	.asciz	"y1"                            # string offset=784
.Linfo_string79:
	.asciz	"angle"                         # string offset=787
.Linfo_string80:
	.asciz	"double"                        # string offset=793
.Linfo_string81:
	.asciz	"pos_x"                         # string offset=800
.Linfo_string82:
	.asciz	"pos_y"                         # string offset=806
.Linfo_string83:
	.asciz	"vertex"                        # string offset=812
.Linfo_string84:
	.asciz	"s_player"                      # string offset=819
.Linfo_string85:
	.asciz	"t_player"                      # string offset=828
.Linfo_string86:
	.asciz	"window"                        # string offset=837
.Linfo_string87:
	.asciz	"s_window"                      # string offset=844
.Linfo_string88:
	.asciz	"t_window"                      # string offset=853
.Linfo_string89:
	.asciz	"raycast"                       # string offset=862
.Linfo_string90:
	.asciz	"posX"                          # string offset=870
.Linfo_string91:
	.asciz	"posY"                          # string offset=875
.Linfo_string92:
	.asciz	"dirX"                          # string offset=880
.Linfo_string93:
	.asciz	"dirY"                          # string offset=885
.Linfo_string94:
	.asciz	"planeX"                        # string offset=890
.Linfo_string95:
	.asciz	"planeY"                        # string offset=897
.Linfo_string96:
	.asciz	"sideX"                         # string offset=904
.Linfo_string97:
	.asciz	"sideY"                         # string offset=910
.Linfo_string98:
	.asciz	"deltaDistX"                    # string offset=916
.Linfo_string99:
	.asciz	"deltaDistY"                    # string offset=927
.Linfo_string100:
	.asciz	"time"                          # string offset=938
.Linfo_string101:
	.asciz	"oldtime"                       # string offset=943
.Linfo_string102:
	.asciz	"s_raycast"                     # string offset=951
.Linfo_string103:
	.asciz	"t_raycast"                     # string offset=961
.Linfo_string104:
	.asciz	"minimap"                       # string offset=971
.Linfo_string105:
	.asciz	"unsigned short"                # string offset=979
.Linfo_string106:
	.asciz	"__uint16_t"                    # string offset=994
.Linfo_string107:
	.asciz	"uint16_t"                      # string offset=1005
.Linfo_string108:
	.asciz	"x_pos"                         # string offset=1014
.Linfo_string109:
	.asciz	"y_pos"                         # string offset=1020
.Linfo_string110:
	.asciz	"s_minimap"                     # string offset=1026
.Linfo_string111:
	.asciz	"t_minimap"                     # string offset=1036
.Linfo_string112:
	.asciz	"main_menu"                     # string offset=1046
.Linfo_string113:
	.asciz	"xpm"                           # string offset=1056
.Linfo_string114:
	.asciz	"color"                         # string offset=1060
.Linfo_string115:
	.asciz	"__uint32_t"                    # string offset=1066
.Linfo_string116:
	.asciz	"uint32_t"                      # string offset=1077
.Linfo_string117:
	.asciz	"s_main_menu"                   # string offset=1086
.Linfo_string118:
	.asciz	"t_main_menu"                   # string offset=1098
.Linfo_string119:
	.asciz	"s_cub3d"                       # string offset=1110
.Linfo_string120:
	.asciz	"t_cub3d"                       # string offset=1118
.Linfo_string121:
	.asciz	"id"                            # string offset=1126
.Linfo_string122:
	.asciz	"line"                          # string offset=1129
.Linfo_string123:
	.asciz	"i"                             # string offset=1134
.Linfo_string124:
	.asciz	"j"                             # string offset=1136
.Linfo_string125:
	.asciz	"len"                           # string offset=1138
.Linfo_string126:
	.asciz	"filepath"                      # string offset=1142
.Linfo_string127:
	.asciz	"filename"                      # string offset=1151
.Linfo_string128:
	.asciz	"texture"                       # string offset=1160
.Linfo_string129:
	.asciz	"texture_id"                    # string offset=1168
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_texture_filename
	.addrsig_sym ft_strlen
	.addrsig_sym is_space
	.addrsig_sym malloc
	.addrsig_sym print_error_then_exit_program
	.addrsig_sym get_texture_xpm
	.addrsig_sym mlx_xpm_file_to_image
	.addrsig_sym free
	.addrsig_sym is_element_already_set
	.addrsig_sym is_valid_path
	.addrsig_sym set_mask_element
	.section	.debug_line,"",@progbits
.Lline_table_start0:
